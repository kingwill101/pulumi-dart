// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional properties of the product
class ProductPropertiesResponse {
  /// The version.
  final pulumi.Input<String>? version;

  /// Creates a new [ProductPropertiesResponse].
  /// [version] The version.
  const ProductPropertiesResponse({
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'version': ?version,
    };
  }

  factory ProductPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ProductPropertiesResponse(
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

