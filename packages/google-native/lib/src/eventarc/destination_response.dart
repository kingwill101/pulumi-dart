// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_run_response.dart';
import 'gkeresponse.dart';
import 'http_endpoint_response.dart';
import 'network_config_response.dart';

/// Represents a target of an invocation over HTTP.
class DestinationResponse {
  /// The Cloud Function resource name. Cloud Functions V1 and V2 are supported. Format: `projects/{project}/locations/{location}/functions/{function}` This is a read-only field. Creating Cloud Functions V1/V2 triggers is only supported via the Cloud Functions product. An error will be returned if the user sets this value.
  final String cloudFunction;

  /// Cloud Run fully-managed resource that receives the events. The resource should be in the same project as the trigger.
  final CloudRunResponse cloudRun;

  /// A GKE service capable of receiving events. The service should be running in the same project as the trigger.
  final GKEResponse gke;

  /// An HTTP endpoint destination described by an URI.
  final HttpEndpointResponse httpEndpoint;

  /// Optional. Network config is used to configure how Eventarc resolves and connect to a destination. This should only be used with HttpEndpoint destination type.
  final NetworkConfigResponse networkConfig;

  /// The resource name of the Workflow whose Executions are triggered by the events. The Workflow resource should be deployed in the same project as the trigger. Format: `projects/{project}/locations/{location}/workflows/{workflow}`
  final String workflow;

  /// Creates a new [DestinationResponse].
  /// [cloudFunction] The Cloud Function resource name. Cloud Functions V1 and V2 are supported. Format: `projects/{project}/locations/{location}/functions/{function}` This is a read-only field. Creating Cloud Functions V1/V2 triggers is only supported via the Cloud Functions product. An error will be returned if the user sets this value.
  /// [cloudRun] Cloud Run fully-managed resource that receives the events. The resource should be in the same project as the trigger.
  /// [gke] A GKE service capable of receiving events. The service should be running in the same project as the trigger.
  /// [httpEndpoint] An HTTP endpoint destination described by an URI.
  /// [networkConfig] Optional. Network config is used to configure how Eventarc resolves and connect to a destination. This should only be used with HttpEndpoint destination type.
  /// [workflow] The resource name of the Workflow whose Executions are triggered by the events. The Workflow resource should be deployed in the same project as the trigger. Format: `projects/{project}/locations/{location}/workflows/{workflow}`
  DestinationResponse({
    required this.cloudFunction,
    required this.cloudRun,
    required this.gke,
    required this.httpEndpoint,
    required this.networkConfig,
    required this.workflow,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudFunction'] = cloudFunction;
    map['cloudRun'] = cloudRun.toMap();
    map['gke'] = gke.toMap();
    map['httpEndpoint'] = httpEndpoint.toMap();
    map['networkConfig'] = networkConfig.toMap();
    map['workflow'] = workflow;
    return map;
  }

  factory DestinationResponse.fromMap(Map<String, dynamic> map) {
    return DestinationResponse(
      cloudFunction: map['cloudFunction'] as String,
      cloudRun: CloudRunResponse.fromMap(
          (map['cloudRun'] as Map).cast<String, dynamic>()),
      gke: GKEResponse.fromMap((map['gke'] as Map).cast<String, dynamic>()),
      httpEndpoint: HttpEndpointResponse.fromMap(
          (map['httpEndpoint'] as Map).cast<String, dynamic>()),
      networkConfig: NetworkConfigResponse.fromMap(
          (map['networkConfig'] as Map).cast<String, dynamic>()),
      workflow: map['workflow'] as String,
    );
  }
}
