// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage setting
class StorageSetting {
  /// Gets or sets the type of the datastore.
  final pulumi.Input<dynamic>? datastoreType;
  /// Gets or sets the type.
  final pulumi.Input<dynamic>? type;

  /// Creates a new [StorageSetting].
  /// [datastoreType] Gets or sets the type of the datastore.
  /// [type] Gets or sets the type.
  const StorageSetting({
    this.datastoreType,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datastoreType': ?datastoreType,
      'type': ?type,
    };
  }

  factory StorageSetting.fromMap(Map<String, dynamic> map) {
    return StorageSetting(
      datastoreType: (() { final guardedValue = map['datastoreType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
