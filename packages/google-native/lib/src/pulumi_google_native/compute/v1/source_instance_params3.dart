// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'disk_instantiation_config3.dart';

/// A specification of the parameters to use when creating the instance template from a source instance.
class SourceInstanceParams3 {
  /// Attached disks configuration. If not provided, defaults are applied: For boot disk and any other R/W disks, the source images for each disk will be used. For read-only disks, they will be attached in read-only mode. Local SSD disks will be created as blank volumes.
  final List<DiskInstantiationConfig3>? diskConfigs;

  SourceInstanceParams3({
    this.diskConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final diskConfigsValue = diskConfigs;
    if (diskConfigsValue != null) {
      map['diskConfigs'] =
          Input.encodeList<DiskInstantiationConfig3, Map<String, dynamic>>(
              diskConfigsValue, (value) => value.toMap());
    }
    return map;
  }

  factory SourceInstanceParams3.fromMap(Map<String, dynamic> map) {
    return SourceInstanceParams3(
      diskConfigs: map['diskConfigs'] == null
          ? null
          : Input.decodeList<DiskInstantiationConfig3>(
              map['diskConfigs'],
              (value) => DiskInstantiationConfig3.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
