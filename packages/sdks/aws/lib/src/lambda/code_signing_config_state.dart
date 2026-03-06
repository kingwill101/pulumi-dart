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
  const CodeSigningConfigState({
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
      allowedPublishers: (() { final guardedValue = map['allowedPublishers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CodeSigningConfigAllowedPublishers.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configId: (() { final guardedValue = map['configId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModified: (() { final guardedValue = map['lastModified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CodeSigningConfigPolicies.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

