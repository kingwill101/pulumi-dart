// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RoutingRuleActionInvokeApi {
  /// Action to invoke a stage of a target API. Only REST APIs are supported.
  final pulumi.Input<String> apiId;
  /// Action to invoke a stage of a target API. Only REST APIs are supported.
  final pulumi.Input<String> stage;
  /// Action to invoke a stage of a target API. Only REST APIs are supported.
  final pulumi.Input<bool?>? stripBasePath;

  /// Creates a new [RoutingRuleActionInvokeApi].
  /// [apiId] Action to invoke a stage of a target API. Only REST APIs are supported.
  /// [stage] Action to invoke a stage of a target API. Only REST APIs are supported.
  /// [stripBasePath] Action to invoke a stage of a target API. Only REST APIs are supported.
  const RoutingRuleActionInvokeApi({
    required this.apiId,
    required this.stage,
    this.stripBasePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'stage': stage,
      'stripBasePath': ?stripBasePath,
    };
  }

  factory RoutingRuleActionInvokeApi.fromMap(Map<String, dynamic> map) {
    return RoutingRuleActionInvokeApi(
      apiId: pulumi.Input.fromValue(map['apiId'] as String),
      stage: pulumi.Input.fromValue(map['stage'] as String),
      stripBasePath: (() { final guardedValue = map['stripBasePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
