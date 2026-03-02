// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_signing_config_allowed_publishers.dart';
import 'code_signing_config_policies.dart';

/// Input properties used for looking up and filtering CodeSigningConfig resources.
class CodeSigningConfigState {
  /// Configuration block of allowed publishers as signing profiles for this code signing configuration. See below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<CodeSigningConfigAllowedPublishers>? allowedPublishers;
  /// ARN of the code signing configuration.
  final pulumi.Input<String>? arn;
  /// Unique identifier for the code signing configuration.
  final pulumi.Input<String>? configId;
  /// Descriptive name for this code signing configuration.
  final pulumi.Input<String>? description;
  /// Date and time that the code signing configuration was last modified.
  final pulumi.Input<String>? lastModified;
  /// Configuration block of code signing policies that define the actions to take if the validation checks fail. See below.
  final pulumi.Input<CodeSigningConfigPolicies>? policies;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the object. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [CodeSigningConfigState].
  /// [allowedPublishers] Configuration block of allowed publishers as signing profiles for this code signing configuration. See below.
  /// [arn] ARN of the code signing configuration.
  /// [configId] Unique identifier for the code signing configuration.
  /// [description] Descriptive name for this code signing configuration.
  /// [lastModified] Date and time that the code signing configuration was last modified.
  /// [policies] Configuration block of code signing policies that define the actions to take if the validation checks fail. See below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the object. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  CodeSigningConfigState({
    this.allowedPublishers,
    this.arn,
    this.configId,
    this.description,
    this.lastModified,
    this.policies,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedPublishers': ?pulumi.Input.mapOptionalInputValue<CodeSigningConfigAllowedPublishers, Map<String, dynamic>>(allowedPublishers, (value) => value.toMap()),
      'arn': ?arn,
      'configId': ?configId,
      'description': ?description,
      'lastModified': ?lastModified,
      'policies': ?pulumi.Input.mapOptionalInputValue<CodeSigningConfigPolicies, Map<String, dynamic>>(policies, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory CodeSigningConfigState.fromMap(Map<String, dynamic> map) {
    return CodeSigningConfigState(
      allowedPublishers: map['allowedPublishers'] == null ? null : (CodeSigningConfigAllowedPublishers.fromMap((map['allowedPublishers'] as Map).cast<String, dynamic>())).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      configId: map['configId'] == null ? null : (map['configId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      lastModified: map['lastModified'] == null ? null : (map['lastModified'] as String).input(),
      policies: map['policies'] == null ? null : (CodeSigningConfigPolicies.fromMap((map['policies'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

