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
    pulumi.Output<ResourceIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? modernizeProjectName,
    pulumi.Output<ModernizeProjectModelProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? subscriptionId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      identity = pulumi.Input.asOptionalInput<ResourceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      modernizeProjectName = pulumi.Input.asOptionalInput<String>(modernizeProjectName),
      properties = pulumi.Input.asOptionalInput<ModernizeProjectModelProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      identity: map['identity'] == null ? null : pulumi.Output.create<ResourceIdentity>(ResourceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      modernizeProjectName: map['modernizeProjectName'] == null ? null : pulumi.Output.create<String>(map['modernizeProjectName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ModernizeProjectModelProperties>(ModernizeProjectModelProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subscriptionId: map['subscriptionId'] == null ? null : pulumi.Output.create<String>(map['subscriptionId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

