// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'disk_instantiation_config_response3.dart';

/// A specification of the parameters to use when creating the instance template from a source instance.
class SourceInstanceParamsResponse3 {
  /// Attached disks configuration. If not provided, defaults are applied: For boot disk and any other R/W disks, the source images for each disk will be used. For read-only disks, they will be attached in read-only mode. Local SSD disks will be created as blank volumes.
  final List<DiskInstantiationConfigResponse3> diskConfigs;

  SourceInstanceParamsResponse3({
    required this.diskConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['diskConfigs'] = Input.encodeList<DiskInstantiationConfigResponse3,
        Map<String, dynamic>>(diskConfigs, (value) => value.toMap());
    return map;
  }

  factory SourceInstanceParamsResponse3.fromMap(Map<String, dynamic> map) {
    return SourceInstanceParamsResponse3(
      diskConfigs: Input.decodeList<DiskInstantiationConfigResponse3>(
          map['diskConfigs'],
          (value) => DiskInstantiationConfigResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
