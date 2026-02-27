// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getVersion.
class GetVersionAppengineV1betaArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String>? includeExtraData;
  final pulumi.Input<String> serviceId;
  final pulumi.Input<String> versionId;
  final pulumi.Input<String>? view;

  GetVersionAppengineV1betaArgs({
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

  factory GetVersionAppengineV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetVersionAppengineV1betaArgs(
      appId: pulumi.Input.asInput<String>(map['appId']),
      includeExtraData:
          pulumi.Input.asOptionalInput<String>(map['includeExtraData']),
      serviceId: pulumi.Input.asInput<String>(map['serviceId']),
      versionId: pulumi.Input.asInput<String>(map['versionId']),
      view: pulumi.Input.asOptionalInput<String>(map['view']),
    );
  }
}
