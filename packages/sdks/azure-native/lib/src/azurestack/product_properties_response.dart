// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional properties of the product
class ProductPropertiesResponse {
  /// The version.
  final pulumi.Input<String>? version;

  /// Creates a new [ProductPropertiesResponse].
  /// [version] The version.
  ProductPropertiesResponse({
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'version': ?version,
    };
  }

  factory ProductPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ProductPropertiesResponse(
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

