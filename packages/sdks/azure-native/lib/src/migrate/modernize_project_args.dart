// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'modernize_project_model_properties.dart';
import 'resource_identity.dart';

/// {@template pulumi_migrate_modernize_project_args_doc}
/// The set of arguments for ModernizeProject.
/// {@endtemplate}
/// {@macro pulumi_migrate_modernize_project_args_doc}
class ModernizeProjectArgs {
  final pulumi.Input<ResourceIdentity>? identity;
  /// Gets or sets the location of the modernizeProject.
  final pulumi.Input<String>? location;
  /// ModernizeProject Name.
  final pulumi.Input<String>? modernizeProjectName;
  /// ModernizeProject properties.
  final pulumi.Input<ModernizeProjectModelProperties>? properties;
  /// Name of the Azure Resource Group that project is part of.
  final pulumi.Input<String> resourceGroupName;
  /// Azure Subscription Id in which project was created.
  final pulumi.Input<String>? subscriptionId;
  /// Gets or sets the resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ModernizeProjectArgs].
  /// [identity] Optional.
  /// [location] Gets or sets the location of the modernizeProject.
  /// [modernizeProjectName] ModernizeProject Name.
  /// [properties] ModernizeProject properties.
  /// [resourceGroupName] Name of the Azure Resource Group that project is part of.
  /// [subscriptionId] Azure Subscription Id in which project was created.
  /// [tags] Gets or sets the resource tags.
  const ModernizeProjectArgs({
    this.identity,
    this.location,
    this.modernizeProjectName,
    this.properties,
    required this.resourceGroupName,
    this.subscriptionId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<ResourceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'modernizeProjectName': ?modernizeProjectName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ModernizeProjectModelProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'subscriptionId': ?subscriptionId,
      'tags': ?tags,
    };
  }

  factory ModernizeProjectArgs.fromMap(Map<String, dynamic> map) {
    return ModernizeProjectArgs(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modernizeProjectName: (() { final guardedValue = map['modernizeProjectName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ModernizeProjectModelProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
