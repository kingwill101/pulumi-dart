// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_thesaurus_source_s3_path.dart';

/// Result data returned by getThesaurus.
class GetThesaurusResult {
  /// ARN of the Thesaurus.
  final String arn;
  /// Unix datetime that the Thesaurus was created.
  final String createdAt;
  /// Description of the Thesaurus.
  final String description;
  /// When the `status` field value is `FAILED`, this contains a message that explains why.
  final String errorMessage;
  /// Size of the Thesaurus file in bytes.
  final int fileSizeBytes;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String indexId;
  /// Name of the Thesaurus.
  final String name;
  final String region;
  /// ARN of a role with permission to access the S3 bucket that contains the Thesaurus. For more information, see [IAM Roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).
  final String roleArn;
  /// S3 location of the Thesaurus input data. Detailed below.
  final List<GetThesaurusSourceS3Path> sourceS3Paths;
  /// Status of the Thesaurus. It is ready to use when the status is `ACTIVE`.
  final String status;
  /// Number of synonym rules in the Thesaurus file.
  final int synonymRuleCount;
  /// Metadata that helps organize the Thesaurus you create.
  final Map<String, String> tags;
  /// Number of unique terms in the Thesaurus file. For example, the synonyms `a,b,c` and `a=>d`, the term count would be 4.
  final int termCount;
  final String thesaurusId;
  /// Date and time that the Thesaurus was last updated.
  final String updatedAt;

  /// Creates a new [GetThesaurusResult].
  /// [arn] ARN of the Thesaurus.
  /// [createdAt] Unix datetime that the Thesaurus was created.
  /// [description] Description of the Thesaurus.
  /// [errorMessage] When the `status` field value is `FAILED`, this contains a message that explains why.
  /// [fileSizeBytes] Size of the Thesaurus file in bytes.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [indexId] Required.
  /// [name] Name of the Thesaurus.
  /// [region] Required.
  /// [roleArn] ARN of a role with permission to access the S3 bucket that contains the Thesaurus. For more information, see [IAM Roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).
  /// [sourceS3Paths] S3 location of the Thesaurus input data. Detailed below.
  /// [status] Status of the Thesaurus. It is ready to use when the status is `ACTIVE`.
  /// [synonymRuleCount] Number of synonym rules in the Thesaurus file.
  /// [tags] Metadata that helps organize the Thesaurus you create.
  /// [termCount] Number of unique terms in the Thesaurus file. For example, the synonyms `a,b,c` and `a=>d`, the term count would be 4.
  /// [thesaurusId] Required.
  /// [updatedAt] Date and time that the Thesaurus was last updated.
  GetThesaurusResult({
    required this.arn,
    required this.createdAt,
    required this.description,
    required this.errorMessage,
    required this.fileSizeBytes,
    required this.id,
    required this.indexId,
    required this.name,
    required this.region,
    required this.roleArn,
    required this.sourceS3Paths,
    required this.status,
    required this.synonymRuleCount,
    required this.tags,
    required this.termCount,
    required this.thesaurusId,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'createdAt': createdAt,
      'description': description,
      'errorMessage': errorMessage,
      'fileSizeBytes': fileSizeBytes,
      'id': id,
      'indexId': indexId,
      'name': name,
      'region': region,
      'roleArn': roleArn,
      'sourceS3Paths': pulumi.Input.encodeList<GetThesaurusSourceS3Path, Map<String, dynamic>>(sourceS3Paths, (value) => value.toMap()),
      'status': status,
      'synonymRuleCount': synonymRuleCount,
      'tags': tags,
      'termCount': termCount,
      'thesaurusId': thesaurusId,
      'updatedAt': updatedAt,
    };
  }

  factory GetThesaurusResult.fromMap(Map<String, dynamic> map) {
    return GetThesaurusResult(
      arn: map['arn'] as String,
      createdAt: map['createdAt'] as String,
      description: map['description'] as String,
      errorMessage: map['errorMessage'] as String,
      fileSizeBytes: map['fileSizeBytes'] as int,
      id: map['id'] as String,
      indexId: map['indexId'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      roleArn: map['roleArn'] as String,
      sourceS3Paths: pulumi.Input.decodeList<GetThesaurusSourceS3Path>(map['sourceS3Paths']!, (value) => GetThesaurusSourceS3Path.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      synonymRuleCount: map['synonymRuleCount'] as int,
      tags: (map['tags'] as Map).cast<String, String>(),
      termCount: map['termCount'] as int,
      thesaurusId: map['thesaurusId'] as String,
      updatedAt: map['updatedAt'] as String,
    );
  }
}

