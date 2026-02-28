// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flexible_app_version_resources_volume.dart';

class FlexibleAppVersionResources {
  /// Number of CPU cores needed.
  final int? cpu;

  /// Disk size (GB) needed.
  final int? diskGb;

  /// Memory (GB) needed.
  final double? memoryGb;

  /// List of ports, or port pairs, to forward from the virtual machine to the application container.
  /// Structure is documented below.
  final List<FlexibleAppVersionResourcesVolume>? volumes;

  /// Creates a new [FlexibleAppVersionResources].
  /// [cpu] Number of CPU cores needed.
  /// [diskGb] Disk size (GB) needed.
  /// [memoryGb] Memory (GB) needed.
  /// [volumes] List of ports, or port pairs, to forward from the virtual machine to the application container.
  FlexibleAppVersionResources({
    this.cpu,
    this.diskGb,
    this.memoryGb,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cpuValue = cpu;
    if (cpuValue != null) {
      map['cpu'] = cpuValue;
    }
    final diskGbValue = diskGb;
    if (diskGbValue != null) {
      map['diskGb'] = diskGbValue;
    }
    final memoryGbValue = memoryGb;
    if (memoryGbValue != null) {
      map['memoryGb'] = memoryGbValue;
    }
    final volumesValue = volumes;
    if (volumesValue != null) {
      map['volumes'] = pulumi.Input.encodeList<
          FlexibleAppVersionResourcesVolume,
          Map<String, dynamic>>(volumesValue, (value) => value.toMap());
    }
    return map;
  }

  factory FlexibleAppVersionResources.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionResources(
      cpu: map['cpu'] == null ? null : map['cpu'] as int,
      diskGb: map['diskGb'] == null ? null : map['diskGb'] as int,
      memoryGb: map['memoryGb'] == null ? null : map['memoryGb'] as double,
      volumes: map['volumes'] == null
          ? null
          : pulumi.Input.decodeList<FlexibleAppVersionResourcesVolume>(
              map['volumes'],
              (value) => FlexibleAppVersionResourcesVolume.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
