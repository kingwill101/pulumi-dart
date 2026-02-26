// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getVersion.
class GetVersionArgs3 {
  final Input<String> appId;
  final Input<String>? includeExtraData;
  final Input<String> serviceId;
  final Input<String> versionId;
  final Input<String>? view;

  GetVersionArgs3({
    required this.appId,
    this.includeExtraData,
    required this.serviceId,
    required this.versionId,
    this.view,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    final includeExtraDataValue = includeExtraData;
    if (includeExtraDataValue != null) {
      map['includeExtraData'] = includeExtraDataValue;
    }
    map['serviceId'] = serviceId;
    map['versionId'] = versionId;
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetVersionArgs3.fromMap(Map<String, dynamic> map) {
    return GetVersionArgs3(
      appId: Input.asInput<String>(map['appId']),
      includeExtraData: Input.asOptionalInput<String>(map['includeExtraData']),
      serviceId: Input.asInput<String>(map['serviceId']),
      versionId: Input.asInput<String>(map['versionId']),
      view: Input.asOptionalInput<String>(map['view']),
    );
  }
}
