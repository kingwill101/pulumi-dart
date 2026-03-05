// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceMeshExtraConfiguration {
  /// Whether the data plane KubeAPI access capability is enabled.
  final pulumi.Input<bool>? crAggregationEnabled;

  /// Creates a new [ServiceMeshExtraConfiguration].
  /// [crAggregationEnabled] Whether the data plane KubeAPI access capability is enabled.
  ServiceMeshExtraConfiguration({
    this.crAggregationEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crAggregationEnabled': ?crAggregationEnabled,
    };
  }

  factory ServiceMeshExtraConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceMeshExtraConfiguration(
      crAggregationEnabled: (() { final guardedValue = map['crAggregationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

