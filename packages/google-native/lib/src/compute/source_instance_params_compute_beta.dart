// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_instantiation_config_compute_beta.dart';

/// A specification of the parameters to use when creating the instance template from a source instance.
class SourceInstanceParamsComputeBeta {
  /// Attached disks configuration. If not provided, defaults are applied: For boot disk and any other R/W disks, the source images for each disk will be used. For read-only disks, they will be attached in read-only mode. Local SSD disks will be created as blank volumes.
  final List<DiskInstantiationConfigComputeBeta>? diskConfigs;

  /// Creates a new [SourceInstanceParamsComputeBeta].
  /// [diskConfigs] Attached disks configuration. If not provided, defaults are applied: For boot disk and any other R/W disks, the source images for each disk will be used. For read-only disks, they will be attached in read-only mode. Local SSD disks will be created as blank volumes.
  SourceInstanceParamsComputeBeta({
    this.diskConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final diskConfigsValue = diskConfigs;
    if (diskConfigsValue != null) {
      map['diskConfigs'] = pulumi.Input.encodeList<
          DiskInstantiationConfigComputeBeta,
          Map<String, dynamic>>(diskConfigsValue, (value) => value.toMap());
    }
    return map;
  }

  factory SourceInstanceParamsComputeBeta.fromMap(Map<String, dynamic> map) {
    return SourceInstanceParamsComputeBeta(
      diskConfigs: map['diskConfigs'] == null
          ? null
          : pulumi.Input.decodeList<DiskInstantiationConfigComputeBeta>(
              map['diskConfigs'],
              (value) => DiskInstantiationConfigComputeBeta.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
