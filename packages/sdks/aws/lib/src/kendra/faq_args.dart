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
    return <String, dynamic>{
      'description': ?description,
      'fileFormat': ?fileFormat,
      'indexId': indexId,
      'languageCode': ?languageCode,
      'name': ?name,
      'region': ?region,
      'roleArn': roleArn,
      's3Path': pulumi.Input.mapInputValue<FaqS3Path, Map<String, dynamic>>(s3Path, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory FaqArgs.fromMap(Map<String, dynamic> map) {
    return FaqArgs(
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      fileFormat: map['fileFormat'] == null ? null : ((map['fileFormat'] as String).input()).input(),
      indexId: (map['indexId'] as String).input(),
      languageCode: map['languageCode'] == null ? null : ((map['languageCode'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      roleArn: (map['roleArn'] as String).input(),
      s3Path: (FaqS3Path.fromMap((map['s3Path']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

