// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_list_global_rulestack_app_ids_args_doc}
/// Arguments for listGlobalRulestackAppIds.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_list_global_rulestack_app_ids_args_doc}
class ListGlobalRulestackAppIdsArgs {
  final pulumi.Input<String>? appIdVersion;
  final pulumi.Input<String>? appPrefix;
  /// GlobalRulestack resource name
  final pulumi.Input<String> globalRulestackName;
  final pulumi.Input<String>? skip;
  final pulumi.Input<int>? top;

  /// Creates a new [ListGlobalRulestackAppIdsArgs].
  /// [appIdVersion] Optional.
  /// [appPrefix] Optional.
  /// [globalRulestackName] GlobalRulestack resource name
  /// [skip] Optional.
  /// [top] Optional.
  ListGlobalRulestackAppIdsArgs({
    pulumi.Output<String>? appIdVersion,
    pulumi.Output<String>? appPrefix,
    required pulumi.Output<String> globalRulestackName,
    pulumi.Output<String>? skip,
    pulumi.Output<int>? top,
  }) :
      appIdVersion = pulumi.Input.asOptionalInput<String>(appIdVersion),
      appPrefix = pulumi.Input.asOptionalInput<String>(appPrefix),
      globalRulestackName = pulumi.Input.asInput<String>(globalRulestackName),
      skip = pulumi.Input.asOptionalInput<String>(skip),
      top = pulumi.Input.asOptionalInput<int>(top);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appIdVersion': ?appIdVersion,
      'appPrefix': ?appPrefix,
      'globalRulestackName': globalRulestackName,
      'skip': ?skip,
      'top': ?top,
    };
  }

  factory ListGlobalRulestackAppIdsArgs.fromMap(Map<String, dynamic> map) {
    return ListGlobalRulestackAppIdsArgs(
      appIdVersion: map['appIdVersion'] == null ? null : pulumi.Output.create<String>(map['appIdVersion'] as String),
      appPrefix: map['appPrefix'] == null ? null : pulumi.Output.create<String>(map['appPrefix'] as String),
      globalRulestackName: pulumi.Output.create<String>(map['globalRulestackName'] as String),
      skip: map['skip'] == null ? null : pulumi.Output.create<String>(map['skip'] as String),
      top: map['top'] == null ? null : pulumi.Output.create<int>(map['top'] as int),
    );
  }
}

