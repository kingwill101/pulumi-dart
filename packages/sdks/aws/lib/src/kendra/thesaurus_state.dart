// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'thesaurus_source_s3_path.dart';

/// Input properties used for looking up and filtering Thesaurus resources.
class ThesaurusState {
  /// ARN of the thesaurus.
  final pulumi.Input<String?>? arn;
  final pulumi.Input<String?>? description;
  /// The identifier of the index for a thesaurus.
  final pulumi.Input<String?>? indexId;
  /// The name for the thesaurus.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  final pulumi.Input<String?>? region;
  /// The IAM (Identity and Access Management) role used to access the thesaurus file in S3.
  final pulumi.Input<String?>? roleArn;
  /// The S3 path where your thesaurus file sits in S3. Detailed below.
  final pulumi.Input<ThesaurusSourceS3Path?>? sourceS3Path;
  /// The current status of the thesaurus.
  final pulumi.Input<String?>? status;
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<String?>? thesaurusId;

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
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [thesaurusId] Optional.
  const ThesaurusState({
    this.arn,
    this.description,
    this.indexId,
    this.name,
    this.region,
    this.roleArn,
    this.sourceS3Path,
    this.status,
    this.tags,
    this.tagsAll,
    this.thesaurusId,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      indexId: (() { final guardedValue = map['indexId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceS3Path: (() { final guardedValue = map['sourceS3Path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ThesaurusSourceS3Path.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      thesaurusId: (() { final guardedValue = map['thesaurusId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
