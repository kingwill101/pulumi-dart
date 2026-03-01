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
    pulumi.Output<String>? appIdVersion,
    pulumi.Output<String>? appPrefix,
    required pulumi.Output<String> localRulestackName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? skip,
    pulumi.Output<int>? top,
  }) :
      appIdVersion = pulumi.Input.asOptionalInput<String>(appIdVersion),
      appPrefix = pulumi.Input.asOptionalInput<String>(appPrefix),
      localRulestackName = pulumi.Input.asInput<String>(localRulestackName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      skip = pulumi.Input.asOptionalInput<String>(skip),
      top = pulumi.Input.asOptionalInput<int>(top);

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
      appIdVersion: map['appIdVersion'] == null ? null : pulumi.Output.create<String>(map['appIdVersion'] as String),
      appPrefix: map['appPrefix'] == null ? null : pulumi.Output.create<String>(map['appPrefix'] as String),
      localRulestackName: pulumi.Output.create<String>(map['localRulestackName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skip: map['skip'] == null ? null : pulumi.Output.create<String>(map['skip'] as String),
      top: map['top'] == null ? null : pulumi.Output.create<int>(map['top'] as int),
    );
  }
}

