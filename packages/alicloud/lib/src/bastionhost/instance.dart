import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_ad_auth_server.dart';
import 'instance_args.dart';
import 'instance_ldap_auth_server.dart';

/// ## Import
///
/// Yundun_bastionhost instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:bastionhost/instance:Instance example bastionhost-exampe123456
/// ```
class Instance extends pulumi.CustomResource {
  /// The AD auth server of the Instance. See `ad_auth_server` below.
  late final pulumi.Output<List<InstanceAdAuthServer>> adAuthServers;
  /// The bandwidth of Cloud Bastionhost instance. **NOTE:** From version 1.263.0, `bandwidth` can be modified.
  /// If China-Site Account, its valid values: 0 to 150. Unit: Mbit/s. The value must be a multiple of 5.
  /// If International-Site Account, its valid values: 0 to 200. Unit: Mbit/s. The value must be a multiple of 10.
  late final pulumi.Output<String> bandwidth;
  /// Description of the instance. This name can have a string of 1 to 63 characters.
  late final pulumi.Output<String> description;
  /// Whether to Enable the public internet access to a specified Bastionhost instance. The valid values: `true`, `false`.
  late final pulumi.Output<bool> enablePublicAccess;
  /// The LDAP auth server of the Instance. See `ldap_auth_server` below.
  late final pulumi.Output<List<InstanceLdapAuthServer>> ldapAuthServers;
  /// The package type of Cloud Bastionhost instance. You can query more supported types through the [DescribePricingModule](https://help.aliyun.com/document_detail/96469.html).
  late final pulumi.Output<String> licenseCode;
  /// Duration for initially producing the instance. Valid values: [1~9], 12, 24, 36. At present, the provider does not support modify "period".
  /// > **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to Subscription. Once effect, it will not be modified that means running `pulumi up` will not effect the resource.
  late final pulumi.Output<int?> period;
  /// The plan code of Cloud Bastionhost instance. Valid values:
  late final pulumi.Output<String> planCode;
  late final pulumi.Output<List<String>?> publicWhiteLists;
  /// Automatic renewal period. Valid values: `1` to `9`, `12`, `24`, `36`. **NOTE:** The `renew_period` is required under the condition that `renewal_status` is `AutoRenewal`. From version 1.193.0, `renew_period` can be modified.
  late final pulumi.Output<int?> renewPeriod;
  /// The unit of the auto-renewal period. Valid values:  **NOTE:** The `renewal_period_unit` is required under the condition that `renewal_status` is `AutoRenewal`.
  /// - `M`: months.
  /// - `Y`: years.
  late final pulumi.Output<String> renewalPeriodUnit;
  /// Automatic renewal status. Valid values: `AutoRenewal`, `ManualRenewal`, `NotRenewal`. From version 1.193.0, `renewal_status` can be modified.
  late final pulumi.Output<String> renewalStatus;
  /// The Id of resource group which the Bastionhost Instance belongs. If not set, the resource is created in the default resource group.
  late final pulumi.Output<String> resourceGroupId;
  /// security group IDs configured to Bastionhost.
  /// **NOTE:** There is a potential diff error because of the order of `security_group_ids` values indefinite.
  /// So, from version 1.160.0, `security_group_ids` type has been updated as `set` from `list`,
  /// and you can use tolist to convert it to a list.
  late final pulumi.Output<List<String>> securityGroupIds;
  /// Slave VSwitch ID configured to Bastionhost.
  late final pulumi.Output<String?> slaveVswitchId;
  /// The storage of Cloud Bastionhost instance. Valid values: `0` to `500`. Unit: TB. **NOTE:** From version 1.251.0, `storage` can be modified.
  late final pulumi.Output<String> storage;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// VSwitch ID configured to Bastionhost.
  late final pulumi.Output<String> vswitchId;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_bastionhost_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:bastionhost/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.adAuthServers = registerOutput<List<InstanceAdAuthServer>>('adAuthServers');
    this.bandwidth = registerOutput<String>('bandwidth');
    this.description = registerOutput<String>('description');
    this.enablePublicAccess = registerOutput<bool>('enablePublicAccess');
    this.ldapAuthServers = registerOutput<List<InstanceLdapAuthServer>>('ldapAuthServers');
    this.licenseCode = registerOutput<String>('licenseCode');
    this.period = registerOutput<int?>('period');
    this.planCode = registerOutput<String>('planCode');
    this.publicWhiteLists = registerOutput<List<String>?>('publicWhiteLists');
    this.renewPeriod = registerOutput<int?>('renewPeriod');
    this.renewalPeriodUnit = registerOutput<String>('renewalPeriodUnit');
    this.renewalStatus = registerOutput<String>('renewalStatus');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    this.slaveVswitchId = registerOutput<String?>('slaveVswitchId');
    this.storage = registerOutput<String>('storage');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vswitchId = registerOutput<String>('vswitchId');
  }
}
