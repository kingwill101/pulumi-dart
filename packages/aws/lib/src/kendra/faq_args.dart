// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'faq_s3_path.dart';

/// {@template pulumi_kendra_faq_faq_args_doc}
/// The set of arguments for Faq.
/// {@endtemplate}
/// {@macro pulumi_kendra_faq_faq_args_doc}
class FaqArgs {
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? fileFormat;

  /// The identifier of the index for a FAQ.
  final pulumi.Input<String> indexId;
  final pulumi.Input<String>? languageCode;

  /// The name that should be associated with the FAQ.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  final pulumi.Input<String>? region;

  /// The Amazon Resource Name (ARN) of a role with permission to access the S3 bucket that contains the FAQs. For more information, see [IAM Roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).
  final pulumi.Input<String> roleArn;

  /// The S3 location of the FAQ input data. Detailed below.
  final pulumi.Input<FaqS3Path> s3Path;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FaqArgs].
  /// [description] Optional.
  /// [fileFormat] Optional.
  /// [indexId] The identifier of the index for a FAQ.
  /// [languageCode] Optional.
  /// [name] The name that should be associated with the FAQ.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  /// [roleArn] The Amazon Resource Name (ARN) of a role with permission to access the S3 bucket that contains the FAQs. For more information, see [IAM Roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).
  /// [s3Path] The S3 location of the FAQ input data. Detailed below.
  /// [tags] Optional.
  FaqArgs({
    String? description,
    String? fileFormat,
    required String indexId,
    String? languageCode,
    String? name,
    String? region,
    required String roleArn,
    required FaqS3Path s3Path,
    Map<String, String>? tags,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        fileFormat = pulumi.Input.asOptionalInput<String>(fileFormat),
        indexId = pulumi.Input.asInput<String>(indexId),
        languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        roleArn = pulumi.Input.asInput<String>(roleArn),
        s3Path = pulumi.Input.asInput<FaqS3Path>(s3Path),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final fileFormatValue = fileFormat;
    if (fileFormatValue != null) {
      map['fileFormat'] = fileFormatValue;
    }
    map['indexId'] = indexId;
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    map['s3Path'] = pulumi.Input.mapInputValue<FaqS3Path, Map<String, dynamic>>(
        s3Path, (value) => value.toMap());
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory FaqArgs.fromMap(Map<String, dynamic> map) {
    return FaqArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      fileFormat:
          map['fileFormat'] == null ? null : map['fileFormat'] as String,
      indexId: map['indexId'] as String,
      languageCode:
          map['languageCode'] == null ? null : map['languageCode'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      roleArn: map['roleArn'] as String,
      s3Path: FaqS3Path.fromMap((map['s3Path'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
