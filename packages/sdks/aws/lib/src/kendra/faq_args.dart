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
    pulumi.Output<String>? description,
    pulumi.Output<String>? fileFormat,
    required pulumi.Output<String> indexId,
    pulumi.Output<String>? languageCode,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    required pulumi.Output<String> roleArn,
    required pulumi.Output<FaqS3Path> s3Path,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      fileFormat = pulumi.Input.asOptionalInput<String>(fileFormat),
      indexId = pulumi.Input.asInput<String>(indexId),
      languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asInput<String>(roleArn),
      s3Path = pulumi.Input.asInput<FaqS3Path>(s3Path),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      fileFormat: map['fileFormat'] == null ? null : pulumi.Output.create<String>(map['fileFormat'] as String),
      indexId: pulumi.Output.create<String>(map['indexId'] as String),
      languageCode: map['languageCode'] == null ? null : pulumi.Output.create<String>(map['languageCode'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: pulumi.Output.create<String>(map['roleArn'] as String),
      s3Path: pulumi.Output.create<FaqS3Path>(FaqS3Path.fromMap((map['s3Path'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

