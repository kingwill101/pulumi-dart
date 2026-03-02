// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Analytical storage specific properties.
class AnalyticalStorageConfigurationResponse {
  /// Describes the types of schema for analytical storage.
  final pulumi.Input<String>? schemaType;

  /// Creates a new [AnalyticalStorageConfigurationResponse].
  /// [schemaType] Describes the types of schema for analytical storage.
  AnalyticalStorageConfigurationResponse({
    this.schemaType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schemaType': ?schemaType,
    };
  }

  factory AnalyticalStorageConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AnalyticalStorageConfigurationResponse(
      schemaType: map['schemaType'] == null ? null : (map['schemaType'] as String).input(),
    );
  }
}

