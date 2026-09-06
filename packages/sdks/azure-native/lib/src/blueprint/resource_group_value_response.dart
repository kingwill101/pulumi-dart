// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents an Azure resource group.
class ResourceGroupValueResponse {
  /// Location of the resource group.
  final pulumi.Input<String?>? location;
  /// Name of the resource group.
  final pulumi.Input<String?>? name;

  /// Creates a new [ResourceGroupValueResponse].
  /// [location] Location of the resource group.
  /// [name] Name of the resource group.
  const ResourceGroupValueResponse({
    this.location,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
    };
  }

  factory ResourceGroupValueResponse.fromMap(Map<String, dynamic> map) {
    return ResourceGroupValueResponse(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
