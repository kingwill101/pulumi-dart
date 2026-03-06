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
  const GetTableArgs({
    required this.name,
    this.region,
    this.serverSideEncryption,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
      'serverSideEncryption': ?pulumi.Input.mapOptionalInputValue<GetTableServerSideEncryption, Map<String, dynamic>>(serverSideEncryption, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory GetTableArgs.fromMap(Map<String, dynamic> map) {
    return GetTableArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverSideEncryption: (() { final guardedValue = map['serverSideEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetTableServerSideEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

