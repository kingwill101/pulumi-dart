// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents an Azure resource group.
class ResourceGroupValue {
  /// Location of the resource group.
  final pulumi.Input<String>? location;
  /// Name of the resource group.
  final pulumi.Input<String>? name;

  /// Creates a new [ResourceGroupValue].
  /// [location] Location of the resource group.
  /// [name] Name of the resource group.
  ResourceGroupValue({
    this.location,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
    };
  }

  factory ResourceGroupValue.fromMap(Map<String, dynamic> map) {
    return ResourceGroupValue(
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

