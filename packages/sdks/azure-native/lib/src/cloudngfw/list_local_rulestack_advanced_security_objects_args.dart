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
    required pulumi.Output<String> localRulestackName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? skip,
    pulumi.Output<int>? top,
    required pulumi.Output<String> type,
  }) :
      localRulestackName = pulumi.Input.asInput<String>(localRulestackName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      skip = pulumi.Input.asOptionalInput<String>(skip),
      top = pulumi.Input.asOptionalInput<int>(top),
      type = pulumi.Input.asInput<String>(type);

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
      localRulestackName: pulumi.Output.create<String>(map['localRulestackName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skip: map['skip'] == null ? null : pulumi.Output.create<String>(map['skip'] as String),
      top: map['top'] == null ? null : pulumi.Output.create<int>(map['top'] as int),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

