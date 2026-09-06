// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage setting
class StorageSettingResponse {
  /// Gets or sets the type of the datastore.
  final pulumi.Input<String?>? datastoreType;
  /// Gets or sets the type.
  final pulumi.Input<String?>? type;

  /// Creates a new [StorageSettingResponse].
  /// [datastoreType] Gets or sets the type of the datastore.
  /// [type] Gets or sets the type.
  const StorageSettingResponse({
    this.datastoreType,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datastoreType': ?datastoreType,
      'type': ?type,
    };
  }

  factory StorageSettingResponse.fromMap(Map<String, dynamic> map) {
    return StorageSettingResponse(
      datastoreType: (() { final guardedValue = map['datastoreType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
