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
  ModernizeProjectArgs({
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
      identity: map['identity'] == null ? null : (ResourceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      modernizeProjectName: map['modernizeProjectName'] == null ? null : (map['modernizeProjectName']! as String).input(),
      properties: map['properties'] == null ? null : (ModernizeProjectModelProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

