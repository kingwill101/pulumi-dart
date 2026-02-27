import 'package:pulumi/pulumi.dart';
import 'nat_address_args.dart';

/// Apigee NAT (network address translation) address. A NAT address is a static external IP address used for Internet egress traffic. This is not avaible for Apigee hybrid.
///
///
/// To get more information about NatAddress, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.instances.natAddresses)
/// * How-to Guides
/// * [Provisioning NAT IPs](https://cloud.google.com/apigee/docs/api-platform/security/nat-provisioning)
///
/// ## Example Usage
///
/// ### Apigee Nat Address Basic
///
///
///
/// ### Apigee Nat Address With Activate
///
///
///
///
/// ## Import
///
/// NatAddress can be imported using any of these accepted formats:
///
/// * `{{instance_id}}/natAddresses/{{name}}`
///
/// * `{{instance_id}}/{{name}}`
///
/// When using the `pulumi import` command, NatAddress can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/natAddress:NatAddress default {{instance_id}}/natAddresses/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/natAddress:NatAddress default {{instance_id}}/{{name}}
/// ```
class NatAddress extends CustomResource {
  /// Flag that specifies whether the reserved NAT address should be activate.
  late final Output<bool?> activate;

  /// The Apigee instance associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/instances/{{instance_name}}`.
  late final Output<String> instanceId;

  /// The allocated NAT IP address.
  late final Output<String> ipAddress;

  /// Resource ID of the NAT address.
  late final Output<String> name;

  /// State of the NAT IP address.
  late final Output<String> state;

  NatAddress(
    String name, {
    NatAddressArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/natAddress:NatAddress',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.activate = registerOutput<bool?>('activate');
    this.instanceId = registerOutput<String>('instanceId');
    this.ipAddress = registerOutput<String>('ipAddress');
    this.name = registerOutput<String>('name');
    this.state = registerOutput<String>('state');
  }
}
