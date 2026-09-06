// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Analytical storage specific properties.
class AnalyticalStorageConfiguration {
  /// Describes the types of schema for analytical storage.
  final pulumi.Input<dynamic>? schemaType;

  /// Creates a new [AnalyticalStorageConfiguration].
  /// [schemaType] Describes the types of schema for analytical storage.
  const AnalyticalStorageConfiguration({
    this.schemaType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schemaType': ?schemaType,
    };
  }

  factory AnalyticalStorageConfiguration.fromMap(Map<String, dynamic> map) {
    return AnalyticalStorageConfiguration(
      schemaType: (() { final guardedValue = map['schemaType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
