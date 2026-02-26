// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_faq_s3_path/get_faq_s3_path.dart';

/// Result data returned by getFaq.
class GetFaqResult {
  /// ARN of the FAQ.
  final String arn;

  /// Unix datetime that the faq was created.
  final String createdAt;

  /// Description of the FAQ.
  final String description;

  /// When the <span pulumi-lang-nodejs="`status`" pulumi-lang-dotnet="`Status`" pulumi-lang-go="`status`" pulumi-lang-python="`status`" pulumi-lang-yaml="`status`" pulumi-lang-java="`status`">`status`</span> field value is `FAILED`, this contains a message that explains why.
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
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['createdAt'] = createdAt;
    map['description'] = description;
    map['errorMessage'] = errorMessage;
    map['faqId'] = faqId;
    map['fileFormat'] = fileFormat;
    map['id'] = id;
    map['indexId'] = indexId;
    map['languageCode'] = languageCode;
    map['name'] = name;
    map['region'] = region;
    map['roleArn'] = roleArn;
    map['s3Paths'] = Input.encodeList<GetFaqS3Path, Map<String, dynamic>>(
        s3Paths, (value) => value.toMap());
    map['status'] = status;
    map['tags'] = tags;
    map['updatedAt'] = updatedAt;
    return map;
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
      s3Paths: Input.decodeList<GetFaqS3Path>(
          map['s3Paths'],
          (value) =>
              GetFaqS3Path.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      updatedAt: map['updatedAt'] as String,
    );
  }
}
