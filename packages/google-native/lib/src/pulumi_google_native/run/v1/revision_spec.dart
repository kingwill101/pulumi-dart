// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'container2.dart';
import 'local_object_reference.dart';
import 'volume5.dart';

/// RevisionSpec holds the desired state of the Revision (from the client).
class RevisionSpec {
  /// ContainerConcurrency specifies the maximum allowed in-flight (concurrent) requests per container instance of the Revision. If not specified, defaults to 80.
  final int? containerConcurrency;

  /// Containers holds the single container that defines the unit of execution for this Revision. In the context of a Revision, we disallow a number of fields on this Container, including: name and lifecycle. In Cloud Run, only a single container may be provided.
  final List<Container2>? containers;

  /// Not supported by Cloud Run.
  final bool? enableServiceLinks;

  /// Not supported by Cloud Run.
  final List<LocalObjectReference>? imagePullSecrets;

  /// Email address of the IAM service account associated with the revision of the service. The service account represents the identity of the running revision, and determines what permissions the revision has. If not provided, the revision will use the project's default service account.
  final String? serviceAccountName;

  /// TimeoutSeconds holds the max duration the instance is allowed for responding to a request. Cloud Run: defaults to 300 seconds (5 minutes). Maximum allowed value is 3600 seconds (1 hour).
  final int? timeoutSeconds;
  final List<Volume5>? volumes;

  RevisionSpec({
    this.containerConcurrency,
    this.containers,
    this.enableServiceLinks,
    this.imagePullSecrets,
    this.serviceAccountName,
    this.timeoutSeconds,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containerConcurrencyValue = containerConcurrency;
    if (containerConcurrencyValue != null) {
      map['containerConcurrency'] = containerConcurrencyValue;
    }
    final containersValue = containers;
    if (containersValue != null) {
      map['containers'] = Input.encodeList<Container2, Map<String, dynamic>>(
          containersValue, (value) => value.toMap());
    }
    final enableServiceLinksValue = enableServiceLinks;
    if (enableServiceLinksValue != null) {
      map['enableServiceLinks'] = enableServiceLinksValue;
    }
    final imagePullSecretsValue = imagePullSecrets;
    if (imagePullSecretsValue != null) {
      map['imagePullSecrets'] =
          Input.encodeList<LocalObjectReference, Map<String, dynamic>>(
              imagePullSecretsValue, (value) => value.toMap());
    }
    final serviceAccountNameValue = serviceAccountName;
    if (serviceAccountNameValue != null) {
      map['serviceAccountName'] = serviceAccountNameValue;
    }
    final timeoutSecondsValue = timeoutSeconds;
    if (timeoutSecondsValue != null) {
      map['timeoutSeconds'] = timeoutSecondsValue;
    }
    final volumesValue = volumes;
    if (volumesValue != null) {
      map['volumes'] = Input.encodeList<Volume5, Map<String, dynamic>>(
          volumesValue, (value) => value.toMap());
    }
    return map;
  }

  factory RevisionSpec.fromMap(Map<String, dynamic> map) {
    return RevisionSpec(
      containerConcurrency: map['containerConcurrency'] == null
          ? null
          : map['containerConcurrency'] as int,
      containers: map['containers'] == null
          ? null
          : Input.decodeList<Container2>(
              map['containers'],
              (value) =>
                  Container2.fromMap((value as Map).cast<String, dynamic>())),
      enableServiceLinks: map['enableServiceLinks'] == null
          ? null
          : map['enableServiceLinks'] as bool,
      imagePullSecrets: map['imagePullSecrets'] == null
          ? null
          : Input.decodeList<LocalObjectReference>(
              map['imagePullSecrets'],
              (value) => LocalObjectReference.fromMap(
                  (value as Map).cast<String, dynamic>())),
      serviceAccountName: map['serviceAccountName'] == null
          ? null
          : map['serviceAccountName'] as String,
      timeoutSeconds:
          map['timeoutSeconds'] == null ? null : map['timeoutSeconds'] as int,
      volumes: map['volumes'] == null
          ? null
          : Input.decodeList<Volume5>(
              map['volumes'],
              (value) =>
                  Volume5.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
