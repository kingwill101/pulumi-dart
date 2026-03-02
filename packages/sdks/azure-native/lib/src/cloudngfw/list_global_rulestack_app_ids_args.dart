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
    this.appIdVersion,
    this.appPrefix,
    required this.globalRulestackName,
    this.skip,
    this.top,
  });

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
      appIdVersion: map['appIdVersion'] == null ? null : (map['appIdVersion'] as String).input(),
      appPrefix: map['appPrefix'] == null ? null : (map['appPrefix'] as String).input(),
      globalRulestackName: (map['globalRulestackName'] as String).input(),
      skip: map['skip'] == null ? null : (map['skip'] as String).input(),
      top: map['top'] == null ? null : (map['top'] as int).input(),
    );
  }
}

