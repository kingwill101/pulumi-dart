// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'persistence_configurations_response.dart';
import 'pipeline_response.dart';

/// Service Info.
class ServiceResponse {
  /// Persistence options to all pipelines in the instance.
  final PersistenceConfigurationsResponse? persistence;
  /// Pipelines belonging to a given pipeline group.
  final List<PipelineResponse> pipelines;

  /// Creates a new [ServiceResponse].
  /// [persistence] Persistence options to all pipelines in the instance.
  /// [pipelines] Pipelines belonging to a given pipeline group.
  ServiceResponse({
    this.persistence,
    required this.pipelines,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'persistence': ?persistence == null ? null : persistence!.toMap(),
      'pipelines': pulumi.Input.encodeList<PipelineResponse, Map<String, dynamic>>(pipelines, (value) => value.toMap()),
    };
  }

  factory ServiceResponse.fromMap(Map<String, dynamic> map) {
    return ServiceResponse(
      persistence: map['persistence'] == null ? null : PersistenceConfigurationsResponse.fromMap((map['persistence'] as Map).cast<String, dynamic>()),
      pipelines: pulumi.Input.decodeList<PipelineResponse>(map['pipelines'], (value) => PipelineResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

