// ignore_for_file: unused_element, unnecessary_cast


class AliasRoutingConfig {
  /// Map that defines the proportion of events that should be sent to different versions of a Lambda function.
  final Map<String, double>? additionalVersionWeights;

  /// Creates a new [AliasRoutingConfig].
  /// [additionalVersionWeights] Map that defines the proportion of events that should be sent to different versions of a Lambda function.
  AliasRoutingConfig({
    this.additionalVersionWeights,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalVersionWeights': ?additionalVersionWeights,
    };
  }

  factory AliasRoutingConfig.fromMap(Map<String, dynamic> map) {
    return AliasRoutingConfig(
      additionalVersionWeights: map['additionalVersionWeights'] == null ? null : (map['additionalVersionWeights'] as Map).cast<String, double>(),
    );
  }
}

