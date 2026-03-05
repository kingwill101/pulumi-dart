// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents an Azure resource group in a blueprint definition.
class ResourceGroupDefinition {
  /// Artifacts which need to be deployed before this resource group.
  final pulumi.Input<List<String>>? dependsOn;
  /// Description of this parameter/resourceGroup.
  final pulumi.Input<String>? description;
  /// DisplayName of this parameter/resourceGroup.
  final pulumi.Input<String>? displayName;
  /// Location of this resourceGroup. Leave empty if the resource group location will be specified during the blueprint assignment.
  final pulumi.Input<String>? location;
  /// Name of this resourceGroup. Leave empty if the resource group name will be specified during the blueprint assignment.
  final pulumi.Input<String>? name;
  /// StrongType for UI to render rich experience during blueprint assignment. Supported strong types are resourceType, principalId and location.
  final pulumi.Input<String>? strongType;
  /// Tags to be assigned to this resource group.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ResourceGroupDefinition].
  /// [dependsOn] Artifacts which need to be deployed before this resource group.
  /// [description] Description of this parameter/resourceGroup.
  /// [displayName] DisplayName of this parameter/resourceGroup.
  /// [location] Location of this resourceGroup. Leave empty if the resource group location will be specified during the blueprint assignment.
  /// [name] Name of this resourceGroup. Leave empty if the resource group name will be specified during the blueprint assignment.
  /// [strongType] StrongType for UI to render rich experience during blueprint assignment. Supported strong types are resourceType, principalId and location.
  /// [tags] Tags to be assigned to this resource group.
  ResourceGroupDefinition({
    this.dependsOn,
    this.description,
    this.displayName,
    this.location,
    this.name,
    this.strongType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dependsOn': ?dependsOn,
      'description': ?description,
      'displayName': ?displayName,
      'location': ?location,
      'name': ?name,
      'strongType': ?strongType,
      'tags': ?tags,
    };
  }

  factory ResourceGroupDefinition.fromMap(Map<String, dynamic> map) {
    return ResourceGroupDefinition(
      dependsOn: (() { final guardedValue = map['dependsOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      strongType: (() { final guardedValue = map['strongType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

