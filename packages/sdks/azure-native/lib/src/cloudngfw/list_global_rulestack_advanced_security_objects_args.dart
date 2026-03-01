// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_list_global_rulestack_advanced_security_objects_args_doc}
/// Arguments for listGlobalRulestackAdvancedSecurityObjects.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_list_global_rulestack_advanced_security_objects_args_doc}
class ListGlobalRulestackAdvancedSecurityObjectsArgs {
  /// GlobalRulestack resource name
  final pulumi.Input<String> globalRulestackName;
  final pulumi.Input<String>? skip;
  final pulumi.Input<int>? top;
  final pulumi.Input<String> type;

  /// Creates a new [ListGlobalRulestackAdvancedSecurityObjectsArgs].
  /// [globalRulestackName] GlobalRulestack resource name
  /// [skip] Optional.
  /// [top] Optional.
  /// [type] Required.
  ListGlobalRulestackAdvancedSecurityObjectsArgs({
    required pulumi.Output<String> globalRulestackName,
    pulumi.Output<String>? skip,
    pulumi.Output<int>? top,
    required pulumi.Output<String> type,
  }) :
      globalRulestackName = pulumi.Input.asInput<String>(globalRulestackName),
      skip = pulumi.Input.asOptionalInput<String>(skip),
      top = pulumi.Input.asOptionalInput<int>(top),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalRulestackName': globalRulestackName,
      'skip': ?skip,
      'top': ?top,
      'type': type,
    };
  }

  factory ListGlobalRulestackAdvancedSecurityObjectsArgs.fromMap(Map<String, dynamic> map) {
    return ListGlobalRulestackAdvancedSecurityObjectsArgs(
      globalRulestackName: pulumi.Output.create<String>(map['globalRulestackName'] as String),
      skip: map['skip'] == null ? null : pulumi.Output.create<String>(map['skip'] as String),
      top: map['top'] == null ? null : pulumi.Output.create<int>(map['top'] as int),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

