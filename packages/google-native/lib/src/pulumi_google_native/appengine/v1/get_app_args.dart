// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getApp.
class GetAppArgs {
  final Input<String> appId;
  final Input<String>? includeExtraData;

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
      appId: Input.asInput<String>(map['appId']),
      includeExtraData: Input.asOptionalInput<String>(map['includeExtraData']),
    );
  }
}
