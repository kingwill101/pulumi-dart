// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../code_signing_config_allowed_publishers/code_signing_config_allowed_publishers.dart';
import '../code_signing_config_policies/code_signing_config_policies.dart';

/// The set of arguments for CodeSigningConfig.
class CodeSigningConfigArgs {
  /// Configuration block of allowed publishers as signing profiles for this code signing configuration. See below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<CodeSigningConfigAllowedPublishers> allowedPublishers;

  /// Descriptive name for this code signing configuration.
  final pulumi.Input<String>? description;

  /// Configuration block of code signing policies that define the actions to take if the validation checks fail. See below.
  final pulumi.Input<CodeSigningConfigPolicies>? policies;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags to assign to the object. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  CodeSigningConfigArgs({
    required this.allowedPublishers,
    this.description,
    this.policies,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedPublishers'] = pulumi.Input.mapInputValue<
        CodeSigningConfigAllowedPublishers,
        Map<String, dynamic>>(allowedPublishers, (value) => value.toMap());
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final policiesValue = policies;
    if (policiesValue != null) {
      map['policies'] = pulumi.Input.mapOptionalInputValue<
          CodeSigningConfigPolicies,
          Map<String, dynamic>>(policiesValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory CodeSigningConfigArgs.fromMap(Map<String, dynamic> map) {
    return CodeSigningConfigArgs(
      allowedPublishers:
          pulumi.Input.asInput<CodeSigningConfigAllowedPublishers>(
              map['allowedPublishers']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      policies: pulumi.Input.asOptionalInput<CodeSigningConfigPolicies>(
          map['policies']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
