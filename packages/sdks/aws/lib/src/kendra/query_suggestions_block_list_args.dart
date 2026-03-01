// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'query_suggestions_block_list_source_s3_path.dart';

/// {@template pulumi_kendra_query_suggestions_block_list_query_suggestions_block_list_args_doc}
/// The set of arguments for QuerySuggestionsBlockList.
/// {@endtemplate}
/// {@macro pulumi_kendra_query_suggestions_block_list_query_suggestions_block_list_args_doc}
class QuerySuggestionsBlockListArgs {
  final pulumi.Input<String>? description;
  /// Identifier of the index for a block list.
  final pulumi.Input<String> indexId;
  /// Name for the block list.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  final pulumi.Input<String>? region;
  /// IAM (Identity and Access Management) role used to access the block list text file in S3.
  final pulumi.Input<String> roleArn;
  /// S3 path where your block list text file is located. See details below.
  final pulumi.Input<QuerySuggestionsBlockListSourceS3Path> sourceS3Path;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [QuerySuggestionsBlockListArgs].
  /// [description] Optional.
  /// [indexId] Identifier of the index for a block list.
  /// [name] Name for the block list.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  /// [roleArn] IAM (Identity and Access Management) role used to access the block list text file in S3.
  /// [sourceS3Path] S3 path where your block list text file is located. See details below.
  /// [tags] Optional.
  QuerySuggestionsBlockListArgs({
    pulumi.Output<String>? description,
    required pulumi.Output<String> indexId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    required pulumi.Output<String> roleArn,
    required pulumi.Output<QuerySuggestionsBlockListSourceS3Path> sourceS3Path,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      indexId = pulumi.Input.asInput<String>(indexId),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asInput<String>(roleArn),
      sourceS3Path = pulumi.Input.asInput<QuerySuggestionsBlockListSourceS3Path>(sourceS3Path),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'indexId': indexId,
      'name': ?name,
      'region': ?region,
      'roleArn': roleArn,
      'sourceS3Path': pulumi.Input.mapInputValue<QuerySuggestionsBlockListSourceS3Path, Map<String, dynamic>>(sourceS3Path, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory QuerySuggestionsBlockListArgs.fromMap(Map<String, dynamic> map) {
    return QuerySuggestionsBlockListArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      indexId: pulumi.Output.create<String>(map['indexId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: pulumi.Output.create<String>(map['roleArn'] as String),
      sourceS3Path: pulumi.Output.create<QuerySuggestionsBlockListSourceS3Path>(QuerySuggestionsBlockListSourceS3Path.fromMap((map['sourceS3Path'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

