// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_instantiation_config.dart';

/// A specification of the parameters to use when creating the instance template from a source instance.
class SourceInstanceParams {
  /// Attached disks configuration. If not provided, defaults are applied: For boot disk and any other R/W disks, the source images for each disk will be used. For read-only disks, they will be attached in read-only mode. Local SSD disks will be created as blank volumes.
  final List<DiskInstantiationConfig>? diskConfigs;

  SourceInstanceParams({
    this.diskConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final diskConfigsValue = diskConfigs;
    if (diskConfigsValue != null) {
      map['diskConfigs'] = pulumi.Input.encodeList<DiskInstantiationConfig,
          Map<String, dynamic>>(diskConfigsValue, (value) => value.toMap());
    }
    return map;
  }

  factory SourceInstanceParams.fromMap(Map<String, dynamic> map) {
    return SourceInstanceParams(
      diskConfigs: map['diskConfigs'] == null
          ? null
          : pulumi.Input.decodeList<DiskInstantiationConfig>(
              map['diskConfigs'],
              (value) => DiskInstantiationConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
