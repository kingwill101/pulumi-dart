// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'faq_s3_path.dart';

/// {@template pulumi_kendra_faq_faq_args_doc}
/// The set of arguments for Faq.
/// {@endtemplate}
/// {@macro pulumi_kendra_faq_faq_args_doc}
class FaqArgs {
  /// Description for a FAQ.
  final pulumi.Input<String?>? description;
  /// File format used by the input files for the FAQ. Valid Values are `CSV`, `CSV_WITH_HEADER`, `JSON`.
  final pulumi.Input<String?>? fileFormat;
  /// Identifier of the index for a FAQ.
  final pulumi.Input<String> indexId;
  /// Code for a language. This shows a supported language for the FAQ document. English is supported by default. For more information on supported languages, including their codes, see [Adding documents in languages other than English](https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html).
  final pulumi.Input<String?>? languageCode;
  /// Name that should be associated with the FAQ.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of a role with permission to access the S3 bucket that contains the FAQs. For more information, see [IAM Roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).
  final pulumi.Input<String> roleArn;
  /// S3 location of the FAQ input data. Detailed below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<FaqS3Path> s3Path;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [FaqArgs].
  /// [description] Description for a FAQ.
  /// [fileFormat] File format used by the input files for the FAQ. Valid Values are `CSV`, `CSV_WITH_HEADER`, `JSON`.
  /// [indexId] Identifier of the index for a FAQ.
  /// [languageCode] Code for a language. This shows a supported language for the FAQ document. English is supported by default. For more information on supported languages, including their codes, see [Adding documents in languages other than English](https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html).
  /// [name] Name that should be associated with the FAQ.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of a role with permission to access the S3 bucket that contains the FAQs. For more information, see [IAM Roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).
  /// [s3Path] S3 location of the FAQ input data. Detailed below.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const FaqArgs({
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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileFormat: (() { final guardedValue = map['fileFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      indexId: pulumi.Input.fromValue(map['indexId'] as String),
      languageCode: (() { final guardedValue = map['languageCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      s3Path: pulumi.Input.fromValue(FaqS3Path.fromMap((map['s3Path']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
