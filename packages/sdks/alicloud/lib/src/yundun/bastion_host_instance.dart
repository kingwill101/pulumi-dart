import 'package:pulumi/pulumi.dart' as pulumi;
import 'bastion_host_instance_ad_auth_server.dart';
import 'bastion_host_instance_args.dart';
import 'bastion_host_instance_ldap_auth_server.dart';
import 'bastion_host_instance_state.dart';

class BastionHostInstance extends pulumi.CustomResource {
  late final pulumi.Output<List<BastionHostInstanceAdAuthServer>> adAuthServers;
  late final pulumi.Output<String> bandwidth;
  late final pulumi.Output<String> description;
  late final pulumi.Output<bool> enablePublicAccess;
  late final pulumi.Output<List<BastionHostInstanceLdapAuthServer>> ldapAuthServers;
  late final pulumi.Output<String> licenseCode;
  late final pulumi.Output<int?> period;
  late final pulumi.Output<String> planCode;
  late final pulumi.Output<List<String>?> publicWhiteLists;
  late final pulumi.Output<int?> renewPeriod;
  late final pulumi.Output<String> renewalPeriodUnit;
  late final pulumi.Output<String> renewalStatus;
  late final pulumi.Output<String> resourceGroupId;
  late final pulumi.Output<List<String>> securityGroupIds;
  late final pulumi.Output<String?> slaveVswitchId;
  late final pulumi.Output<String> storage;
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<String> vswitchId;

  /// Creates a new [BastionHostInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BastionHostInstance]. {@macro pulumi_yundun_bastion_host_instance_bastion_host_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BastionHostInstance(
    String name, {
    BastionHostInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:yundun/bastionHostInstance:BastionHostInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.adAuthServers = registerOutput<List<BastionHostInstanceAdAuthServer>>('adAuthServers');
    this.bandwidth = registerOutput<String>('bandwidth');
    this.description = registerOutput<String>('description');
    this.enablePublicAccess = registerOutput<bool>('enablePublicAccess');
    this.ldapAuthServers = registerOutput<List<BastionHostInstanceLdapAuthServer>>('ldapAuthServers');
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

  /// Gets an existing [BastionHostInstance] resource's state with the given [name] and [id].
  static BastionHostInstance get(
    String name,
    pulumi.Input<String> id, {
    BastionHostInstanceState? state,
  }) {
    return BastionHostInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BastionHostInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:yundun/bastionHostInstance:BastionHostInstance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.adAuthServers = registerOutput<List<BastionHostInstanceAdAuthServer>>('adAuthServers');
    this.bandwidth = registerOutput<String>('bandwidth');
    this.description = registerOutput<String>('description');
    this.enablePublicAccess = registerOutput<bool>('enablePublicAccess');
    this.ldapAuthServers = registerOutput<List<BastionHostInstanceLdapAuthServer>>('ldapAuthServers');
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
