// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'thesaurus_source_s3_path.dart';

/// {@template pulumi_kendra_thesaurus_thesaurus_args_doc}
/// The set of arguments for Thesaurus.
/// {@endtemplate}
/// {@macro pulumi_kendra_thesaurus_thesaurus_args_doc}
class ThesaurusArgs {
  /// Description for a thesaurus.
  final pulumi.Input<String?>? description;
  /// Identifier of the index for a thesaurus.
  final pulumi.Input<String> indexId;
  /// Name for the thesaurus.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// IAM (Identity and Access Management) role used to access the thesaurus file in S3.
  final pulumi.Input<String> roleArn;
  /// S3 path where your thesaurus file sits in S3. Detailed below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<ThesaurusSourceS3Path> sourceS3Path;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ThesaurusArgs].
  /// [description] Description for a thesaurus.
  /// [indexId] Identifier of the index for a thesaurus.
  /// [name] Name for the thesaurus.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] IAM (Identity and Access Management) role used to access the thesaurus file in S3.
  /// [sourceS3Path] S3 path where your thesaurus file sits in S3. Detailed below.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const ThesaurusArgs({
    this.description,
    required this.indexId,
    this.name,
    this.region,
    required this.roleArn,
    required this.sourceS3Path,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'indexId': indexId,
      'name': ?name,
      'region': ?region,
      'roleArn': roleArn,
      'sourceS3Path': pulumi.Input.mapInputValue<ThesaurusSourceS3Path, Map<String, dynamic>>(sourceS3Path, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ThesaurusArgs.fromMap(Map<String, dynamic> map) {
    return ThesaurusArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      indexId: pulumi.Input.fromValue(map['indexId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      sourceS3Path: pulumi.Input.fromValue(ThesaurusSourceS3Path.fromMap((map['sourceS3Path']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
