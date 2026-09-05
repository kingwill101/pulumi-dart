// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_query_suggestions_block_list_source_s3_path.dart';

/// Result data returned by getQuerySuggestionsBlockList.
class GetQuerySuggestionsBlockListResult {
  /// ARN of the block list.
  final String? arn;
  /// Date-time a block list was created.
  final String? createdAt;
  /// Description for the block list.
  final String? description;
  /// Error message containing details if there are issues processing the block list.
  final String? errorMessage;
  /// Current size of the block list text file in S3.
  final int? fileSizeBytes;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? indexId;
  /// Current number of valid, non-empty words or phrases in the block list text file.
  final int? itemCount;
  /// Name of the block list.
  final String? name;
  final String? querySuggestionsBlockListId;
  final String? region;
  /// ARN of a role with permission to access the S3 bucket that contains the block list. For more information, see [IAM Roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).
  final String? roleArn;
  /// S3 location of the block list input data. Detailed below.
  final List<GetQuerySuggestionsBlockListSourceS3Path>? sourceS3Paths;
  /// Current status of the block list. When the value is `ACTIVE`, the block list is ready for use.
  final String? status;
  /// Metadata that helps organize the block list you create.
  final Map<String, String>? tags;
  /// Date and time that the block list was last updated.
  final String? updatedAt;

  /// Creates a new [GetQuerySuggestionsBlockListResult].
  /// [arn] ARN of the block list.
  /// [createdAt] Date-time a block list was created.
  /// [description] Description for the block list.
  /// [errorMessage] Error message containing details if there are issues processing the block list.
  /// [fileSizeBytes] Current size of the block list text file in S3.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [indexId] Optional.
  /// [itemCount] Current number of valid, non-empty words or phrases in the block list text file.
  /// [name] Name of the block list.
  /// [querySuggestionsBlockListId] Optional.
  /// [region] Optional.
  /// [roleArn] ARN of a role with permission to access the S3 bucket that contains the block list. For more information, see [IAM Roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).
  /// [sourceS3Paths] S3 location of the block list input data. Detailed below.
  /// [status] Current status of the block list. When the value is `ACTIVE`, the block list is ready for use.
  /// [tags] Metadata that helps organize the block list you create.
  /// [updatedAt] Date and time that the block list was last updated.
  const GetQuerySuggestionsBlockListResult({
    this.arn,
    this.createdAt,
    this.description,
    this.errorMessage,
    this.fileSizeBytes,
    this.id,
    this.indexId,
    this.itemCount,
    this.name,
    this.querySuggestionsBlockListId,
    this.region,
    this.roleArn,
    this.sourceS3Paths,
    this.status,
    this.tags,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdAt': ?createdAt,
      'description': ?description,
      'errorMessage': ?errorMessage,
      'fileSizeBytes': ?fileSizeBytes,
      'id': ?id,
      'indexId': ?indexId,
      'itemCount': ?itemCount,
      'name': ?name,
      'querySuggestionsBlockListId': ?querySuggestionsBlockListId,
      'region': ?region,
      'roleArn': ?roleArn,
      'sourceS3Paths': ?(() { final guardedValue = sourceS3Paths; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetQuerySuggestionsBlockListSourceS3Path, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': ?status,
      'tags': ?tags,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetQuerySuggestionsBlockListResult.fromMap(Map<String, dynamic> map) {
    return GetQuerySuggestionsBlockListResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileSizeBytes: (() { final guardedValue = map['fileSizeBytes']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      indexId: (() { final guardedValue = map['indexId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      itemCount: (() { final guardedValue = map['itemCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      querySuggestionsBlockListId: (() { final guardedValue = map['querySuggestionsBlockListId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceS3Paths: (() { final guardedValue = map['sourceS3Paths']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetQuerySuggestionsBlockListSourceS3Path>(guardedValue, (value) => GetQuerySuggestionsBlockListSourceS3Path.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
