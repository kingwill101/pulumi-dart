// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_thesaurus_source_s3_path.dart';

/// Result data returned by getThesaurus.
class GetThesaurusResult {
  /// ARN of the Thesaurus.
  final String? arn;
  /// Unix datetime that the Thesaurus was created.
  final String? createdAt;
  /// Description of the Thesaurus.
  final String? description;
  /// When the `status` field value is `FAILED`, this contains a message that explains why.
  final String? errorMessage;
  /// Size of the Thesaurus file in bytes.
  final int? fileSizeBytes;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? indexId;
  /// Name of the Thesaurus.
  final String? name;
  final String? region;
  /// ARN of a role with permission to access the S3 bucket that contains the Thesaurus. For more information, see [IAM Roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).
  final String? roleArn;
  /// S3 location of the Thesaurus input data. Detailed below.
  final List<GetThesaurusSourceS3Path>? sourceS3Paths;
  /// Status of the Thesaurus. It is ready to use when the status is `ACTIVE`.
  final String? status;
  /// Number of synonym rules in the Thesaurus file.
  final int? synonymRuleCount;
  /// Metadata that helps organize the Thesaurus you create.
  final Map<String, String>? tags;
  /// Number of unique terms in the Thesaurus file. For example, the synonyms `a,b,c` and `a=&gt;d`, the term count would be 4.
  final int? termCount;
  final String? thesaurusId;
  /// Date and time that the Thesaurus was last updated.
  final String? updatedAt;

  /// Creates a new [GetThesaurusResult].
  /// [arn] ARN of the Thesaurus.
  /// [createdAt] Unix datetime that the Thesaurus was created.
  /// [description] Description of the Thesaurus.
  /// [errorMessage] When the `status` field value is `FAILED`, this contains a message that explains why.
  /// [fileSizeBytes] Size of the Thesaurus file in bytes.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [indexId] Optional.
  /// [name] Name of the Thesaurus.
  /// [region] Optional.
  /// [roleArn] ARN of a role with permission to access the S3 bucket that contains the Thesaurus. For more information, see [IAM Roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).
  /// [sourceS3Paths] S3 location of the Thesaurus input data. Detailed below.
  /// [status] Status of the Thesaurus. It is ready to use when the status is `ACTIVE`.
  /// [synonymRuleCount] Number of synonym rules in the Thesaurus file.
  /// [tags] Metadata that helps organize the Thesaurus you create.
  /// [termCount] Number of unique terms in the Thesaurus file. For example, the synonyms `a,b,c` and `a=&gt;d`, the term count would be 4.
  /// [thesaurusId] Optional.
  /// [updatedAt] Date and time that the Thesaurus was last updated.
  const GetThesaurusResult({
    this.arn,
    this.createdAt,
    this.description,
    this.errorMessage,
    this.fileSizeBytes,
    this.id,
    this.indexId,
    this.name,
    this.region,
    this.roleArn,
    this.sourceS3Paths,
    this.status,
    this.synonymRuleCount,
    this.tags,
    this.termCount,
    this.thesaurusId,
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
      'name': ?name,
      'region': ?region,
      'roleArn': ?roleArn,
      'sourceS3Paths': ?(() { final guardedValue = sourceS3Paths; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetThesaurusSourceS3Path, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': ?status,
      'synonymRuleCount': ?synonymRuleCount,
      'tags': ?tags,
      'termCount': ?termCount,
      'thesaurusId': ?thesaurusId,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetThesaurusResult.fromMap(Map<String, dynamic> map) {
    return GetThesaurusResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileSizeBytes: (() { final guardedValue = map['fileSizeBytes']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      indexId: (() { final guardedValue = map['indexId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceS3Paths: (() { final guardedValue = map['sourceS3Paths']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetThesaurusSourceS3Path>(guardedValue, (value) => GetThesaurusSourceS3Path.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      synonymRuleCount: (() { final guardedValue = map['synonymRuleCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      termCount: (() { final guardedValue = map['termCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      thesaurusId: (() { final guardedValue = map['thesaurusId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
