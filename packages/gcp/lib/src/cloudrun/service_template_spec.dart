// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_template_spec_container.dart';
import 'service_template_spec_volume.dart';

class ServiceTemplateSpec {
  /// ContainerConcurrency specifies the maximum allowed in-flight (concurrent)
  /// requests per container of the Revision. If not specified or 0, defaults to 80 when
  /// requested CPU >= 1 and defaults to 1 when requested CPU < 1.
  final int? containerConcurrency;

  /// Containers defines the unit of execution for this Revision.
  /// Structure is documented below.
  final List<ServiceTemplateSpecContainer>? containers;

  /// Node Selector describes the hardware requirements of the resources.
  /// Use the following node selector keys to configure features on a Revision:
  /// - `run.googleapis.com/accelerator` sets the [type of GPU](https://cloud.google.com/run/docs/configuring/services/gpu) required by the Revision to run.
  final Map<String, String>? nodeSelector;

  /// Email address of the IAM service account associated with the revision of the
  /// service. The service account represents the identity of the running revision,
  /// and determines what permissions the revision has. If not provided, the revision
  /// will use the project's default service account.
  final String? serviceAccountName;

  /// (Output, Deprecated)
  /// ServingState holds a value describing the state the resources
  /// are in for this Revision.
  /// It is expected
  /// that the system will manipulate this based on routability and load.
  ///
  /// > **Warning:** `serving_state` is deprecated and will be removed in a future major release. This field is not supported by the Cloud Run API.
  final String? servingState;

  /// TimeoutSeconds holds the max duration the instance is allowed for responding to a request.
  final int? timeoutSeconds;

  /// Volume represents a named volume in a container.
  /// Structure is documented below.
  final List<ServiceTemplateSpecVolume>? volumes;

  /// Creates a new [ServiceTemplateSpec].
  /// [containerConcurrency] ContainerConcurrency specifies the maximum allowed in-flight (concurrent)
  /// [containers] Containers defines the unit of execution for this Revision.
  /// [nodeSelector] Node Selector describes the hardware requirements of the resources.
  /// [serviceAccountName] Email address of the IAM service account associated with the revision of the
  /// [servingState] (Output, Deprecated)
  /// [timeoutSeconds] TimeoutSeconds holds the max duration the instance is allowed for responding to a request.
  /// [volumes] Volume represents a named volume in a container.
  ServiceTemplateSpec({
    this.containerConcurrency,
    this.containers,
    this.nodeSelector,
    this.serviceAccountName,
    this.servingState,
    this.timeoutSeconds,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerConcurrency': ?containerConcurrency,
      'containers': ?containers == null
          ? null
          : pulumi.Input.encodeList<
              ServiceTemplateSpecContainer,
              Map<String, dynamic>
            >(containers!, (value) => value.toMap()),
      'nodeSelector': ?nodeSelector,
      'serviceAccountName': ?serviceAccountName,
      'servingState': ?servingState,
      'timeoutSeconds': ?timeoutSeconds,
      'volumes': ?volumes == null
          ? null
          : pulumi.Input.encodeList<
              ServiceTemplateSpecVolume,
              Map<String, dynamic>
            >(volumes!, (value) => value.toMap()),
    };
  }

  factory ServiceTemplateSpec.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateSpec(
      containerConcurrency: map['containerConcurrency'] == null
          ? null
          : map['containerConcurrency'] as int,
      containers: map['containers'] == null
          ? null
          : pulumi.Input.decodeList<ServiceTemplateSpecContainer>(
              map['containers'],
              (value) => ServiceTemplateSpecContainer.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      nodeSelector: map['nodeSelector'] == null
          ? null
          : (map['nodeSelector'] as Map).cast<String, String>(),
      serviceAccountName: map['serviceAccountName'] == null
          ? null
          : map['serviceAccountName'] as String,
      servingState: map['servingState'] == null
          ? null
          : map['servingState'] as String,
      timeoutSeconds: map['timeoutSeconds'] == null
          ? null
          : map['timeoutSeconds'] as int,
      volumes: map['volumes'] == null
          ? null
          : pulumi.Input.decodeList<ServiceTemplateSpecVolume>(
              map['volumes'],
              (value) => ServiceTemplateSpecVolume.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
