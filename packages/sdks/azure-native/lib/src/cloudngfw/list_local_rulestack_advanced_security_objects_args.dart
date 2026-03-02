// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_list_local_rulestack_advanced_security_objects_args_doc}
/// Arguments for listLocalRulestackAdvancedSecurityObjects.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_list_local_rulestack_advanced_security_objects_args_doc}
class ListLocalRulestackAdvancedSecurityObjectsArgs {
  /// LocalRulestack resource name
  final pulumi.Input<String> localRulestackName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<String>? skip;
  final pulumi.Input<int>? top;
  final pulumi.Input<String> type;

  /// Creates a new [ListLocalRulestackAdvancedSecurityObjectsArgs].
  /// [localRulestackName] LocalRulestack resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [skip] Optional.
  /// [top] Optional.
  /// [type] Required.
  ListLocalRulestackAdvancedSecurityObjectsArgs({
    required this.localRulestackName,
    required this.resourceGroupName,
    this.skip,
    this.top,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localRulestackName': localRulestackName,
      'resourceGroupName': resourceGroupName,
      'skip': ?skip,
      'top': ?top,
      'type': type,
    };
  }

  factory ListLocalRulestackAdvancedSecurityObjectsArgs.fromMap(Map<String, dynamic> map) {
    return ListLocalRulestackAdvancedSecurityObjectsArgs(
      localRulestackName: (map['localRulestackName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      skip: map['skip'] == null ? null : (map['skip']! as String).input(),
      top: map['top'] == null ? null : (map['top']! as int).input(),
      type: (map['type'] as String).input(),
    );
  }
}

