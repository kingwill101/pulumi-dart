// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../application_url_dispatch_rules_dispatch_rule/application_url_dispatch_rules_dispatch_rule.dart';

/// The set of arguments for ApplicationUrlDispatchRules.
class ApplicationUrlDispatchRulesArgs {
  /// Rules to match an HTTP request and dispatch that request to a service.
  /// Structure is documented below.
  final Input<List<ApplicationUrlDispatchRulesDispatchRule>> dispatchRules;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  ApplicationUrlDispatchRulesArgs({
    required this.dispatchRules,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dispatchRules'] = Input.mapInputValue<
            List<ApplicationUrlDispatchRulesDispatchRule>,
            List<Map<String, dynamic>>>(
        dispatchRules,
        (value) => Input.encodeList<ApplicationUrlDispatchRulesDispatchRule,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory ApplicationUrlDispatchRulesArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationUrlDispatchRulesArgs(
      dispatchRules:
          Input.asInput<List<ApplicationUrlDispatchRulesDispatchRule>>(
              map['dispatchRules']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
