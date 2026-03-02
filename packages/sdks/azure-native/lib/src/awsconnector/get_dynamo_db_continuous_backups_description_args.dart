// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_dynamo_db_continuous_backups_description_args_doc}
/// Arguments for getDynamoDbContinuousBackupsDescription.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_dynamo_db_continuous_backups_description_args_doc}
class GetDynamoDbContinuousBackupsDescriptionArgs {
  /// Name of DynamoDBContinuousBackupsDescription
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDynamoDbContinuousBackupsDescriptionArgs].
  /// [name] Name of DynamoDBContinuousBackupsDescription
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDynamoDbContinuousBackupsDescriptionArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDynamoDbContinuousBackupsDescriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetDynamoDbContinuousBackupsDescriptionArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

