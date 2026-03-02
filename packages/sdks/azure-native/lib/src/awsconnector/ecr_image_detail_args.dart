// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecr_image_detail_properties.dart';

/// {@template pulumi_awsconnector_ecr_image_detail_args_doc}
/// The set of arguments for EcrImageDetail.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_ecr_image_detail_args_doc}
class EcrImageDetailArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of EcrImageDetail
  final pulumi.Input<String>? name;
  /// The resource-specific properties for this resource.
  final pulumi.Input<EcrImageDetailProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EcrImageDetailArgs].
  /// [location] The geo-location where the resource lives
  /// [name] Name of EcrImageDetail
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  EcrImageDetailArgs({
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
      'properties': ?pulumi.Input.mapOptionalInputValue<EcrImageDetailProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory EcrImageDetailArgs.fromMap(Map<String, dynamic> map) {
    return EcrImageDetailArgs(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      properties: map['properties'] == null ? null : (EcrImageDetailProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

