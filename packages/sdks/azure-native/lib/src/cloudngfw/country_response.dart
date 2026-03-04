// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Country Description
class CountryResponse {
  /// country code
  final pulumi.Input<String> code;

  /// code description
  final pulumi.Input<String>? description;

  /// Creates a new [CountryResponse].
  /// [code] country code
  /// [description] code description
  CountryResponse({required this.code, this.description});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'code': code, 'description': ?description};
  }

  factory CountryResponse.fromMap(Map<String, dynamic> map) {
    return CountryResponse(
      code: pulumi.Input.fromValue(map['code'] as String),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
