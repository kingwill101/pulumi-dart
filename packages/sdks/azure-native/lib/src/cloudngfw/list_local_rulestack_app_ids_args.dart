// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_list_local_rulestack_app_ids_args_doc}
/// Arguments for listLocalRulestackAppIds.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_list_local_rulestack_app_ids_args_doc}
class ListLocalRulestackAppIdsArgs {
  final pulumi.Input<String?>? appIdVersion;
  final pulumi.Input<String?>? appPrefix;
  /// LocalRulestack resource name
  final pulumi.Input<String> localRulestackName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<String?>? skip;
  final pulumi.Input<int?>? top;

  /// Creates a new [ListLocalRulestackAppIdsArgs].
  /// [appIdVersion] Optional.
  /// [appPrefix] Optional.
  /// [localRulestackName] LocalRulestack resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [skip] Optional.
  /// [top] Optional.
  const ListLocalRulestackAppIdsArgs({
    this.appIdVersion,
    this.appPrefix,
    required this.localRulestackName,
    required this.resourceGroupName,
    this.skip,
    this.top,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appIdVersion': ?appIdVersion,
      'appPrefix': ?appPrefix,
      'localRulestackName': localRulestackName,
      'resourceGroupName': resourceGroupName,
      'skip': ?skip,
      'top': ?top,
    };
  }

  factory ListLocalRulestackAppIdsArgs.fromMap(Map<String, dynamic> map) {
    return ListLocalRulestackAppIdsArgs(
      appIdVersion: (() { final guardedValue = map['appIdVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appPrefix: (() { final guardedValue = map['appPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localRulestackName: pulumi.Input.fromValue(map['localRulestackName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      skip: (() { final guardedValue = map['skip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      top: (() { final guardedValue = map['top']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
