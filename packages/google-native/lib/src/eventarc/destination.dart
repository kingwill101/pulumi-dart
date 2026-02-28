// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_run.dart';
import 'gke.dart';
import 'http_endpoint.dart';
import 'network_config.dart';

/// Represents a target of an invocation over HTTP.
class Destination {
  /// The Cloud Function resource name. Cloud Functions V1 and V2 are supported. Format: `projects/{project}/locations/{location}/functions/{function}` This is a read-only field. Creating Cloud Functions V1/V2 triggers is only supported via the Cloud Functions product. An error will be returned if the user sets this value.
  final String? cloudFunction;
  /// Cloud Run fully-managed resource that receives the events. The resource should be in the same project as the trigger.
  final CloudRun? cloudRun;
  /// A GKE service capable of receiving events. The service should be running in the same project as the trigger.
  final GKE? gke;
  /// An HTTP endpoint destination described by an URI.
  final HttpEndpoint? httpEndpoint;
  /// Optional. Network config is used to configure how Eventarc resolves and connect to a destination. This should only be used with HttpEndpoint destination type.
  final NetworkConfig? networkConfig;
  /// The resource name of the Workflow whose Executions are triggered by the events. The Workflow resource should be deployed in the same project as the trigger. Format: `projects/{project}/locations/{location}/workflows/{workflow}`
  final String? workflow;

  /// Creates a new [Destination].
  /// [cloudFunction] The Cloud Function resource name. Cloud Functions V1 and V2 are supported. Format: `projects/{project}/locations/{location}/functions/{function}` This is a read-only field. Creating Cloud Functions V1/V2 triggers is only supported via the Cloud Functions product. An error will be returned if the user sets this value.
  /// [cloudRun] Cloud Run fully-managed resource that receives the events. The resource should be in the same project as the trigger.
  /// [gke] A GKE service capable of receiving events. The service should be running in the same project as the trigger.
  /// [httpEndpoint] An HTTP endpoint destination described by an URI.
  /// [networkConfig] Optional. Network config is used to configure how Eventarc resolves and connect to a destination. This should only be used with HttpEndpoint destination type.
  /// [workflow] The resource name of the Workflow whose Executions are triggered by the events. The Workflow resource should be deployed in the same project as the trigger. Format: `projects/{project}/locations/{location}/workflows/{workflow}`
  Destination({
    this.cloudFunction,
    this.cloudRun,
    this.gke,
    this.httpEndpoint,
    this.networkConfig,
    this.workflow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudFunction': ?cloudFunction,
      'cloudRun': ?cloudRun == null ? null : cloudRun!.toMap(),
      'gke': ?gke == null ? null : gke!.toMap(),
      'httpEndpoint': ?httpEndpoint == null ? null : httpEndpoint!.toMap(),
      'networkConfig': ?networkConfig == null ? null : networkConfig!.toMap(),
      'workflow': ?workflow,
    };
  }

  factory Destination.fromMap(Map<String, dynamic> map) {
    return Destination(
      cloudFunction: map['cloudFunction'] == null ? null : map['cloudFunction'] as String,
      cloudRun: map['cloudRun'] == null ? null : CloudRun.fromMap((map['cloudRun'] as Map).cast<String, dynamic>()),
      gke: map['gke'] == null ? null : GKE.fromMap((map['gke'] as Map).cast<String, dynamic>()),
      httpEndpoint: map['httpEndpoint'] == null ? null : HttpEndpoint.fromMap((map['httpEndpoint'] as Map).cast<String, dynamic>()),
      networkConfig: map['networkConfig'] == null ? null : NetworkConfig.fromMap((map['networkConfig'] as Map).cast<String, dynamic>()),
      workflow: map['workflow'] == null ? null : map['workflow'] as String,
    );
  }
}

