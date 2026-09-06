// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'persistence_configurations.dart';
import 'pipeline.dart';

/// Service Info.
class Service {
  /// Persistence options to all pipelines in the instance.
  final pulumi.Input<PersistenceConfigurations?>? persistence;
  /// Pipelines belonging to a given pipeline group.
  final pulumi.Input<List<Pipeline>> pipelines;

  /// Creates a new [Service].
  /// [persistence] Persistence options to all pipelines in the instance.
  /// [pipelines] Pipelines belonging to a given pipeline group.
  const Service({
    this.persistence,
    required this.pipelines,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'persistence': ?pulumi.Input.mapOptionalInputValue<PersistenceConfigurations, Map<String, dynamic>>(persistence, (value) => value.toMap()),
      'pipelines': pulumi.Input.mapInputValue<List<Pipeline>, List<Map<String, dynamic>>>(pipelines, (value) => pulumi.Input.encodeList<Pipeline, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory Service.fromMap(Map<String, dynamic> map) {
    return Service(
      persistence: (() { final guardedValue = map['persistence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PersistenceConfigurations.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pipelines: pulumi.Input.fromValue(pulumi.Input.decodeList<Pipeline>(map['pipelines']!, (value) => Pipeline.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
