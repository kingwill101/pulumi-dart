// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RoutingRuleActionInvokeApi {
  /// Action to invoke a stage of a target API. Only REST APIs are supported.
  final pulumi.Input<String> apiId;
  /// Action to invoke a stage of a target API. Only REST APIs are supported.
  final pulumi.Input<String> stage;
  /// Action to invoke a stage of a target API. Only REST APIs are supported.
  final pulumi.Input<bool>? stripBasePath;

  /// Creates a new [RoutingRuleActionInvokeApi].
  /// [apiId] Action to invoke a stage of a target API. Only REST APIs are supported.
  /// [stage] Action to invoke a stage of a target API. Only REST APIs are supported.
  /// [stripBasePath] Action to invoke a stage of a target API. Only REST APIs are supported.
  RoutingRuleActionInvokeApi({
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
      apiId: (map['apiId'] as String).input(),
      stage: (map['stage'] as String).input(),
      stripBasePath: map['stripBasePath'] == null ? null : (map['stripBasePath'] as bool).input(),
    );
  }
}

