// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../workstation_config_host_gce_instance_boost_config_accelerator/workstation_config_host_gce_instance_boost_config_accelerator.dart';

class WorkstationConfigHostGceInstanceBoostConfig {
  /// An accelerator card attached to the boost instance.
  /// Structure is documented below.
  final List<WorkstationConfigHostGceInstanceBoostConfigAccelerator>?
      accelerators;

  /// Size of the boot disk in GB. The minimum boot disk size is <span pulumi-lang-nodejs="`30`" pulumi-lang-dotnet="`30`" pulumi-lang-go="`30`" pulumi-lang-python="`30`" pulumi-lang-yaml="`30`" pulumi-lang-java="`30`">`30`</span> GB. Defaults to <span pulumi-lang-nodejs="`50`" pulumi-lang-dotnet="`50`" pulumi-lang-go="`50`" pulumi-lang-python="`50`" pulumi-lang-yaml="`50`" pulumi-lang-java="`50`">`50`</span> GB.
  final int? bootDiskSizeGb;

  /// Whether to enable nested virtualization on the Compute Engine VMs backing boosted Workstations.
  /// See https://cloud.google.com/workstations/docs/reference/rest/v1beta/projects.locations.workstationClusters.workstationConfigs#GceInstance.FIELDS.enable_nested_virtualization
  final bool? enableNestedVirtualization;

  /// The id to be used for the boost config.
  final String id;

  /// The type of machine that boosted VM instances will use—for example, e2-standard-4. For more information about machine types that Cloud Workstations supports, see the list of available machine types https://cloud.google.com/workstations/docs/available-machine-types. Defaults to e2-standard-4.
  final String? machineType;

  /// Number of instances to pool for faster workstation boosting.
  final int? poolSize;

  WorkstationConfigHostGceInstanceBoostConfig({
    this.accelerators,
    this.bootDiskSizeGb,
    this.enableNestedVirtualization,
    required this.id,
    this.machineType,
    this.poolSize,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorsValue = accelerators;
    if (acceleratorsValue != null) {
      map['accelerators'] = Input.encodeList<
          WorkstationConfigHostGceInstanceBoostConfigAccelerator,
          Map<String, dynamic>>(acceleratorsValue, (value) => value.toMap());
    }
    final bootDiskSizeGbValue = bootDiskSizeGb;
    if (bootDiskSizeGbValue != null) {
      map['bootDiskSizeGb'] = bootDiskSizeGbValue;
    }
    final enableNestedVirtualizationValue = enableNestedVirtualization;
    if (enableNestedVirtualizationValue != null) {
      map['enableNestedVirtualization'] = enableNestedVirtualizationValue;
    }
    map['id'] = id;
    final machineTypeValue = machineType;
    if (machineTypeValue != null) {
      map['machineType'] = machineTypeValue;
    }
    final poolSizeValue = poolSize;
    if (poolSizeValue != null) {
      map['poolSize'] = poolSizeValue;
    }
    return map;
  }

  factory WorkstationConfigHostGceInstanceBoostConfig.fromMap(
      Map<String, dynamic> map) {
    return WorkstationConfigHostGceInstanceBoostConfig(
      accelerators: map['accelerators'] == null
          ? null
          : Input.decodeList<
                  WorkstationConfigHostGceInstanceBoostConfigAccelerator>(
              map['accelerators'],
              (value) => WorkstationConfigHostGceInstanceBoostConfigAccelerator
                  .fromMap((value as Map).cast<String, dynamic>())),
      bootDiskSizeGb:
          map['bootDiskSizeGb'] == null ? null : map['bootDiskSizeGb'] as int,
      enableNestedVirtualization: map['enableNestedVirtualization'] == null
          ? null
          : map['enableNestedVirtualization'] as bool,
      id: map['id'] as String,
      machineType:
          map['machineType'] == null ? null : map['machineType'] as String,
      poolSize: map['poolSize'] == null ? null : map['poolSize'] as int,
    );
  }
}
