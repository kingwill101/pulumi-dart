// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../service_template_container/service_template_container.dart';
import '../service_template_node_selector/service_template_node_selector.dart';
import '../service_template_scaling/service_template_scaling.dart';
import '../service_template_service_mesh/service_template_service_mesh.dart';
import '../service_template_volume/service_template_volume.dart';
import '../service_template_vpc_access/service_template_vpc_access.dart';

class ServiceTemplateCloudrunv2 {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected.
  /// All system annotations in v1 now have a corresponding field in v2 RevisionTemplate.
  /// This field follows Kubernetes annotations' namespacing, limits, and rules.
  final Map<String, String>? annotations;

  /// Holds the containers that define the unit of execution for this Service.
  /// Structure is documented below.
  final List<ServiceTemplateContainer>? containers;

  /// A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  final String? encryptionKey;

  /// The sandbox environment to host this Revision.
  /// Possible values are: `EXECUTION_ENVIRONMENT_GEN1`, `EXECUTION_ENVIRONMENT_GEN2`.
  final String? executionEnvironment;

  /// True if GPU zonal redundancy is disabled on this revision.
  final bool? gpuZonalRedundancyDisabled;

  /// Disables health checking containers during deployment.
  final bool? healthCheckDisabled;

  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc.
  /// For more information, visit https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels.
  /// Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected.
  /// All system labels in v1 now have a corresponding field in v2 RevisionTemplate.
  final Map<String, String>? labels;

  /// Sets the maximum number of requests that each serving instance can receive.
  /// If not specified or 0, defaults to 80 when requested CPU >= 1 and defaults to 1 when requested CPU < 1.
  final int? maxInstanceRequestConcurrency;

  /// Node Selector describes the hardware requirements of the resources.
  /// Structure is documented below.
  final ServiceTemplateNodeSelector? nodeSelector;

  /// The unique name for the revision. If this field is omitted, it will be automatically generated based on the Service name.
  final String? revision;

  /// Scaling settings for this Revision.
  /// Structure is documented below.
  final ServiceTemplateScaling? scaling;

  /// Email address of the IAM service account associated with the revision of the service. The service account represents the identity of the running revision, and determines what permissions the revision has. If not provided, the revision will use the project's default service account.
  final String? serviceAccount;

  /// Enables Cloud Service Mesh for this Revision.
  /// Structure is documented below.
  final ServiceTemplateServiceMesh? serviceMesh;

  /// Enables session affinity. For more information, go to https://cloud.google.com/run/docs/configuring/session-affinity
  final bool? sessionAffinity;

  /// Max allowed time for an instance to respond to a request.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final String? timeout;

  /// A list of Volumes to make available to containers.
  /// Structure is documented below.
  final List<ServiceTemplateVolume>? volumes;

  /// VPC Access configuration to use for this Task. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
  /// Structure is documented below.
  final ServiceTemplateVpcAccess? vpcAccess;

  ServiceTemplateCloudrunv2({
    this.annotations,
    this.containers,
    this.encryptionKey,
    this.executionEnvironment,
    this.gpuZonalRedundancyDisabled,
    this.healthCheckDisabled,
    this.labels,
    this.maxInstanceRequestConcurrency,
    this.nodeSelector,
    this.revision,
    this.scaling,
    this.serviceAccount,
    this.serviceMesh,
    this.sessionAffinity,
    this.timeout,
    this.volumes,
    this.vpcAccess,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final containersValue = containers;
    if (containersValue != null) {
      map['containers'] = pulumi.Input.encodeList<ServiceTemplateContainer,
          Map<String, dynamic>>(containersValue, (value) => value.toMap());
    }
    final encryptionKeyValue = encryptionKey;
    if (encryptionKeyValue != null) {
      map['encryptionKey'] = encryptionKeyValue;
    }
    final executionEnvironmentValue = executionEnvironment;
    if (executionEnvironmentValue != null) {
      map['executionEnvironment'] = executionEnvironmentValue;
    }
    final gpuZonalRedundancyDisabledValue = gpuZonalRedundancyDisabled;
    if (gpuZonalRedundancyDisabledValue != null) {
      map['gpuZonalRedundancyDisabled'] = gpuZonalRedundancyDisabledValue;
    }
    final healthCheckDisabledValue = healthCheckDisabled;
    if (healthCheckDisabledValue != null) {
      map['healthCheckDisabled'] = healthCheckDisabledValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final maxInstanceRequestConcurrencyValue = maxInstanceRequestConcurrency;
    if (maxInstanceRequestConcurrencyValue != null) {
      map['maxInstanceRequestConcurrency'] = maxInstanceRequestConcurrencyValue;
    }
    final nodeSelectorValue = nodeSelector;
    if (nodeSelectorValue != null) {
      map['nodeSelector'] = nodeSelectorValue.toMap();
    }
    final revisionValue = revision;
    if (revisionValue != null) {
      map['revision'] = revisionValue;
    }
    final scalingValue = scaling;
    if (scalingValue != null) {
      map['scaling'] = scalingValue.toMap();
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    final serviceMeshValue = serviceMesh;
    if (serviceMeshValue != null) {
      map['serviceMesh'] = serviceMeshValue.toMap();
    }
    final sessionAffinityValue = sessionAffinity;
    if (sessionAffinityValue != null) {
      map['sessionAffinity'] = sessionAffinityValue;
    }
    final timeoutValue = timeout;
    if (timeoutValue != null) {
      map['timeout'] = timeoutValue;
    }
    final volumesValue = volumes;
    if (volumesValue != null) {
      map['volumes'] =
          pulumi.Input.encodeList<ServiceTemplateVolume, Map<String, dynamic>>(
              volumesValue, (value) => value.toMap());
    }
    final vpcAccessValue = vpcAccess;
    if (vpcAccessValue != null) {
      map['vpcAccess'] = vpcAccessValue.toMap();
    }
    return map;
  }

  factory ServiceTemplateCloudrunv2.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateCloudrunv2(
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      containers: map['containers'] == null
          ? null
          : pulumi.Input.decodeList<ServiceTemplateContainer>(
              map['containers'],
              (value) => ServiceTemplateContainer.fromMap(
                  (value as Map).cast<String, dynamic>())),
      encryptionKey:
          map['encryptionKey'] == null ? null : map['encryptionKey'] as String,
      executionEnvironment: map['executionEnvironment'] == null
          ? null
          : map['executionEnvironment'] as String,
      gpuZonalRedundancyDisabled: map['gpuZonalRedundancyDisabled'] == null
          ? null
          : map['gpuZonalRedundancyDisabled'] as bool,
      healthCheckDisabled: map['healthCheckDisabled'] == null
          ? null
          : map['healthCheckDisabled'] as bool,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      maxInstanceRequestConcurrency:
          map['maxInstanceRequestConcurrency'] == null
              ? null
              : map['maxInstanceRequestConcurrency'] as int,
      nodeSelector: map['nodeSelector'] == null
          ? null
          : ServiceTemplateNodeSelector.fromMap(
              (map['nodeSelector'] as Map).cast<String, dynamic>()),
      revision: map['revision'] == null ? null : map['revision'] as String,
      scaling: map['scaling'] == null
          ? null
          : ServiceTemplateScaling.fromMap(
              (map['scaling'] as Map).cast<String, dynamic>()),
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      serviceMesh: map['serviceMesh'] == null
          ? null
          : ServiceTemplateServiceMesh.fromMap(
              (map['serviceMesh'] as Map).cast<String, dynamic>()),
      sessionAffinity: map['sessionAffinity'] == null
          ? null
          : map['sessionAffinity'] as bool,
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
      volumes: map['volumes'] == null
          ? null
          : pulumi.Input.decodeList<ServiceTemplateVolume>(
              map['volumes'],
              (value) => ServiceTemplateVolume.fromMap(
                  (value as Map).cast<String, dynamic>())),
      vpcAccess: map['vpcAccess'] == null
          ? null
          : ServiceTemplateVpcAccess.fromMap(
              (map['vpcAccess'] as Map).cast<String, dynamic>()),
    );
  }
}
