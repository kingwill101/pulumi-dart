// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_table_server_side_encryption.dart';

/// {@template pulumi_dynamodb_get_table_get_table_args_doc}
/// Arguments for getTable.
/// {@endtemplate}
/// {@macro pulumi_dynamodb_get_table_get_table_args_doc}
class GetTableArgs {
  /// Name of the DynamoDB table.
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<GetTableServerSideEncryption>? serverSideEncryption;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetTableArgs].
  /// [name] Name of the DynamoDB table.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serverSideEncryption] Optional.
  /// [tags] Optional.
  GetTableArgs({
    required String name,
    String? region,
    GetTableServerSideEncryption? serverSideEncryption,
    Map<String, String>? tags,
  }) : name = pulumi.Input.asInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       serverSideEncryption =
           pulumi.Input.asOptionalInput<GetTableServerSideEncryption>(
             serverSideEncryption,
           ),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
      'serverSideEncryption':
          ?pulumi.Input.mapOptionalInputValue<
            GetTableServerSideEncryption,
            Map<String, dynamic>
          >(serverSideEncryption, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory GetTableArgs.fromMap(Map<String, dynamic> map) {
    return GetTableArgs(
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      serverSideEncryption: map['serverSideEncryption'] == null
          ? null
          : GetTableServerSideEncryption.fromMap(
              (map['serverSideEncryption'] as Map).cast<String, dynamic>(),
            ),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
