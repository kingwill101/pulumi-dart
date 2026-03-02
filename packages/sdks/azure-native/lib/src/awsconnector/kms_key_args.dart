// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kms_key_properties.dart';

/// {@template pulumi_awsconnector_kms_key_args_doc}
/// The set of arguments for KmsKey.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_kms_key_args_doc}
class KmsKeyArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of KmsKey
  final pulumi.Input<String>? name;
  /// The resource-specific properties for this resource.
  final pulumi.Input<KmsKeyProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [KmsKeyArgs].
  /// [location] The geo-location where the resource lives
  /// [name] Name of KmsKey
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  KmsKeyArgs({
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
      'properties': ?pulumi.Input.mapOptionalInputValue<KmsKeyProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory KmsKeyArgs.fromMap(Map<String, dynamic> map) {
    return KmsKeyArgs(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      properties: map['properties'] == null ? null : (KmsKeyProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

