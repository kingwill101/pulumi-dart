// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_dynamo_db_table_args_doc}
/// Arguments for getDynamoDbTable.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_dynamo_db_table_args_doc}
class GetDynamoDbTableArgs {
  /// Name of DynamoDBTable
  final pulumi.Input<String> name;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDynamoDbTableArgs].
  /// [name] Name of DynamoDBTable
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDynamoDbTableArgs({required this.name, required this.resourceGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDynamoDbTableArgs.fromMap(Map<String, dynamic> map) {
    return GetDynamoDbTableArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
