// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model that represents the Simple filter parameters.
class SimpleFilterParametersResponse {
  /// List of Azure availability zones to filter targets by.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [SimpleFilterParametersResponse].
  /// [zones] List of Azure availability zones to filter targets by.
  const SimpleFilterParametersResponse({
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zones': ?zones,
    };
  }

  factory SimpleFilterParametersResponse.fromMap(Map<String, dynamic> map) {
    return SimpleFilterParametersResponse(
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
