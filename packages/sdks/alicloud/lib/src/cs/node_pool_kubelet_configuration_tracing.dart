// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolKubeletConfigurationTracing {
  /// The endpoint of the collector.
  final pulumi.Input<String>? endpoint;

  /// Number of samples to be collected per million span.
  final pulumi.Input<String>? samplingRatePerMillion;

  /// Creates a new [NodePoolKubeletConfigurationTracing].
  /// [endpoint] The endpoint of the collector.
  /// [samplingRatePerMillion] Number of samples to be collected per million span.
  NodePoolKubeletConfigurationTracing({
    this.endpoint,
    this.samplingRatePerMillion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'samplingRatePerMillion': ?samplingRatePerMillion,
    };
  }

  factory NodePoolKubeletConfigurationTracing.fromMap(
    Map<String, dynamic> map,
  ) {
    return NodePoolKubeletConfigurationTracing(
      endpoint: (() {
        final guardedValue = map['endpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      samplingRatePerMillion: (() {
        final guardedValue = map['samplingRatePerMillion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
