// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../worker_pool_template_container/worker_pool_template_container.dart';
import '../worker_pool_template_node_selector/worker_pool_template_node_selector.dart';
import '../worker_pool_template_volume/worker_pool_template_volume.dart';
import '../worker_pool_template_vpc_access/worker_pool_template_vpc_access.dart';

class WorkerPoolTemplate {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected.
  /// All system annotations in v1 now have a corresponding field in v2 WorkerPoolRevisionTemplate.
  /// This field follows Kubernetes annotations' namespacing, limits, and rules.
  final Map<String, String>? annotations;

  /// Holds the containers that define the unit of execution for this WorkerPool.
  /// Structure is documented below.
  final List<WorkerPoolTemplateContainer>? containers;

  /// A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  final String? encryptionKey;

  /// The action to take if the encryption key is revoked.
  /// Possible values are: `PREVENT_NEW`, `SHUTDOWN`.
  final String? encryptionKeyRevocationAction;

  /// If encryptionKeyRevocationAction is SHUTDOWN, the duration before shutting down all instances. The minimum increment is 1 hour.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final String? encryptionKeyShutdownDuration;

  /// True if GPU zonal redundancy is disabled on this revision.
  final bool? gpuZonalRedundancyDisabled;

  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc.
  /// For more information, visit https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels.
  /// Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected.
  /// All system labels in v1 now have a corresponding field in v2 WorkerPoolRevisionTemplate.
  final Map<String, String>? labels;

  /// Node Selector describes the hardware requirements of the resources.
  /// Structure is documented below.
  final WorkerPoolTemplateNodeSelector? nodeSelector;

  /// The unique name for the revision. If this field is omitted, it will be automatically generated based on the WorkerPool name.
  final String? revision;

  /// Email address of the IAM service account associated with the revision of the WorkerPool. The service account represents the identity of the running revision, and determines what permissions the revision has. If not provided, the revision will use the project's default service account.
  final String? serviceAccount;

  /// A list of Volumes to make available to containers.
  /// Structure is documented below.
  final List<WorkerPoolTemplateVolume>? volumes;

  /// VPC Access configuration to use for this Revision. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
  /// Structure is documented below.
  final WorkerPoolTemplateVpcAccess? vpcAccess;

  WorkerPoolTemplate({
    this.annotations,
    this.containers,
    this.encryptionKey,
    this.encryptionKeyRevocationAction,
    this.encryptionKeyShutdownDuration,
    this.gpuZonalRedundancyDisabled,
    this.labels,
    this.nodeSelector,
    this.revision,
    this.serviceAccount,
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
      map['containers'] = pulumi.Input.encodeList<WorkerPoolTemplateContainer,
          Map<String, dynamic>>(containersValue, (value) => value.toMap());
    }
    final encryptionKeyValue = encryptionKey;
    if (encryptionKeyValue != null) {
      map['encryptionKey'] = encryptionKeyValue;
    }
    final encryptionKeyRevocationActionValue = encryptionKeyRevocationAction;
    if (encryptionKeyRevocationActionValue != null) {
      map['encryptionKeyRevocationAction'] = encryptionKeyRevocationActionValue;
    }
    final encryptionKeyShutdownDurationValue = encryptionKeyShutdownDuration;
    if (encryptionKeyShutdownDurationValue != null) {
      map['encryptionKeyShutdownDuration'] = encryptionKeyShutdownDurationValue;
    }
    final gpuZonalRedundancyDisabledValue = gpuZonalRedundancyDisabled;
    if (gpuZonalRedundancyDisabledValue != null) {
      map['gpuZonalRedundancyDisabled'] = gpuZonalRedundancyDisabledValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nodeSelectorValue = nodeSelector;
    if (nodeSelectorValue != null) {
      map['nodeSelector'] = nodeSelectorValue.toMap();
    }
    final revisionValue = revision;
    if (revisionValue != null) {
      map['revision'] = revisionValue;
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    final volumesValue = volumes;
    if (volumesValue != null) {
      map['volumes'] = pulumi.Input.encodeList<WorkerPoolTemplateVolume,
          Map<String, dynamic>>(volumesValue, (value) => value.toMap());
    }
    final vpcAccessValue = vpcAccess;
    if (vpcAccessValue != null) {
      map['vpcAccess'] = vpcAccessValue.toMap();
    }
    return map;
  }

  factory WorkerPoolTemplate.fromMap(Map<String, dynamic> map) {
    return WorkerPoolTemplate(
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      containers: map['containers'] == null
          ? null
          : pulumi.Input.decodeList<WorkerPoolTemplateContainer>(
              map['containers'],
              (value) => WorkerPoolTemplateContainer.fromMap(
                  (value as Map).cast<String, dynamic>())),
      encryptionKey:
          map['encryptionKey'] == null ? null : map['encryptionKey'] as String,
      encryptionKeyRevocationAction:
          map['encryptionKeyRevocationAction'] == null
              ? null
              : map['encryptionKeyRevocationAction'] as String,
      encryptionKeyShutdownDuration:
          map['encryptionKeyShutdownDuration'] == null
              ? null
              : map['encryptionKeyShutdownDuration'] as String,
      gpuZonalRedundancyDisabled: map['gpuZonalRedundancyDisabled'] == null
          ? null
          : map['gpuZonalRedundancyDisabled'] as bool,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      nodeSelector: map['nodeSelector'] == null
          ? null
          : WorkerPoolTemplateNodeSelector.fromMap(
              (map['nodeSelector'] as Map).cast<String, dynamic>()),
      revision: map['revision'] == null ? null : map['revision'] as String,
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      volumes: map['volumes'] == null
          ? null
          : pulumi.Input.decodeList<WorkerPoolTemplateVolume>(
              map['volumes'],
              (value) => WorkerPoolTemplateVolume.fromMap(
                  (value as Map).cast<String, dynamic>())),
      vpcAccess: map['vpcAccess'] == null
          ? null
          : WorkerPoolTemplateVpcAccess.fromMap(
              (map['vpcAccess'] as Map).cast<String, dynamic>()),
    );
  }
}
