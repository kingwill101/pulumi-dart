// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_signing_config_allowed_publishers.dart';
import 'code_signing_config_policies.dart';

/// {@template pulumi_lambda_code_signing_config_code_signing_config_args_doc}
/// The set of arguments for CodeSigningConfig.
/// {@endtemplate}
/// {@macro pulumi_lambda_code_signing_config_code_signing_config_args_doc}
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

  /// Creates a new [CodeSigningConfigArgs].
  /// [allowedPublishers] Configuration block of allowed publishers as signing profiles for this code signing configuration. See below.
  /// [description] Descriptive name for this code signing configuration.
  /// [policies] Configuration block of code signing policies that define the actions to take if the validation checks fail. See below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the object. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  CodeSigningConfigArgs({
    required this.allowedPublishers,
    this.description,
    this.policies,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedPublishers': pulumi.Input.mapInputValue<CodeSigningConfigAllowedPublishers, Map<String, dynamic>>(allowedPublishers, (value) => value.toMap()),
      'description': ?description,
      'policies': ?pulumi.Input.mapOptionalInputValue<CodeSigningConfigPolicies, Map<String, dynamic>>(policies, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory CodeSigningConfigArgs.fromMap(Map<String, dynamic> map) {
    return CodeSigningConfigArgs(
      allowedPublishers: (CodeSigningConfigAllowedPublishers.fromMap((map['allowedPublishers'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      policies: map['policies'] == null ? null : (CodeSigningConfigPolicies.fromMap((map['policies'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

