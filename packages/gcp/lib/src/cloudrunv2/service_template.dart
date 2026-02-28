// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_template_container.dart';
import 'service_template_node_selector.dart';
import 'service_template_scaling.dart';
import 'service_template_service_mesh.dart';
import 'service_template_volume.dart';
import 'service_template_vpc_access.dart';

class ServiceTemplate {
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

  /// Creates a new [ServiceTemplate].
  /// [annotations] Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// [containers] Holds the containers that define the unit of execution for this Service.
  /// [encryptionKey] A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  /// [executionEnvironment] The sandbox environment to host this Revision.
  /// [gpuZonalRedundancyDisabled] True if GPU zonal redundancy is disabled on this revision.
  /// [healthCheckDisabled] Disables health checking containers during deployment.
  /// [labels] Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc.
  /// [maxInstanceRequestConcurrency] Sets the maximum number of requests that each serving instance can receive.
  /// [nodeSelector] Node Selector describes the hardware requirements of the resources.
  /// [revision] The unique name for the revision. If this field is omitted, it will be automatically generated based on the Service name.
  /// [scaling] Scaling settings for this Revision.
  /// [serviceAccount] Email address of the IAM service account associated with the revision of the service. The service account represents the identity of the running revision, and determines what permissions the revision has. If not provided, the revision will use the project's default service account.
  /// [serviceMesh] Enables Cloud Service Mesh for this Revision.
  /// [sessionAffinity] Enables session affinity. For more information, go to https://cloud.google.com/run/docs/configuring/session-affinity
  /// [timeout] Max allowed time for an instance to respond to a request.
  /// [volumes] A list of Volumes to make available to containers.
  /// [vpcAccess] VPC Access configuration to use for this Task. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
  ServiceTemplate({
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
    return <String, dynamic>{
      'annotations': ?annotations,
      'containers': ?containers == null ? null : pulumi.Input.encodeList<ServiceTemplateContainer, Map<String, dynamic>>(containers!, (value) => value.toMap()),
      'encryptionKey': ?encryptionKey,
      'executionEnvironment': ?executionEnvironment,
      'gpuZonalRedundancyDisabled': ?gpuZonalRedundancyDisabled,
      'healthCheckDisabled': ?healthCheckDisabled,
      'labels': ?labels,
      'maxInstanceRequestConcurrency': ?maxInstanceRequestConcurrency,
      'nodeSelector': ?nodeSelector == null ? null : nodeSelector!.toMap(),
      'revision': ?revision,
      'scaling': ?scaling == null ? null : scaling!.toMap(),
      'serviceAccount': ?serviceAccount,
      'serviceMesh': ?serviceMesh == null ? null : serviceMesh!.toMap(),
      'sessionAffinity': ?sessionAffinity,
      'timeout': ?timeout,
      'volumes': ?volumes == null ? null : pulumi.Input.encodeList<ServiceTemplateVolume, Map<String, dynamic>>(volumes!, (value) => value.toMap()),
      'vpcAccess': ?vpcAccess == null ? null : vpcAccess!.toMap(),
    };
  }

  factory ServiceTemplate.fromMap(Map<String, dynamic> map) {
    return ServiceTemplate(
      annotations: map['annotations'] == null ? null : (map['annotations'] as Map).cast<String, String>(),
      containers: map['containers'] == null ? null : pulumi.Input.decodeList<ServiceTemplateContainer>(map['containers'], (value) => ServiceTemplateContainer.fromMap((value as Map).cast<String, dynamic>())),
      encryptionKey: map['encryptionKey'] == null ? null : map['encryptionKey'] as String,
      executionEnvironment: map['executionEnvironment'] == null ? null : map['executionEnvironment'] as String,
      gpuZonalRedundancyDisabled: map['gpuZonalRedundancyDisabled'] == null ? null : map['gpuZonalRedundancyDisabled'] as bool,
      healthCheckDisabled: map['healthCheckDisabled'] == null ? null : map['healthCheckDisabled'] as bool,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      maxInstanceRequestConcurrency: map['maxInstanceRequestConcurrency'] == null ? null : map['maxInstanceRequestConcurrency'] as int,
      nodeSelector: map['nodeSelector'] == null ? null : ServiceTemplateNodeSelector.fromMap((map['nodeSelector'] as Map).cast<String, dynamic>()),
      revision: map['revision'] == null ? null : map['revision'] as String,
      scaling: map['scaling'] == null ? null : ServiceTemplateScaling.fromMap((map['scaling'] as Map).cast<String, dynamic>()),
      serviceAccount: map['serviceAccount'] == null ? null : map['serviceAccount'] as String,
      serviceMesh: map['serviceMesh'] == null ? null : ServiceTemplateServiceMesh.fromMap((map['serviceMesh'] as Map).cast<String, dynamic>()),
      sessionAffinity: map['sessionAffinity'] == null ? null : map['sessionAffinity'] as bool,
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
      volumes: map['volumes'] == null ? null : pulumi.Input.decodeList<ServiceTemplateVolume>(map['volumes'], (value) => ServiceTemplateVolume.fromMap((value as Map).cast<String, dynamic>())),
      vpcAccess: map['vpcAccess'] == null ? null : ServiceTemplateVpcAccess.fromMap((map['vpcAccess'] as Map).cast<String, dynamic>()),
    );
  }
}

