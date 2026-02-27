// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getApp.
class GetAppArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String>? includeExtraData;

  GetAppArgs({
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

  factory GetAppArgs.fromMap(Map<String, dynamic> map) {
    return GetAppArgs(
      appId: pulumi.Input.asInput<String>(map['appId']),
      includeExtraData:
          pulumi.Input.asOptionalInput<String>(map['includeExtraData']),
    );
  }
}
