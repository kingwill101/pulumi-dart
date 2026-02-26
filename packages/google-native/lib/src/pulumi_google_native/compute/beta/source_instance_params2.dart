// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'disk_instantiation_config2.dart';

/// A specification of the parameters to use when creating the instance template from a source instance.
class SourceInstanceParams2 {
  /// Attached disks configuration. If not provided, defaults are applied: For boot disk and any other R/W disks, the source images for each disk will be used. For read-only disks, they will be attached in read-only mode. Local SSD disks will be created as blank volumes.
  final List<DiskInstantiationConfig2>? diskConfigs;

  SourceInstanceParams2({
    this.diskConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final diskConfigsValue = diskConfigs;
    if (diskConfigsValue != null) {
      map['diskConfigs'] =
          Input.encodeList<DiskInstantiationConfig2, Map<String, dynamic>>(
              diskConfigsValue, (value) => value.toMap());
    }
    return map;
  }

  factory SourceInstanceParams2.fromMap(Map<String, dynamic> map) {
    return SourceInstanceParams2(
      diskConfigs: map['diskConfigs'] == null
          ? null
          : Input.decodeList<DiskInstantiationConfig2>(
              map['diskConfigs'],
              (value) => DiskInstantiationConfig2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
