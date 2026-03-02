// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_faq_s3_path.dart';

/// Result data returned by getFaq.
class GetFaqResult {
  /// ARN of the FAQ.
  final String arn;
  /// Unix datetime that the faq was created.
  final String createdAt;
  /// Description of the FAQ.
  final String description;
  /// When the `status` field value is `FAILED`, this contains a message that explains why.
  final String errorMessage;
  final String faqId;
  /// File format used by the input files for the FAQ. Valid Values are `CSV`, `CSV_WITH_HEADER`, `JSON`.
  final String fileFormat;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String indexId;
  /// Code for a language. This shows a supported language for the FAQ document. For more information on supported languages, including their codes, see [Adding documents in languages other than English](https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html).
  final String languageCode;
  /// Name of the FAQ.
  final String name;
  final String region;
  /// ARN of a role with permission to access the S3 bucket that contains the FAQs. For more information, see [IAM Roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).
  final String roleArn;
  /// S3 location of the FAQ input data. Detailed below.
  final List<GetFaqS3Path> s3Paths;
  /// Status of the FAQ. It is ready to use when the status is ACTIVE.
  final String status;
  /// Metadata that helps organize the FAQs you create.
  final Map<String, String> tags;
  /// Date and time that the FAQ was last updated.
  final String updatedAt;

  /// Creates a new [GetFaqResult].
  /// [arn] ARN of the FAQ.
  /// [createdAt] Unix datetime that the faq was created.
  /// [description] Description of the FAQ.
  /// [errorMessage] When the `status` field value is `FAILED`, this contains a message that explains why.
  /// [faqId] Required.
  /// [fileFormat] File format used by the input files for the FAQ. Valid Values are `CSV`, `CSV_WITH_HEADER`, `JSON`.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [indexId] Required.
  /// [languageCode] Code for a language. This shows a supported language for the FAQ document. For more information on supported languages, including their codes, see [Adding documents in languages other than English](https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html).
  /// [name] Name of the FAQ.
  /// [region] Required.
  /// [roleArn] ARN of a role with permission to access the S3 bucket that contains the FAQs. For more information, see [IAM Roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).
  /// [s3Paths] S3 location of the FAQ input data. Detailed below.
  /// [status] Status of the FAQ. It is ready to use when the status is ACTIVE.
  /// [tags] Metadata that helps organize the FAQs you create.
  /// [updatedAt] Date and time that the FAQ was last updated.
  GetFaqResult({
    required this.arn,
    required this.createdAt,
    required this.description,
    required this.errorMessage,
    required this.faqId,
    required this.fileFormat,
    required this.id,
    required this.indexId,
    required this.languageCode,
    required this.name,
    required this.region,
    required this.roleArn,
    required this.s3Paths,
    required this.status,
    required this.tags,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'createdAt': createdAt,
      'description': description,
      'errorMessage': errorMessage,
      'faqId': faqId,
      'fileFormat': fileFormat,
      'id': id,
      'indexId': indexId,
      'languageCode': languageCode,
      'name': name,
      'region': region,
      'roleArn': roleArn,
      's3Paths': pulumi.Input.encodeList<GetFaqS3Path, Map<String, dynamic>>(s3Paths, (value) => value.toMap()),
      'status': status,
      'tags': tags,
      'updatedAt': updatedAt,
    };
  }

  factory GetFaqResult.fromMap(Map<String, dynamic> map) {
    return GetFaqResult(
      arn: map['arn'] as String,
      createdAt: map['createdAt'] as String,
      description: map['description'] as String,
      errorMessage: map['errorMessage'] as String,
      faqId: map['faqId'] as String,
      fileFormat: map['fileFormat'] as String,
      id: map['id'] as String,
      indexId: map['indexId'] as String,
      languageCode: map['languageCode'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      roleArn: map['roleArn'] as String,
      s3Paths: pulumi.Input.decodeList<GetFaqS3Path>(map['s3Paths']!, (value) => GetFaqS3Path.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      updatedAt: map['updatedAt'] as String,
    );
  }
}

