// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_list_local_rulestack_app_ids_args_doc}
/// Arguments for listLocalRulestackAppIds.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_list_local_rulestack_app_ids_args_doc}
class ListLocalRulestackAppIdsArgs {
  final pulumi.Input<String>? appIdVersion;
  final pulumi.Input<String>? appPrefix;
  /// LocalRulestack resource name
  final pulumi.Input<String> localRulestackName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<String>? skip;
  final pulumi.Input<int>? top;

  /// Creates a new [ListLocalRulestackAppIdsArgs].
  /// [appIdVersion] Optional.
  /// [appPrefix] Optional.
  /// [localRulestackName] LocalRulestack resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [skip] Optional.
  /// [top] Optional.
  ListLocalRulestackAppIdsArgs({
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
      appIdVersion: map['appIdVersion'] == null ? null : (map['appIdVersion']! as String).input(),
      appPrefix: map['appPrefix'] == null ? null : (map['appPrefix']! as String).input(),
      localRulestackName: (map['localRulestackName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      skip: map['skip'] == null ? null : (map['skip']! as String).input(),
      top: map['top'] == null ? null : (map['top']! as int).input(),
    );
  }
}

