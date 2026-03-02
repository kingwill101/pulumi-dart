// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecr_repository_properties.dart';

/// {@template pulumi_awsconnector_ecr_repository_args_doc}
/// The set of arguments for EcrRepository.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_ecr_repository_args_doc}
class EcrRepositoryArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of EcrRepository
  final pulumi.Input<String>? name;
  /// The resource-specific properties for this resource.
  final pulumi.Input<EcrRepositoryProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EcrRepositoryArgs].
  /// [location] The geo-location where the resource lives
  /// [name] Name of EcrRepository
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  EcrRepositoryArgs({
    this.location,
    this.name,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<EcrRepositoryProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory EcrRepositoryArgs.fromMap(Map<String, dynamic> map) {
    return EcrRepositoryArgs(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      properties: map['properties'] == null ? null : (EcrRepositoryProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

