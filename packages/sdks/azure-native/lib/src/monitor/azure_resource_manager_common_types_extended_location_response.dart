// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The complex type of the extended location.
class AzureResourceManagerCommonTypesExtendedLocationResponse {
  /// The name of the extended location.
  final pulumi.Input<String> name;
  /// The type of the extended location.
  final pulumi.Input<String> type;

  /// Creates a new [AzureResourceManagerCommonTypesExtendedLocationResponse].
  /// [name] The name of the extended location.
  /// [type] The type of the extended location.
  AzureResourceManagerCommonTypesExtendedLocationResponse({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory AzureResourceManagerCommonTypesExtendedLocationResponse.fromMap(Map<String, dynamic> map) {
    return AzureResourceManagerCommonTypesExtendedLocationResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

