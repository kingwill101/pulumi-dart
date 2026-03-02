// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cddc_dedicated_host_group_dedicated_host_group_args_doc}
/// The set of arguments for DedicatedHostGroup.
/// {@endtemplate}
/// {@macro pulumi_cddc_dedicated_host_group_dedicated_host_group_args_doc}
class DedicatedHostGroupArgs {
  /// AThe policy that is used to allocate resources in the dedicated cluster. Valid values:`Evenly`,`Intensively`
  final pulumi.Input<String>? allocationPolicy;
  /// The CPU overcommitment ratio of the dedicated cluster.Valid values: 100 to 300. Default value: 200.
  final pulumi.Input<int>? cpuAllocationRatio;
  /// The name of the dedicated cluster. The name must be 1 to 64 characters in length and can contain letters, digits, underscores (_), and hyphens (-). It must start with a letter.
  final pulumi.Input<String>? dedicatedHostGroupDesc;
  /// The Disk Allocation Ratio of the Dedicated Host Group. **NOTE:** When `engine = SQLServer`, this attribute does not support to set.
  final pulumi.Input<int>? diskAllocationRatio;
  /// Database Engine Type.The database engine of the dedicated cluster. Valid values:`Redis`, `SQLServer`, `MySQL`, `PostgreSQL`, `MongoDB`, `alisql`, `tair`, `mssql`. **NOTE:** Since v1.210.0., the `engine = SQLServer` was deprecated.
  final pulumi.Input<String> engine;
  /// The policy based on which the system handles host failures. Valid values:`Auto`,`Manual`
  final pulumi.Input<String>? hostReplacePolicy;
  /// The Memory Allocation Ratio of the Dedicated Host Group.
  final pulumi.Input<int>? memAllocationRatio;
  /// Whether to enable the feature that allows you to have OS permissions on the hosts in the dedicated cluster. Valid values: `true` and `false`.
  /// **NOTE:** The `open_permission` should be `true` when `engine = "SQLServer"`
  final pulumi.Input<bool>? openPermission;
  /// The virtual private cloud (VPC) ID of the dedicated cluster.
  final pulumi.Input<String> vpcId;

  /// Creates a new [DedicatedHostGroupArgs].
  /// [allocationPolicy] AThe policy that is used to allocate resources in the dedicated cluster. Valid values:`Evenly`,`Intensively`
  /// [cpuAllocationRatio] The CPU overcommitment ratio of the dedicated cluster.Valid values: 100 to 300. Default value: 200.
  /// [dedicatedHostGroupDesc] The name of the dedicated cluster. The name must be 1 to 64 characters in length and can contain letters, digits, underscores (_), and hyphens (-). It must start with a letter.
  /// [diskAllocationRatio] The Disk Allocation Ratio of the Dedicated Host Group. **NOTE:** When `engine = SQLServer`, this attribute does not support to set.
  /// [engine] Database Engine Type.The database engine of the dedicated cluster. Valid values:`Redis`, `SQLServer`, `MySQL`, `PostgreSQL`, `MongoDB`, `alisql`, `tair`, `mssql`. **NOTE:** Since v1.210.0., the `engine = SQLServer` was deprecated.
  /// [hostReplacePolicy] The policy based on which the system handles host failures. Valid values:`Auto`,`Manual`
  /// [memAllocationRatio] The Memory Allocation Ratio of the Dedicated Host Group.
  /// [openPermission] Whether to enable the feature that allows you to have OS permissions on the hosts in the dedicated cluster. Valid values: `true` and `false`.
  /// [vpcId] The virtual private cloud (VPC) ID of the dedicated cluster.
  DedicatedHostGroupArgs({
    this.allocationPolicy,
    this.cpuAllocationRatio,
    this.dedicatedHostGroupDesc,
    this.diskAllocationRatio,
    required this.engine,
    this.hostReplacePolicy,
    this.memAllocationRatio,
    this.openPermission,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationPolicy': ?allocationPolicy,
      'cpuAllocationRatio': ?cpuAllocationRatio,
      'dedicatedHostGroupDesc': ?dedicatedHostGroupDesc,
      'diskAllocationRatio': ?diskAllocationRatio,
      'engine': engine,
      'hostReplacePolicy': ?hostReplacePolicy,
      'memAllocationRatio': ?memAllocationRatio,
      'openPermission': ?openPermission,
      'vpcId': vpcId,
    };
  }

  factory DedicatedHostGroupArgs.fromMap(Map<String, dynamic> map) {
    return DedicatedHostGroupArgs(
      allocationPolicy: map['allocationPolicy'] == null ? null : (map['allocationPolicy'] as String).input(),
      cpuAllocationRatio: map['cpuAllocationRatio'] == null ? null : (map['cpuAllocationRatio'] as int).input(),
      dedicatedHostGroupDesc: map['dedicatedHostGroupDesc'] == null ? null : (map['dedicatedHostGroupDesc'] as String).input(),
      diskAllocationRatio: map['diskAllocationRatio'] == null ? null : (map['diskAllocationRatio'] as int).input(),
      engine: (map['engine'] as String).input(),
      hostReplacePolicy: map['hostReplacePolicy'] == null ? null : (map['hostReplacePolicy'] as String).input(),
      memAllocationRatio: map['memAllocationRatio'] == null ? null : (map['memAllocationRatio'] as int).input(),
      openPermission: map['openPermission'] == null ? null : (map['openPermission'] as bool).input(),
      vpcId: (map['vpcId'] as String).input(),
    );
  }
}

