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
    this.arn,
    this.description,
    this.indexId,
    this.name,
    this.querySuggestionsBlockListId,
    this.region,
    this.roleArn,
    this.sourceS3Path,
    this.status,
    this.tags,
    this.tagsAll,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      indexId: (() { final guardedValue = map['indexId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      querySuggestionsBlockListId: (() { final guardedValue = map['querySuggestionsBlockListId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceS3Path: (() { final guardedValue = map['sourceS3Path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QuerySuggestionsBlockListSourceS3Path.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

