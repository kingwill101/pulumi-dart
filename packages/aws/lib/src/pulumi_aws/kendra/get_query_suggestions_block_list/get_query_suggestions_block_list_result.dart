// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_query_suggestions_block_list_source_s3_path/get_query_suggestions_block_list_source_s3_path.dart';

/// Result data returned by getQuerySuggestionsBlockList.
class GetQuerySuggestionsBlockListResult {
  /// ARN of the block list.
  final String arn;

  /// Date-time a block list was created.
  final String createdAt;

  /// Description for the block list.
  final String description;

  /// Error message containing details if there are issues processing the block list.
  final String errorMessage;

  /// Current size of the block list text file in S3.
  final int fileSizeBytes;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String indexId;

  /// Current number of valid, non-empty words or phrases in the block list text file.
  final int itemCount;

  /// Name of the block list.
  final String name;
  final String querySuggestionsBlockListId;
  final String region;

  /// ARN of a role with permission to access the S3 bucket that contains the block list. For more information, see [IAM Roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).
  final String roleArn;

  /// S3 location of the block list input data. Detailed below.
  final List<GetQuerySuggestionsBlockListSourceS3Path> sourceS3Paths;

  /// Current status of the block list. When the value is `ACTIVE`, the block list is ready for use.
  final String status;

  /// Metadata that helps organize the block list you create.
  final Map<String, String> tags;

  /// Date and time that the block list was last updated.
  final String updatedAt;

  GetQuerySuggestionsBlockListResult({
    required this.arn,
    required this.createdAt,
    required this.description,
    required this.errorMessage,
    required this.fileSizeBytes,
    required this.id,
    required this.indexId,
    required this.itemCount,
    required this.name,
    required this.querySuggestionsBlockListId,
    required this.region,
    required this.roleArn,
    required this.sourceS3Paths,
    required this.status,
    required this.tags,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['createdAt'] = createdAt;
    map['description'] = description;
    map['errorMessage'] = errorMessage;
    map['fileSizeBytes'] = fileSizeBytes;
    map['id'] = id;
    map['indexId'] = indexId;
    map['itemCount'] = itemCount;
    map['name'] = name;
    map['querySuggestionsBlockListId'] = querySuggestionsBlockListId;
    map['region'] = region;
    map['roleArn'] = roleArn;
    map['sourceS3Paths'] = pulumi.Input.encodeList<
        GetQuerySuggestionsBlockListSourceS3Path,
        Map<String, dynamic>>(sourceS3Paths, (value) => value.toMap());
    map['status'] = status;
    map['tags'] = tags;
    map['updatedAt'] = updatedAt;
    return map;
  }

  factory GetQuerySuggestionsBlockListResult.fromMap(Map<String, dynamic> map) {
    return GetQuerySuggestionsBlockListResult(
      arn: map['arn'] as String,
      createdAt: map['createdAt'] as String,
      description: map['description'] as String,
      errorMessage: map['errorMessage'] as String,
      fileSizeBytes: map['fileSizeBytes'] as int,
      id: map['id'] as String,
      indexId: map['indexId'] as String,
      itemCount: map['itemCount'] as int,
      name: map['name'] as String,
      querySuggestionsBlockListId: map['querySuggestionsBlockListId'] as String,
      region: map['region'] as String,
      roleArn: map['roleArn'] as String,
      sourceS3Paths:
          pulumi.Input.decodeList<GetQuerySuggestionsBlockListSourceS3Path>(
              map['sourceS3Paths'],
              (value) => GetQuerySuggestionsBlockListSourceS3Path.fromMap(
                  (value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      updatedAt: map['updatedAt'] as String,
    );
  }
}
