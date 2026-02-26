// ignore_for_file: unused_element, unnecessary_cast

import '../trigger_destination_cloud_run_service/trigger_destination_cloud_run_service.dart';
import '../trigger_destination_gke/trigger_destination_gke.dart';
import '../trigger_destination_http_endpoint/trigger_destination_http_endpoint.dart';
import '../trigger_destination_network_config/trigger_destination_network_config.dart';

class TriggerDestination {
  /// (Output)
  /// The Cloud Function resource name. Only Cloud Functions V2 is supported. Format projects/{project}/locations/{location}/functions/{function} This is a read-only field. [WARNING] Creating Cloud Functions V2 triggers is only supported via the Cloud Functions product. An error will be returned if the user sets this value.
  final String? cloudFunction;

  /// Cloud Run fully-managed service that receives the events. The service should be running in the same project of the trigger.
  /// Structure is documented below.
  final TriggerDestinationCloudRunService? cloudRunService;

  /// A GKE service capable of receiving events. The service should be running in the same project as the trigger.
  /// Structure is documented below.
  final TriggerDestinationGke? gke;

  /// An HTTP endpoint destination described by an URI.
  /// Structure is documented below.
  final TriggerDestinationHttpEndpoint? httpEndpoint;

  /// Optional. Network config is used to configure how Eventarc resolves and connect to a destination. This should only be used with HttpEndpoint destination type.
  /// Structure is documented below.
  final TriggerDestinationNetworkConfig? networkConfig;

  /// The resource name of the Workflow whose Executions are triggered by the events. The Workflow resource should be deployed in the same project as the trigger. Format: `projects/{project}/locations/{location}/workflows/{workflow}`
  final String? workflow;

  TriggerDestination({
    this.cloudFunction,
    this.cloudRunService,
    this.gke,
    this.httpEndpoint,
    this.networkConfig,
    this.workflow,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudFunctionValue = cloudFunction;
    if (cloudFunctionValue != null) {
      map['cloudFunction'] = cloudFunctionValue;
    }
    final cloudRunServiceValue = cloudRunService;
    if (cloudRunServiceValue != null) {
      map['cloudRunService'] = cloudRunServiceValue.toMap();
    }
    final gkeValue = gke;
    if (gkeValue != null) {
      map['gke'] = gkeValue.toMap();
    }
    final httpEndpointValue = httpEndpoint;
    if (httpEndpointValue != null) {
      map['httpEndpoint'] = httpEndpointValue.toMap();
    }
    final networkConfigValue = networkConfig;
    if (networkConfigValue != null) {
      map['networkConfig'] = networkConfigValue.toMap();
    }
    final workflowValue = workflow;
    if (workflowValue != null) {
      map['workflow'] = workflowValue;
    }
    return map;
  }

  factory TriggerDestination.fromMap(Map<String, dynamic> map) {
    return TriggerDestination(
      cloudFunction:
          map['cloudFunction'] == null ? null : map['cloudFunction'] as String,
      cloudRunService: map['cloudRunService'] == null
          ? null
          : TriggerDestinationCloudRunService.fromMap(
              (map['cloudRunService'] as Map).cast<String, dynamic>()),
      gke: map['gke'] == null
          ? null
          : TriggerDestinationGke.fromMap(
              (map['gke'] as Map).cast<String, dynamic>()),
      httpEndpoint: map['httpEndpoint'] == null
          ? null
          : TriggerDestinationHttpEndpoint.fromMap(
              (map['httpEndpoint'] as Map).cast<String, dynamic>()),
      networkConfig: map['networkConfig'] == null
          ? null
          : TriggerDestinationNetworkConfig.fromMap(
              (map['networkConfig'] as Map).cast<String, dynamic>()),
      workflow: map['workflow'] == null ? null : map['workflow'] as String,
    );
  }
}
