// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_worker_pool_template_container/get_worker_pool_template_container.dart';
import '../get_worker_pool_template_node_selector/get_worker_pool_template_node_selector.dart';
import '../get_worker_pool_template_volume/get_worker_pool_template_volume.dart';
import '../get_worker_pool_template_vpc_access/get_worker_pool_template_vpc_access.dart';

class GetWorkerPoolTemplate {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  ///
  /// Cloud Run API v2 does not support annotations with 'run.googleapis.com', 'cloud.googleapis.com', 'serving.knative.dev', or 'autoscaling.knative.dev' namespaces, and they will be rejected.
  /// All system annotations in v1 now have a corresponding field in v2 WorkerPoolRevisionTemplate.
  ///
  /// This field follows Kubernetes annotations' namespacing, limits, and rules.
  final Map<String, String> annotations;

  /// Holds the containers that define the unit of execution for this WorkerPool.
  final List<GetWorkerPoolTemplateContainer> containers;

  /// A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  final String encryptionKey;

  /// The action to take if the encryption key is revoked. Possible values: ["PREVENT_NEW", "SHUTDOWN"]
  final String encryptionKeyRevocationAction;

  /// If encryptionKeyRevocationAction is SHUTDOWN, the duration before shutting down all instances. The minimum increment is 1 hour.
  ///
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final String encryptionKeyShutdownDuration;

  /// True if GPU zonal redundancy is disabled on this revision.
  final bool gpuZonalRedundancyDisabled;

  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc.
  /// For more information, visit https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels.
  ///
  /// Cloud Run API v2 does not support labels with 'run.googleapis.com', 'cloud.googleapis.com', 'serving.knative.dev', or 'autoscaling.knative.dev' namespaces, and they will be rejected.
  /// All system labels in v1 now have a corresponding field in v2 WorkerPoolRevisionTemplate.
  final Map<String, String> labels;

  /// Node Selector describes the hardware requirements of the resources.
  final List<GetWorkerPoolTemplateNodeSelector> nodeSelectors;

  /// The unique name for the revision. If this field is omitted, it will be automatically generated based on the WorkerPool name.
  final String revision;

  /// Email address of the IAM service account associated with the revision of the WorkerPool. The service account represents the identity of the running revision, and determines what permissions the revision has. If not provided, the revision will use the project's default service account.
  final String serviceAccount;

  /// A list of Volumes to make available to containers.
  final List<GetWorkerPoolTemplateVolume> volumes;

  /// VPC Access configuration to use for this Revision. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
  final List<GetWorkerPoolTemplateVpcAccess> vpcAccesses;

  GetWorkerPoolTemplate({
    required this.annotations,
    required this.containers,
    required this.encryptionKey,
    required this.encryptionKeyRevocationAction,
    required this.encryptionKeyShutdownDuration,
    required this.gpuZonalRedundancyDisabled,
    required this.labels,
    required this.nodeSelectors,
    required this.revision,
    required this.serviceAccount,
    required this.volumes,
    required this.vpcAccesses,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotations'] = annotations;
    map['containers'] =
        Input.encodeList<GetWorkerPoolTemplateContainer, Map<String, dynamic>>(
            containers, (value) => value.toMap());
    map['encryptionKey'] = encryptionKey;
    map['encryptionKeyRevocationAction'] = encryptionKeyRevocationAction;
    map['encryptionKeyShutdownDuration'] = encryptionKeyShutdownDuration;
    map['gpuZonalRedundancyDisabled'] = gpuZonalRedundancyDisabled;
    map['labels'] = labels;
    map['nodeSelectors'] = Input.encodeList<GetWorkerPoolTemplateNodeSelector,
        Map<String, dynamic>>(nodeSelectors, (value) => value.toMap());
    map['revision'] = revision;
    map['serviceAccount'] = serviceAccount;
    map['volumes'] =
        Input.encodeList<GetWorkerPoolTemplateVolume, Map<String, dynamic>>(
            volumes, (value) => value.toMap());
    map['vpcAccesses'] =
        Input.encodeList<GetWorkerPoolTemplateVpcAccess, Map<String, dynamic>>(
            vpcAccesses, (value) => value.toMap());
    return map;
  }

  factory GetWorkerPoolTemplate.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolTemplate(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      containers: Input.decodeList<GetWorkerPoolTemplateContainer>(
          map['containers'],
          (value) => GetWorkerPoolTemplateContainer.fromMap(
              (value as Map).cast<String, dynamic>())),
      encryptionKey: map['encryptionKey'] as String,
      encryptionKeyRevocationAction:
          map['encryptionKeyRevocationAction'] as String,
      encryptionKeyShutdownDuration:
          map['encryptionKeyShutdownDuration'] as String,
      gpuZonalRedundancyDisabled: map['gpuZonalRedundancyDisabled'] as bool,
      labels: (map['labels'] as Map).cast<String, String>(),
      nodeSelectors: Input.decodeList<GetWorkerPoolTemplateNodeSelector>(
          map['nodeSelectors'],
          (value) => GetWorkerPoolTemplateNodeSelector.fromMap(
              (value as Map).cast<String, dynamic>())),
      revision: map['revision'] as String,
      serviceAccount: map['serviceAccount'] as String,
      volumes: Input.decodeList<GetWorkerPoolTemplateVolume>(
          map['volumes'],
          (value) => GetWorkerPoolTemplateVolume.fromMap(
              (value as Map).cast<String, dynamic>())),
      vpcAccesses: Input.decodeList<GetWorkerPoolTemplateVpcAccess>(
          map['vpcAccesses'],
          (value) => GetWorkerPoolTemplateVpcAccess.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
