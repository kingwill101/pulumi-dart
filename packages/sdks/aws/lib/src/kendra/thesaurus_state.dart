// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'thesaurus_source_s3_path.dart';

/// Input properties used for looking up and filtering Thesaurus resources.
class ThesaurusState {
  /// ARN of the thesaurus.
  final pulumi.Input<String>? arn;
  final pulumi.Input<String>? description;
  /// The identifier of the index for a thesaurus.
  final pulumi.Input<String>? indexId;
  /// The name for the thesaurus.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  final pulumi.Input<String>? region;
  /// The IAM (Identity and Access Management) role used to access the thesaurus file in S3.
  final pulumi.Input<String>? roleArn;
  /// The S3 path where your thesaurus file sits in S3. Detailed below.
  final pulumi.Input<ThesaurusSourceS3Path>? sourceS3Path;
  /// The current status of the thesaurus.
  final pulumi.Input<String>? status;
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<String>? thesaurusId;

  /// Creates a new [ThesaurusState].
  /// [arn] ARN of the thesaurus.
  /// [description] Optional.
  /// [indexId] The identifier of the index for a thesaurus.
  /// [name] The name for the thesaurus.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  /// [roleArn] The IAM (Identity and Access Management) role used to access the thesaurus file in S3.
  /// [sourceS3Path] The S3 path where your thesaurus file sits in S3. Detailed below.
  /// [status] The current status of the thesaurus.
  /// [tags] Optional.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [thesaurusId] Optional.
  ThesaurusState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? indexId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
    pulumi.Output<ThesaurusSourceS3Path>? sourceS3Path,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? thesaurusId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      indexId = pulumi.Input.asOptionalInput<String>(indexId),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      sourceS3Path = pulumi.Input.asOptionalInput<ThesaurusSourceS3Path>(sourceS3Path),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      thesaurusId = pulumi.Input.asOptionalInput<String>(thesaurusId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'indexId': ?indexId,
      'name': ?name,
      'region': ?region,
      'roleArn': ?roleArn,
      'sourceS3Path': ?pulumi.Input.mapOptionalInputValue<ThesaurusSourceS3Path, Map<String, dynamic>>(sourceS3Path, (value) => value.toMap()),
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'thesaurusId': ?thesaurusId,
    };
  }

  factory ThesaurusState.fromMap(Map<String, dynamic> map) {
    return ThesaurusState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      indexId: map['indexId'] == null ? null : pulumi.Output.create<String>(map['indexId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      sourceS3Path: map['sourceS3Path'] == null ? null : pulumi.Output.create<ThesaurusSourceS3Path>(ThesaurusSourceS3Path.fromMap((map['sourceS3Path'] as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      thesaurusId: map['thesaurusId'] == null ? null : pulumi.Output.create<String>(map['thesaurusId'] as String),
    );
  }
}

