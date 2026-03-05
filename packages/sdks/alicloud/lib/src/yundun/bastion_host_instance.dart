import 'package:pulumi/pulumi.dart' as pulumi;
import 'bastion_host_instance_args.dart';
import 'bastion_host_instance_state.dart';

class BastionHostInstance extends pulumi.CustomResource {
  late final pulumi.Output<List<Map<String, dynamic>>> adAuthServers;
  late final pulumi.Output<String> bandwidth;
  late final pulumi.Output<String> description;
  late final pulumi.Output<bool> enablePublicAccess;
  late final pulumi.Output<List<Map<String, dynamic>>> ldapAuthServers;
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
    adAuthServers = registerOutput<List<Map<String, dynamic>>>('adAuthServers');
    bandwidth = registerOutput<String>('bandwidth');
    description = registerOutput<String>('description');
    enablePublicAccess = registerOutput<bool>('enablePublicAccess');
    ldapAuthServers = registerOutput<List<Map<String, dynamic>>>('ldapAuthServers');
    licenseCode = registerOutput<String>('licenseCode');
    period = registerOutput<int?>('period');
    planCode = registerOutput<String>('planCode');
    publicWhiteLists = registerOutput<List<String>?>('publicWhiteLists');
    renewPeriod = registerOutput<int?>('renewPeriod');
    renewalPeriodUnit = registerOutput<String>('renewalPeriodUnit');
    renewalStatus = registerOutput<String>('renewalStatus');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    slaveVswitchId = registerOutput<String?>('slaveVswitchId');
    storage = registerOutput<String>('storage');
    tags = registerOutput<Map<String, String>?>('tags');
    vswitchId = registerOutput<String>('vswitchId');
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
    adAuthServers = registerOutput<List<Map<String, dynamic>>>('adAuthServers');
    bandwidth = registerOutput<String>('bandwidth');
    description = registerOutput<String>('description');
    enablePublicAccess = registerOutput<bool>('enablePublicAccess');
    ldapAuthServers = registerOutput<List<Map<String, dynamic>>>('ldapAuthServers');
    licenseCode = registerOutput<String>('licenseCode');
    period = registerOutput<int?>('period');
    planCode = registerOutput<String>('planCode');
    publicWhiteLists = registerOutput<List<String>?>('publicWhiteLists');
    renewPeriod = registerOutput<int?>('renewPeriod');
    renewalPeriodUnit = registerOutput<String>('renewalPeriodUnit');
    renewalStatus = registerOutput<String>('renewalStatus');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    slaveVswitchId = registerOutput<String?>('slaveVswitchId');
    storage = registerOutput<String>('storage');
    tags = registerOutput<Map<String, String>?>('tags');
    vswitchId = registerOutput<String>('vswitchId');
  }
}
