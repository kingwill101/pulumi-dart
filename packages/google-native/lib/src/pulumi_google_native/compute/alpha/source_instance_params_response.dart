// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'disk_instantiation_config_response.dart';

/// A specification of the parameters to use when creating the instance template from a source instance.
class SourceInstanceParamsResponse {
  /// Attached disks configuration. If not provided, defaults are applied: For boot disk and any other R/W disks, the source images for each disk will be used. For read-only disks, they will be attached in read-only mode. Local SSD disks will be created as blank volumes.
  final List<DiskInstantiationConfigResponse> diskConfigs;

  SourceInstanceParamsResponse({
    required this.diskConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['diskConfigs'] =
        Input.encodeList<DiskInstantiationConfigResponse, Map<String, dynamic>>(
            diskConfigs, (value) => value.toMap());
    return map;
  }

  factory SourceInstanceParamsResponse.fromMap(Map<String, dynamic> map) {
    return SourceInstanceParamsResponse(
      diskConfigs: Input.decodeList<DiskInstantiationConfigResponse>(
          map['diskConfigs'],
          (value) => DiskInstantiationConfigResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
