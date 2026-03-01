// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_template_container.dart';
import 'get_service_template_node_selector.dart';
import 'get_service_template_scaling.dart';
import 'get_service_template_service_mesh.dart';
import 'get_service_template_volume.dart';
import 'get_service_template_vpc_access.dart';

class GetServiceTemplate {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  ///
  /// Cloud Run API v2 does not support annotations with 'run.googleapis.com', 'cloud.googleapis.com', 'serving.knative.dev', or 'autoscaling.knative.dev' namespaces, and they will be rejected.
  /// All system annotations in v1 now have a corresponding field in v2 RevisionTemplate.
  ///
  /// This field follows Kubernetes annotations' namespacing, limits, and rules.
  final Map<String, String> annotations;

  /// Holds the containers that define the unit of execution for this Service.
  final List<GetServiceTemplateContainer> containers;

  /// A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  final String encryptionKey;

  /// The sandbox environment to host this Revision. Possible values: ["EXECUTION_ENVIRONMENT_GEN1", "EXECUTION_ENVIRONMENT_GEN2"]
  final String executionEnvironment;

  /// True if GPU zonal redundancy is disabled on this revision.
  final bool gpuZonalRedundancyDisabled;

  /// Disables health checking containers during deployment.
  final bool healthCheckDisabled;

  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc.
  /// For more information, visit https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels.
  ///
  /// Cloud Run API v2 does not support labels with 'run.googleapis.com', 'cloud.googleapis.com', 'serving.knative.dev', or 'autoscaling.knative.dev' namespaces, and they will be rejected.
  /// All system labels in v1 now have a corresponding field in v2 RevisionTemplate.
  final Map<String, String> labels;

  /// Sets the maximum number of requests that each serving instance can receive.
  /// If not specified or 0, defaults to 80 when requested CPU >= 1 and defaults to 1 when requested CPU < 1.
  final int maxInstanceRequestConcurrency;

  /// Node Selector describes the hardware requirements of the resources.
  final List<GetServiceTemplateNodeSelector> nodeSelectors;

  /// The unique name for the revision. If this field is omitted, it will be automatically generated based on the Service name.
  final String revision;

  /// Scaling settings for this Revision.
  final List<GetServiceTemplateScaling> scalings;

  /// Email address of the IAM service account associated with the revision of the service. The service account represents the identity of the running revision, and determines what permissions the revision has. If not provided, the revision will use the project's default service account.
  final String serviceAccount;

  /// Enables Cloud Service Mesh for this Revision.
  final List<GetServiceTemplateServiceMesh> serviceMeshes;

  /// Enables session affinity. For more information, go to https://cloud.google.com/run/docs/configuring/session-affinity
  final bool sessionAffinity;

  /// Max allowed time for an instance to respond to a request.
  ///
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final String timeout;

  /// A list of Volumes to make available to containers.
  final List<GetServiceTemplateVolume> volumes;

  /// VPC Access configuration to use for this Task. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
  final List<GetServiceTemplateVpcAccess> vpcAccesses;

  /// Creates a new [GetServiceTemplate].
  /// [annotations] Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// [containers] Holds the containers that define the unit of execution for this Service.
  /// [encryptionKey] A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  /// [executionEnvironment] The sandbox environment to host this Revision. Possible values: ["EXECUTION_ENVIRONMENT_GEN1", "EXECUTION_ENVIRONMENT_GEN2"]
  /// [gpuZonalRedundancyDisabled] True if GPU zonal redundancy is disabled on this revision.
  /// [healthCheckDisabled] Disables health checking containers during deployment.
  /// [labels] Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc.
  /// [maxInstanceRequestConcurrency] Sets the maximum number of requests that each serving instance can receive.
  /// [nodeSelectors] Node Selector describes the hardware requirements of the resources.
  /// [revision] The unique name for the revision. If this field is omitted, it will be automatically generated based on the Service name.
  /// [scalings] Scaling settings for this Revision.
  /// [serviceAccount] Email address of the IAM service account associated with the revision of the service. The service account represents the identity of the running revision, and determines what permissions the revision has. If not provided, the revision will use the project's default service account.
  /// [serviceMeshes] Enables Cloud Service Mesh for this Revision.
  /// [sessionAffinity] Enables session affinity. For more information, go to https://cloud.google.com/run/docs/configuring/session-affinity
  /// [timeout] Max allowed time for an instance to respond to a request.
  /// [volumes] A list of Volumes to make available to containers.
  /// [vpcAccesses] VPC Access configuration to use for this Task. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
  GetServiceTemplate({
    required this.annotations,
    required this.containers,
    required this.encryptionKey,
    required this.executionEnvironment,
    required this.gpuZonalRedundancyDisabled,
    required this.healthCheckDisabled,
    required this.labels,
    required this.maxInstanceRequestConcurrency,
    required this.nodeSelectors,
    required this.revision,
    required this.scalings,
    required this.serviceAccount,
    required this.serviceMeshes,
    required this.sessionAffinity,
    required this.timeout,
    required this.volumes,
    required this.vpcAccesses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'containers':
          pulumi.Input.encodeList<
            GetServiceTemplateContainer,
            Map<String, dynamic>
          >(containers, (value) => value.toMap()),
      'encryptionKey': encryptionKey,
      'executionEnvironment': executionEnvironment,
      'gpuZonalRedundancyDisabled': gpuZonalRedundancyDisabled,
      'healthCheckDisabled': healthCheckDisabled,
      'labels': labels,
      'maxInstanceRequestConcurrency': maxInstanceRequestConcurrency,
      'nodeSelectors':
          pulumi.Input.encodeList<
            GetServiceTemplateNodeSelector,
            Map<String, dynamic>
          >(nodeSelectors, (value) => value.toMap()),
      'revision': revision,
      'scalings':
          pulumi.Input.encodeList<
            GetServiceTemplateScaling,
            Map<String, dynamic>
          >(scalings, (value) => value.toMap()),
      'serviceAccount': serviceAccount,
      'serviceMeshes':
          pulumi.Input.encodeList<
            GetServiceTemplateServiceMesh,
            Map<String, dynamic>
          >(serviceMeshes, (value) => value.toMap()),
      'sessionAffinity': sessionAffinity,
      'timeout': timeout,
      'volumes':
          pulumi.Input.encodeList<
            GetServiceTemplateVolume,
            Map<String, dynamic>
          >(volumes, (value) => value.toMap()),
      'vpcAccesses':
          pulumi.Input.encodeList<
            GetServiceTemplateVpcAccess,
            Map<String, dynamic>
          >(vpcAccesses, (value) => value.toMap()),
    };
  }

  factory GetServiceTemplate.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplate(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      containers: pulumi.Input.decodeList<GetServiceTemplateContainer>(
        map['containers'],
        (value) => GetServiceTemplateContainer.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      encryptionKey: map['encryptionKey'] as String,
      executionEnvironment: map['executionEnvironment'] as String,
      gpuZonalRedundancyDisabled: map['gpuZonalRedundancyDisabled'] as bool,
      healthCheckDisabled: map['healthCheckDisabled'] as bool,
      labels: (map['labels'] as Map).cast<String, String>(),
      maxInstanceRequestConcurrency:
          map['maxInstanceRequestConcurrency'] as int,
      nodeSelectors: pulumi.Input.decodeList<GetServiceTemplateNodeSelector>(
        map['nodeSelectors'],
        (value) => GetServiceTemplateNodeSelector.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      revision: map['revision'] as String,
      scalings: pulumi.Input.decodeList<GetServiceTemplateScaling>(
        map['scalings'],
        (value) => GetServiceTemplateScaling.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      serviceAccount: map['serviceAccount'] as String,
      serviceMeshes: pulumi.Input.decodeList<GetServiceTemplateServiceMesh>(
        map['serviceMeshes'],
        (value) => GetServiceTemplateServiceMesh.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      sessionAffinity: map['sessionAffinity'] as bool,
      timeout: map['timeout'] as String,
      volumes: pulumi.Input.decodeList<GetServiceTemplateVolume>(
        map['volumes'],
        (value) => GetServiceTemplateVolume.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      vpcAccesses: pulumi.Input.decodeList<GetServiceTemplateVpcAccess>(
        map['vpcAccesses'],
        (value) => GetServiceTemplateVpcAccess.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
