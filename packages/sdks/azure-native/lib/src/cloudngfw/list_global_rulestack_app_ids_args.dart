// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_list_global_rulestack_app_ids_args_doc}
/// Arguments for listGlobalRulestackAppIds.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_list_global_rulestack_app_ids_args_doc}
class ListGlobalRulestackAppIdsArgs {
  final pulumi.Input<String?>? appIdVersion;
  final pulumi.Input<String?>? appPrefix;
  /// GlobalRulestack resource name
  final pulumi.Input<String> globalRulestackName;
  final pulumi.Input<String?>? skip;
  final pulumi.Input<int?>? top;

  /// Creates a new [ListGlobalRulestackAppIdsArgs].
  /// [appIdVersion] Optional.
  /// [appPrefix] Optional.
  /// [globalRulestackName] GlobalRulestack resource name
  /// [skip] Optional.
  /// [top] Optional.
  const ListGlobalRulestackAppIdsArgs({
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
      appIdVersion: (() { final guardedValue = map['appIdVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appPrefix: (() { final guardedValue = map['appPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalRulestackName: pulumi.Input.fromValue(map['globalRulestackName'] as String),
      skip: (() { final guardedValue = map['skip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      top: (() { final guardedValue = map['top']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
