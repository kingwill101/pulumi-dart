// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_list_global_rulestack_security_services_args_doc}
/// Arguments for listGlobalRulestackSecurityServices.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_list_global_rulestack_security_services_args_doc}
class ListGlobalRulestackSecurityServicesArgs {
  /// GlobalRulestack resource name
  final pulumi.Input<String> globalRulestackName;
  final pulumi.Input<String>? skip;
  final pulumi.Input<int>? top;
  final pulumi.Input<String> type;

  /// Creates a new [ListGlobalRulestackSecurityServicesArgs].
  /// [globalRulestackName] GlobalRulestack resource name
  /// [skip] Optional.
  /// [top] Optional.
  /// [type] Required.
  ListGlobalRulestackSecurityServicesArgs({
    required String globalRulestackName,
    String? skip,
    int? top,
    required String type,
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

  factory ListGlobalRulestackSecurityServicesArgs.fromMap(Map<String, dynamic> map) {
    return ListGlobalRulestackSecurityServicesArgs(
      globalRulestackName: map['globalRulestackName'] as String,
      skip: map['skip'] == null ? null : map['skip'] as String,
      top: map['top'] == null ? null : map['top'] as int,
      type: map['type'] as String,
    );
  }
}

