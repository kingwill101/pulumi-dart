// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'faq_s3_path.dart';

/// Input properties used for looking up and filtering Faq resources.
class FaqState {
  /// ARN of the FAQ.
  final pulumi.Input<String?>? arn;
  /// Unix datetime that the FAQ was created.
  final pulumi.Input<String?>? createdAt;
  /// Description for a FAQ.
  final pulumi.Input<String?>? description;
  /// When the Status field value is `FAILED`, this contains a message that explains why.
  final pulumi.Input<String?>? errorMessage;
  /// Identifier of the FAQ.
  final pulumi.Input<String?>? faqId;
  /// File format used by the input files for the FAQ. Valid Values are `CSV`, `CSV_WITH_HEADER`, `JSON`.
  final pulumi.Input<String?>? fileFormat;
  /// Identifier of the index for a FAQ.
  final pulumi.Input<String?>? indexId;
  /// Code for a language. This shows a supported language for the FAQ document. English is supported by default. For more information on supported languages, including their codes, see [Adding documents in languages other than English](https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html).
  final pulumi.Input<String?>? languageCode;
  /// Name that should be associated with the FAQ.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of a role with permission to access the S3 bucket that contains the FAQs. For more information, see [IAM Roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).
  final pulumi.Input<String?>? roleArn;
  /// S3 location of the FAQ input data. Detailed below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<FaqS3Path?>? s3Path;
  /// Status of the FAQ. It is ready to use when the status is ACTIVE.
  final pulumi.Input<String?>? status;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Date and time that the FAQ was last updated.
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [FaqState].
  /// [arn] ARN of the FAQ.
  /// [createdAt] Unix datetime that the FAQ was created.
  /// [description] Description for a FAQ.
  /// [errorMessage] When the Status field value is `FAILED`, this contains a message that explains why.
  /// [faqId] Identifier of the FAQ.
  /// [fileFormat] File format used by the input files for the FAQ. Valid Values are `CSV`, `CSV_WITH_HEADER`, `JSON`.
  /// [indexId] Identifier of the index for a FAQ.
  /// [languageCode] Code for a language. This shows a supported language for the FAQ document. English is supported by default. For more information on supported languages, including their codes, see [Adding documents in languages other than English](https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html).
  /// [name] Name that should be associated with the FAQ.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of a role with permission to access the S3 bucket that contains the FAQs. For more information, see [IAM Roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).
  /// [s3Path] S3 location of the FAQ input data. Detailed below.
  /// [status] Status of the FAQ. It is ready to use when the status is ACTIVE.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [updatedAt] Date and time that the FAQ was last updated.
  const FaqState({
    this.arn,
    this.createdAt,
    this.description,
    this.errorMessage,
    this.faqId,
    this.fileFormat,
    this.indexId,
    this.languageCode,
    this.name,
    this.region,
    this.roleArn,
    this.s3Path,
    this.status,
    this.tags,
    this.tagsAll,
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
      'indexId': ?indexId,
      'languageCode': ?languageCode,
      'name': ?name,
      'region': ?region,
      'roleArn': ?roleArn,
      's3Path': ?pulumi.Input.mapOptionalInputValue<FaqS3Path, Map<String, dynamic>>(s3Path, (value) => value.toMap()),
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'updatedAt': ?updatedAt,
    };
  }

  factory FaqState.fromMap(Map<String, dynamic> map) {
    return FaqState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      faqId: (() { final guardedValue = map['faqId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileFormat: (() { final guardedValue = map['fileFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      indexId: (() { final guardedValue = map['indexId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      languageCode: (() { final guardedValue = map['languageCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3Path: (() { final guardedValue = map['s3Path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FaqS3Path.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
