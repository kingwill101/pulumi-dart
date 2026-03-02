// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'faq_s3_path.dart';

/// Input properties used for looking up and filtering Faq resources.
class FaqState {
  /// ARN of the FAQ.
  final pulumi.Input<String>? arn;
  /// The Unix datetime that the FAQ was created.
  final pulumi.Input<String>? createdAt;
  final pulumi.Input<String>? description;
  /// When the Status field value is `FAILED`, this contains a message that explains why.
  final pulumi.Input<String>? errorMessage;
  /// The identifier of the FAQ.
  final pulumi.Input<String>? faqId;
  final pulumi.Input<String>? fileFormat;
  /// The identifier of the index for a FAQ.
  final pulumi.Input<String>? indexId;
  final pulumi.Input<String>? languageCode;
  /// The name that should be associated with the FAQ.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) of a role with permission to access the S3 bucket that contains the FAQs. For more information, see [IAM Roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).
  final pulumi.Input<String>? roleArn;
  /// The S3 location of the FAQ input data. Detailed below.
  final pulumi.Input<FaqS3Path>? s3Path;
  /// The status of the FAQ. It is ready to use when the status is ACTIVE.
  final pulumi.Input<String>? status;
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The date and time that the FAQ was last updated.
  final pulumi.Input<String>? updatedAt;

  /// Creates a new [FaqState].
  /// [arn] ARN of the FAQ.
  /// [createdAt] The Unix datetime that the FAQ was created.
  /// [description] Optional.
  /// [errorMessage] When the Status field value is `FAILED`, this contains a message that explains why.
  /// [faqId] The identifier of the FAQ.
  /// [fileFormat] Optional.
  /// [indexId] The identifier of the index for a FAQ.
  /// [languageCode] Optional.
  /// [name] The name that should be associated with the FAQ.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  /// [roleArn] The Amazon Resource Name (ARN) of a role with permission to access the S3 bucket that contains the FAQs. For more information, see [IAM Roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).
  /// [s3Path] The S3 location of the FAQ input data. Detailed below.
  /// [status] The status of the FAQ. It is ready to use when the status is ACTIVE.
  /// [tags] Optional.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [updatedAt] The date and time that the FAQ was last updated.
  FaqState({
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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      createdAt: map['createdAt'] == null ? null : ((map['createdAt'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      errorMessage: map['errorMessage'] == null ? null : ((map['errorMessage'] as String).input()).input(),
      faqId: map['faqId'] == null ? null : ((map['faqId'] as String).input()).input(),
      fileFormat: map['fileFormat'] == null ? null : ((map['fileFormat'] as String).input()).input(),
      indexId: map['indexId'] == null ? null : ((map['indexId'] as String).input()).input(),
      languageCode: map['languageCode'] == null ? null : ((map['languageCode'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      roleArn: map['roleArn'] == null ? null : ((map['roleArn'] as String).input()).input(),
      s3Path: map['s3Path'] == null ? null : ((FaqS3Path.fromMap((map['s3Path']! as Map).cast<String, dynamic>())).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      updatedAt: map['updatedAt'] == null ? null : ((map['updatedAt'] as String).input()).input(),
    );
  }
}

