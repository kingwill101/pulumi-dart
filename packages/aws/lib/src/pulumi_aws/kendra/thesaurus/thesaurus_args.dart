// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../thesaurus_source_s3_path/thesaurus_source_s3_path.dart';

/// The set of arguments for Thesaurus.
class ThesaurusArgs {
  final pulumi.Input<String>? description;

  /// The identifier of the index for a thesaurus.
  final pulumi.Input<String> indexId;

  /// The name for the thesaurus.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  final pulumi.Input<String>? region;

  /// The IAM (Identity and Access Management) role used to access the thesaurus file in S3.
  final pulumi.Input<String> roleArn;

  /// The S3 path where your thesaurus file sits in S3. Detailed below.
  final pulumi.Input<ThesaurusSourceS3Path> sourceS3Path;
  final pulumi.Input<Map<String, String>>? tags;

  ThesaurusArgs({
    this.description,
    required this.indexId,
    this.name,
    this.region,
    required this.roleArn,
    required this.sourceS3Path,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['indexId'] = indexId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    map['sourceS3Path'] =
        pulumi.Input.mapInputValue<ThesaurusSourceS3Path, Map<String, dynamic>>(
            sourceS3Path, (value) => value.toMap());
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ThesaurusArgs.fromMap(Map<String, dynamic> map) {
    return ThesaurusArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      indexId: pulumi.Input.asInput<String>(map['indexId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      roleArn: pulumi.Input.asInput<String>(map['roleArn']),
      sourceS3Path:
          pulumi.Input.asInput<ThesaurusSourceS3Path>(map['sourceS3Path']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
