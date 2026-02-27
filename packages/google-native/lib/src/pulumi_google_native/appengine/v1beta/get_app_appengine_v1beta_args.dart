// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getApp.
class GetAppAppengineV1betaArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String>? includeExtraData;

  GetAppAppengineV1betaArgs({
    required this.appId,
    this.includeExtraData,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    final includeExtraDataValue = includeExtraData;
    if (includeExtraDataValue != null) {
      map['includeExtraData'] = includeExtraDataValue;
    }
    return map;
  }

  factory GetAppAppengineV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetAppAppengineV1betaArgs(
      appId: pulumi.Input.asInput<String>(map['appId']),
      includeExtraData:
          pulumi.Input.asOptionalInput<String>(map['includeExtraData']),
    );
  }
}
