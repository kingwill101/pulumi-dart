// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_faq_s3_path.dart';

/// Result data returned by getFaq.
class GetFaqResult {
  /// ARN of the FAQ.
  final String? arn;
  /// Unix datetime that the faq was created.
  final String? createdAt;
  /// Description of the FAQ.
  final String? description;
  /// When the `status` field value is `FAILED`, this contains a message that explains why.
  final String? errorMessage;
  final String? faqId;
  /// File format used by the input files for the FAQ. Valid Values are `CSV`, `CSV_WITH_HEADER`, `JSON`.
  final String? fileFormat;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? indexId;
  /// Code for a language. This shows a supported language for the FAQ document. For more information on supported languages, including their codes, see [Adding documents in languages other than English](https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html).
  final String? languageCode;
  /// Name of the FAQ.
  final String? name;
  final String? region;
  /// ARN of a role with permission to access the S3 bucket that contains the FAQs. For more information, see [IAM Roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).
  final String? roleArn;
  /// S3 location of the FAQ input data. Detailed below.
  final List<GetFaqS3Path>? s3Paths;
  /// Status of the FAQ. It is ready to use when the status is ACTIVE.
  final String? status;
  /// Metadata that helps organize the FAQs you create.
  final Map<String, String>? tags;
  /// Date and time that the FAQ was last updated.
  final String? updatedAt;

  /// Creates a new [GetFaqResult].
  /// [arn] ARN of the FAQ.
  /// [createdAt] Unix datetime that the faq was created.
  /// [description] Description of the FAQ.
  /// [errorMessage] When the `status` field value is `FAILED`, this contains a message that explains why.
  /// [faqId] Optional.
  /// [fileFormat] File format used by the input files for the FAQ. Valid Values are `CSV`, `CSV_WITH_HEADER`, `JSON`.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [indexId] Optional.
  /// [languageCode] Code for a language. This shows a supported language for the FAQ document. For more information on supported languages, including their codes, see [Adding documents in languages other than English](https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html).
  /// [name] Name of the FAQ.
  /// [region] Optional.
  /// [roleArn] ARN of a role with permission to access the S3 bucket that contains the FAQs. For more information, see [IAM Roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).
  /// [s3Paths] S3 location of the FAQ input data. Detailed below.
  /// [status] Status of the FAQ. It is ready to use when the status is ACTIVE.
  /// [tags] Metadata that helps organize the FAQs you create.
  /// [updatedAt] Date and time that the FAQ was last updated.
  const GetFaqResult({
    this.arn,
    this.createdAt,
    this.description,
    this.errorMessage,
    this.faqId,
    this.fileFormat,
    this.id,
    this.indexId,
    this.languageCode,
    this.name,
    this.region,
    this.roleArn,
    this.s3Paths,
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
      'faqId': ?faqId,
      'fileFormat': ?fileFormat,
      'id': ?id,
      'indexId': ?indexId,
      'languageCode': ?languageCode,
      'name': ?name,
      'region': ?region,
      'roleArn': ?roleArn,
      's3Paths': ?(() { final guardedValue = s3Paths; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFaqS3Path, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': ?status,
      'tags': ?tags,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetFaqResult.fromMap(Map<String, dynamic> map) {
    return GetFaqResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      faqId: (() { final guardedValue = map['faqId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileFormat: (() { final guardedValue = map['fileFormat']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      indexId: (() { final guardedValue = map['indexId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      languageCode: (() { final guardedValue = map['languageCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      s3Paths: (() { final guardedValue = map['s3Paths']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFaqS3Path>(guardedValue, (value) => GetFaqS3Path.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
