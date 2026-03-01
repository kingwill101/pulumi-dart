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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? description,
    pulumi.Output<String>? errorMessage,
    pulumi.Output<String>? faqId,
    pulumi.Output<String>? fileFormat,
    pulumi.Output<String>? indexId,
    pulumi.Output<String>? languageCode,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
    pulumi.Output<FaqS3Path>? s3Path,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? updatedAt,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      description = pulumi.Input.asOptionalInput<String>(description),
      errorMessage = pulumi.Input.asOptionalInput<String>(errorMessage),
      faqId = pulumi.Input.asOptionalInput<String>(faqId),
      fileFormat = pulumi.Input.asOptionalInput<String>(fileFormat),
      indexId = pulumi.Input.asOptionalInput<String>(indexId),
      languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      s3Path = pulumi.Input.asOptionalInput<FaqS3Path>(s3Path),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      updatedAt = pulumi.Input.asOptionalInput<String>(updatedAt);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      errorMessage: map['errorMessage'] == null ? null : pulumi.Output.create<String>(map['errorMessage'] as String),
      faqId: map['faqId'] == null ? null : pulumi.Output.create<String>(map['faqId'] as String),
      fileFormat: map['fileFormat'] == null ? null : pulumi.Output.create<String>(map['fileFormat'] as String),
      indexId: map['indexId'] == null ? null : pulumi.Output.create<String>(map['indexId'] as String),
      languageCode: map['languageCode'] == null ? null : pulumi.Output.create<String>(map['languageCode'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      s3Path: map['s3Path'] == null ? null : pulumi.Output.create<FaqS3Path>(FaqS3Path.fromMap((map['s3Path'] as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      updatedAt: map['updatedAt'] == null ? null : pulumi.Output.create<String>(map['updatedAt'] as String),
    );
  }
}

