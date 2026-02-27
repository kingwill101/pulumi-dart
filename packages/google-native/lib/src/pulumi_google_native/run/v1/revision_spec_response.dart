// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'container_response2.dart';
import 'local_object_reference_response.dart';
import 'volume_response5.dart';

/// RevisionSpec holds the desired state of the Revision (from the client).
class RevisionSpecResponse {
  /// ContainerConcurrency specifies the maximum allowed in-flight (concurrent) requests per container instance of the Revision. If not specified, defaults to 80.
  final int containerConcurrency;

  /// Containers holds the single container that defines the unit of execution for this Revision. In the context of a Revision, we disallow a number of fields on this Container, including: name and lifecycle. In Cloud Run, only a single container may be provided.
  final List<ContainerResponse2> containers;

  /// Not supported by Cloud Run.
  final bool enableServiceLinks;

  /// Not supported by Cloud Run.
  final List<LocalObjectReferenceResponse> imagePullSecrets;

  /// Email address of the IAM service account associated with the revision of the service. The service account represents the identity of the running revision, and determines what permissions the revision has. If not provided, the revision will use the project's default service account.
  final String serviceAccountName;

  /// TimeoutSeconds holds the max duration the instance is allowed for responding to a request. Cloud Run: defaults to 300 seconds (5 minutes). Maximum allowed value is 3600 seconds (1 hour).
  final int timeoutSeconds;
  final List<VolumeResponse5> volumes;

  RevisionSpecResponse({
    required this.containerConcurrency,
    required this.containers,
    required this.enableServiceLinks,
    required this.imagePullSecrets,
    required this.serviceAccountName,
    required this.timeoutSeconds,
    required this.volumes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containerConcurrency'] = containerConcurrency;
    map['containers'] =
        Input.encodeList<ContainerResponse2, Map<String, dynamic>>(
            containers, (value) => value.toMap());
    map['enableServiceLinks'] = enableServiceLinks;
    map['imagePullSecrets'] =
        Input.encodeList<LocalObjectReferenceResponse, Map<String, dynamic>>(
            imagePullSecrets, (value) => value.toMap());
    map['serviceAccountName'] = serviceAccountName;
    map['timeoutSeconds'] = timeoutSeconds;
    map['volumes'] = Input.encodeList<VolumeResponse5, Map<String, dynamic>>(
        volumes, (value) => value.toMap());
    return map;
  }

  factory RevisionSpecResponse.fromMap(Map<String, dynamic> map) {
    return RevisionSpecResponse(
      containerConcurrency: map['containerConcurrency'] as int,
      containers: Input.decodeList<ContainerResponse2>(
          map['containers'],
          (value) => ContainerResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      enableServiceLinks: map['enableServiceLinks'] as bool,
      imagePullSecrets: Input.decodeList<LocalObjectReferenceResponse>(
          map['imagePullSecrets'],
          (value) => LocalObjectReferenceResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      serviceAccountName: map['serviceAccountName'] as String,
      timeoutSeconds: map['timeoutSeconds'] as int,
      volumes: Input.decodeList<VolumeResponse5>(
          map['volumes'],
          (value) =>
              VolumeResponse5.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
