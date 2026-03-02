// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage setting
class StorageSettingResponse {
  /// Gets or sets the type of the datastore.
  final pulumi.Input<String>? datastoreType;
  /// Gets or sets the type.
  final pulumi.Input<String>? type;

  /// Creates a new [StorageSettingResponse].
  /// [datastoreType] Gets or sets the type of the datastore.
  /// [type] Gets or sets the type.
  StorageSettingResponse({
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
      datastoreType: map['datastoreType'] == null ? null : (map['datastoreType'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

