// ignore_for_file: unused_element, unnecessary_cast


/// EndpointConditions represents the current condition of an endpoint.
class EndpointConditionsPatch {
  /// ready indicates that this endpoint is ready to receive traffic, according to whatever system is managing the endpoint. A nil value should be interpreted as "true". In general, an endpoint should be marked ready if it is serving and not terminating, though this can be overridden in some cases, such as when the associated Service has set the publishNotReadyAddresses flag.
  final bool? ready;
  /// serving indicates that this endpoint is able to receive traffic, according to whatever system is managing the endpoint. For endpoints backed by pods, the EndpointSlice controller will mark the endpoint as serving if the pod's Ready condition is True. A nil value should be interpreted as "true".
  final bool? serving;
  /// terminating indicates that this endpoint is terminating. A nil value should be interpreted as "false".
  final bool? terminating;

  /// Creates a new [EndpointConditionsPatch].
  /// [ready] ready indicates that this endpoint is ready to receive traffic, according to whatever system is managing the endpoint. A nil value should be interpreted as "true". In general, an endpoint should be marked ready if it is serving and not terminating, though this can be overridden in some cases, such as when the associated Service has set the publishNotReadyAddresses flag.
  /// [serving] serving indicates that this endpoint is able to receive traffic, according to whatever system is managing the endpoint. For endpoints backed by pods, the EndpointSlice controller will mark the endpoint as serving if the pod's Ready condition is True. A nil value should be interpreted as "true".
  /// [terminating] terminating indicates that this endpoint is terminating. A nil value should be interpreted as "false".
  EndpointConditionsPatch({
    this.ready,
    this.serving,
    this.terminating,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ready': ?ready,
      'serving': ?serving,
      'terminating': ?terminating,
    };
  }

  factory EndpointConditionsPatch.fromMap(Map<String, dynamic> map) {
    return EndpointConditionsPatch(
      ready: map['ready'] == null ? null : map['ready'] as bool,
      serving: map['serving'] == null ? null : map['serving'] as bool,
      terminating: map['terminating'] == null ? null : map['terminating'] as bool,
    );
  }
}

