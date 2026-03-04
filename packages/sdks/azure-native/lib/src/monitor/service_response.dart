// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'persistence_configurations_response.dart';
import 'pipeline_response.dart';

/// Service Info.
class ServiceResponse {
  /// Persistence options to all pipelines in the instance.
  final pulumi.Input<PersistenceConfigurationsResponse>? persistence;

  /// Pipelines belonging to a given pipeline group.
  final pulumi.Input<List<PipelineResponse>> pipelines;

  /// Creates a new [ServiceResponse].
  /// [persistence] Persistence options to all pipelines in the instance.
  /// [pipelines] Pipelines belonging to a given pipeline group.
  ServiceResponse({this.persistence, required this.pipelines});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'persistence':
          ?pulumi.Input.mapOptionalInputValue<
            PersistenceConfigurationsResponse,
            Map<String, dynamic>
          >(persistence, (value) => value.toMap()),
      'pipelines':
          pulumi.Input.mapInputValue<
            List<PipelineResponse>,
            List<Map<String, dynamic>>
          >(
            pipelines,
            (value) =>
                pulumi.Input.encodeList<PipelineResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory ServiceResponse.fromMap(Map<String, dynamic> map) {
    return ServiceResponse(
      persistence: (() {
        final guardedValue = map['persistence'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PersistenceConfigurationsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      pipelines: pulumi.Input.fromValue(
        pulumi.Input.decodeList<PipelineResponse>(
          map['pipelines']!,
          (value) =>
              PipelineResponse.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
    );
  }
}
