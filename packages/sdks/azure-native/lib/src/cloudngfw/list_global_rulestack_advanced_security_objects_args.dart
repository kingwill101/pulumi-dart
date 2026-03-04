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
    required this.globalRulestackName,
    this.skip,
    this.top,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalRulestackName': globalRulestackName,
      'skip': ?skip,
      'top': ?top,
      'type': type,
    };
  }

  factory ListGlobalRulestackAdvancedSecurityObjectsArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListGlobalRulestackAdvancedSecurityObjectsArgs(
      globalRulestackName: pulumi.Input.fromValue(
        map['globalRulestackName'] as String,
      ),
      skip: (() {
        final guardedValue = map['skip'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      top: (() {
        final guardedValue = map['top'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
