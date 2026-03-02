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

  factory ListGlobalRulestackSecurityServicesArgs.fromMap(Map<String, dynamic> map) {
    return ListGlobalRulestackSecurityServicesArgs(
      globalRulestackName: (map['globalRulestackName'] as String).input(),
      skip: map['skip'] == null ? null : (map['skip']! as String).input(),
      top: map['top'] == null ? null : (map['top']! as int).input(),
      type: (map['type'] as String).input(),
    );
  }
}

