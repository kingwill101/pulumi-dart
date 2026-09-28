// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RoutingRuleActionInvokeApi {
  /// API identifier of the target API.
  final pulumi.Input<String> apiId;
  /// Name of the target stage.
  final pulumi.Input<String> stage;
  /// Whether to strip the base path when forwarding the request to the target API.
  final pulumi.Input<bool?>? stripBasePath;

  /// Creates a new [RoutingRuleActionInvokeApi].
  /// [apiId] API identifier of the target API.
  /// [stage] Name of the target stage.
  /// [stripBasePath] Whether to strip the base path when forwarding the request to the target API.
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
