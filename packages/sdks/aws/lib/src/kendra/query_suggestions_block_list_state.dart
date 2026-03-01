// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'query_suggestions_block_list_source_s3_path.dart';

/// Input properties used for looking up and filtering QuerySuggestionsBlockList resources.
class QuerySuggestionsBlockListState {
  /// ARN of the block list.
  final pulumi.Input<String>? arn;
  final pulumi.Input<String>? description;
  /// Identifier of the index for a block list.
  final pulumi.Input<String>? indexId;
  /// Name for the block list.
  final pulumi.Input<String>? name;
  /// Unique identifier of the block list.
  final pulumi.Input<String>? querySuggestionsBlockListId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  final pulumi.Input<String>? region;
  /// IAM (Identity and Access Management) role used to access the block list text file in S3.
  final pulumi.Input<String>? roleArn;
  /// S3 path where your block list text file is located. See details below.
  final pulumi.Input<QuerySuggestionsBlockListSourceS3Path>? sourceS3Path;
  final pulumi.Input<String>? status;
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider's default_tags configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [QuerySuggestionsBlockListState].
  /// [arn] ARN of the block list.
  /// [description] Optional.
  /// [indexId] Identifier of the index for a block list.
  /// [name] Name for the block list.
  /// [querySuggestionsBlockListId] Unique identifier of the block list.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  /// [roleArn] IAM (Identity and Access Management) role used to access the block list text file in S3.
  /// [sourceS3Path] S3 path where your block list text file is located. See details below.
  /// [status] Optional.
  /// [tags] Optional.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider's default_tags configuration block.
  QuerySuggestionsBlockListState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? indexId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? querySuggestionsBlockListId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
    pulumi.Output<QuerySuggestionsBlockListSourceS3Path>? sourceS3Path,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      indexId = pulumi.Input.asOptionalInput<String>(indexId),
      name = pulumi.Input.asOptionalInput<String>(name),
      querySuggestionsBlockListId = pulumi.Input.asOptionalInput<String>(querySuggestionsBlockListId),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      sourceS3Path = pulumi.Input.asOptionalInput<QuerySuggestionsBlockListSourceS3Path>(sourceS3Path),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'indexId': ?indexId,
      'name': ?name,
      'querySuggestionsBlockListId': ?querySuggestionsBlockListId,
      'region': ?region,
      'roleArn': ?roleArn,
      'sourceS3Path': ?pulumi.Input.mapOptionalInputValue<QuerySuggestionsBlockListSourceS3Path, Map<String, dynamic>>(sourceS3Path, (value) => value.toMap()),
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory QuerySuggestionsBlockListState.fromMap(Map<String, dynamic> map) {
    return QuerySuggestionsBlockListState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      indexId: map['indexId'] == null ? null : pulumi.Output.create<String>(map['indexId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      querySuggestionsBlockListId: map['querySuggestionsBlockListId'] == null ? null : pulumi.Output.create<String>(map['querySuggestionsBlockListId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      sourceS3Path: map['sourceS3Path'] == null ? null : pulumi.Output.create<QuerySuggestionsBlockListSourceS3Path>(QuerySuggestionsBlockListSourceS3Path.fromMap((map['sourceS3Path'] as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

