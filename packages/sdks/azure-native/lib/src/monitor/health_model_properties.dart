// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_discovery_settings.dart';

/// HealthModel properties
class HealthModelProperties {
  /// Configure to automatically discover entities from a given scope, such as a Service Group. The discovered entities will be linked to the root entity of the health model.
  final pulumi.Input<ModelDiscoverySettings>? discovery;

  /// Creates a new [HealthModelProperties].
  /// [discovery] Configure to automatically discover entities from a given scope, such as a Service Group. The discovered entities will be linked to the root entity of the health model.
  HealthModelProperties({
    this.discovery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discovery': ?pulumi.Input.mapOptionalInputValue<ModelDiscoverySettings, Map<String, dynamic>>(discovery, (value) => value.toMap()),
    };
  }

  factory HealthModelProperties.fromMap(Map<String, dynamic> map) {
    return HealthModelProperties(
      discovery: map['discovery'] == null ? null : (ModelDiscoverySettings.fromMap((map['discovery']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

