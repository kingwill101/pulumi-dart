import 'package:pulumi/pulumi.dart';
import '../access_level_condition_device_policy/access_level_condition_device_policy.dart';
import '../access_level_condition_vpc_network_source/access_level_condition_vpc_network_source.dart';
import 'access_level_condition_args.dart';

/// Allows configuring a single access level condition to be appended to an access level's conditions.
/// This resource is intended to be used in cases where it is not possible to compile a full list
/// of conditions to include in a `gcp.accesscontextmanager.AccessLevel` resource,
/// to enable them to be added separately.
///
/// > **Note:** If this resource is used alongside a `gcp.accesscontextmanager.AccessLevel` resource,
/// the access level resource must have a `lifecycle` block with `ignore_changes = [basic[0].conditions]` so
/// they don't fight over which service accounts should be included.
///
///
/// To get more information about AccessLevelCondition, see:
///
/// * [API documentation](https://cloud.google.com/access-context-manager/docs/reference/rest/v1/accessPolicies.accessLevels)
/// * How-to Guides
/// * [Access Policy Quickstart](https://cloud.google.com/access-context-manager/docs/quickstart)
///
/// > **Warning:** If you are using User ADCs (Application Default Credentials) with this resource,
/// you must specify a `billing_project` and set `user_project_override` to true
/// in the provider configuration. Otherwise the ACM API will return a 403 error.
/// Your account must have the `serviceusage.services.use` permission on the
/// `billing_project` you defined.
///
/// ## Example Usage
///
/// ### Access Context Manager Access Level Condition Basic
///
///
///
///
/// ## Import
///
/// This resource does not support import.
class AccessLevelCondition extends CustomResource {
  /// The name of the Access Level to add this condition to.
  late final Output<String> accessLevel;

  /// The name of the Access Policy this resource belongs to.
  late final Output<String> accessPolicyId;

  /// Device specific restrictions, all restrictions must hold for
  /// the Condition to be true. If not specified, all devices are
  /// allowed.
  /// Structure is documented below.
  late final Output<AccessLevelConditionDevicePolicy?> devicePolicy;

  /// A list of CIDR block IP subnetwork specification. May be IPv4
  /// or IPv6.
  /// Note that for a CIDR IP address block, the specified IP address
  /// portion must be properly truncated (i.e. all the host bits must
  /// be zero) or the input is considered malformed. For example,
  /// "192.0.2.0/24" is accepted but "192.0.2.1/24" is not. Similarly,
  /// for IPv6, "2001:db8::/32" is accepted whereas "2001:db8::1/32"
  /// is not. The originating IP of a request must be in one of the
  /// listed subnets in order for this Condition to be true.
  /// If empty, all IP addresses are allowed.
  late final Output<List<String>?> ipSubnetworks;

  /// An allowed list of members (users, service accounts).
  /// Using groups is not supported yet.
  /// The signed-in user originating the request must be a part of one
  /// of the provided members. If not specified, a request may come
  /// from any user (logged in/not logged in, not present in any
  /// groups, etc.).
  /// Formats: `user:{emailid}`, `serviceAccount:{emailid}`
  late final Output<List<String>?> members;

  /// Whether to negate the Condition. If true, the Condition becomes
  /// a NAND over its non-empty fields, each field must be false for
  /// the Condition overall to be satisfied. Defaults to false.
  late final Output<bool?> negate;

  /// The request must originate from one of the provided
  /// countries/regions.
  /// Format: A valid ISO 3166-1 alpha-2 code.
  late final Output<List<String>?> regions;

  /// A list of other access levels defined in the same Policy,
  /// referenced by resource name. Referencing an AccessLevel which
  /// does not exist is an error. All access levels listed must be
  /// granted for the Condition to be true.
  /// Format: accessPolicies/{policy_id}/accessLevels/{short_name}
  late final Output<List<String>?> requiredAccessLevels;

  /// The request must originate from one of the provided VPC networks in Google Cloud. Cannot specify this field together with `ip_subnetworks`.
  /// Structure is documented below.
  late final Output<List<AccessLevelConditionVpcNetworkSource>?>
      vpcNetworkSources;

  AccessLevelCondition(
    String name, {
    AccessLevelConditionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:accesscontextmanager/accessLevelCondition:AccessLevelCondition',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessLevel = registerOutput<String>('accessLevel');
    this.accessPolicyId = registerOutput<String>('accessPolicyId');
    this.devicePolicy =
        registerOutput<AccessLevelConditionDevicePolicy?>('devicePolicy');
    this.ipSubnetworks = registerOutput<List<String>?>('ipSubnetworks');
    this.members = registerOutput<List<String>?>('members');
    this.negate = registerOutput<bool?>('negate');
    this.regions = registerOutput<List<String>?>('regions');
    this.requiredAccessLevels =
        registerOutput<List<String>?>('requiredAccessLevels');
    this.vpcNetworkSources =
        registerOutput<List<AccessLevelConditionVpcNetworkSource>?>(
            'vpcNetworkSources');
  }
}
