// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../faq_s3_path/faq_s3_path.dart';

/// The set of arguments for Faq.
class FaqArgs {
  final Input<String>? description;
  final Input<String>? fileFormat;

  /// The identifier of the index for a FAQ.
  final Input<String> indexId;
  final Input<String>? languageCode;

  /// The name that should be associated with the FAQ.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  final Input<String>? region;

  /// The Amazon Resource Name (ARN) of a role with permission to access the S3 bucket that contains the FAQs. For more information, see [IAM Roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).
  final Input<String> roleArn;

  /// The S3 location of the FAQ input data. Detailed below.
  final Input<FaqS3Path> s3Path;
  final Input<Map<String, String>>? tags;

  FaqArgs({
    this.description,
    this.fileFormat,
    required this.indexId,
    this.languageCode,
    this.name,
    this.region,
    required this.roleArn,
    required this.s3Path,
    this.tags,
  });

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
    map['s3Path'] = Input.mapInputValue<FaqS3Path, Map<String, dynamic>>(
        s3Path, (value) => value.toMap());
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory FaqArgs.fromMap(Map<String, dynamic> map) {
    return FaqArgs(
      description: Input.asOptionalInput<String>(map['description']),
      fileFormat: Input.asOptionalInput<String>(map['fileFormat']),
      indexId: Input.asInput<String>(map['indexId']),
      languageCode: Input.asOptionalInput<String>(map['languageCode']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asInput<String>(map['roleArn']),
      s3Path: Input.asInput<FaqS3Path>(map['s3Path']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
