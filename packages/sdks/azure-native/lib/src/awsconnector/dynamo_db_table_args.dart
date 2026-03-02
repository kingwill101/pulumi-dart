// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamo_dbtable_properties.dart';

/// {@template pulumi_awsconnector_dynamo_db_table_args_doc}
/// The set of arguments for DynamoDbTable.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_dynamo_db_table_args_doc}
class DynamoDbTableArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of DynamoDBTable
  final pulumi.Input<String>? name;
  /// The resource-specific properties for this resource.
  final pulumi.Input<DynamoDBTableProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DynamoDbTableArgs].
  /// [location] The geo-location where the resource lives
  /// [name] Name of DynamoDBTable
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  DynamoDbTableArgs({
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
      'properties': ?pulumi.Input.mapOptionalInputValue<DynamoDBTableProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DynamoDbTableArgs.fromMap(Map<String, dynamic> map) {
    return DynamoDbTableArgs(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      properties: map['properties'] == null ? null : (DynamoDBTableProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

