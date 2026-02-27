// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_run_v2_container.dart';
import 'google_cloud_run_v2_revision_scaling.dart';
import 'google_cloud_run_v2_revision_template_execution_environment.dart';
import 'google_cloud_run_v2_volume.dart';
import 'google_cloud_run_v2_vpc_access.dart';

/// RevisionTemplate describes the data a revision should have when created from a template.
class GoogleCloudRunV2RevisionTemplate {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system annotations in v1 now have a corresponding field in v2 RevisionTemplate. This field follows Kubernetes annotations' namespacing, limits, and rules.
  final Map<String, String>? annotations;

  /// Holds the single container that defines the unit of execution for this Revision.
  final List<GoogleCloudRunV2Container>? containers;

  /// A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  final String? encryptionKey;

  /// The sandbox environment to host this Revision.
  final GoogleCloudRunV2RevisionTemplateExecutionEnvironment?
      executionEnvironment;

  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 RevisionTemplate.
  final Map<String, String>? labels;

  /// Sets the maximum number of requests that each serving instance can receive.
  final int? maxInstanceRequestConcurrency;

  /// The unique name for the revision. If this field is omitted, it will be automatically generated based on the Service name.
  final String? revision;

  /// Scaling settings for this Revision.
  final GoogleCloudRunV2RevisionScaling? scaling;

  /// Email address of the IAM service account associated with the revision of the service. The service account represents the identity of the running revision, and determines what permissions the revision has. If not provided, the revision will use the project's default service account.
  final String? serviceAccount;

  /// Enable session affinity.
  final bool? sessionAffinity;

  /// Max allowed time for an instance to respond to a request.
  final String? timeout;

  /// A list of Volumes to make available to containers.
  final List<GoogleCloudRunV2Volume>? volumes;

  /// VPC Access configuration to use for this Revision. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
  final GoogleCloudRunV2VpcAccess? vpcAccess;

  GoogleCloudRunV2RevisionTemplate({
    this.annotations,
    this.containers,
    this.encryptionKey,
    this.executionEnvironment,
    this.labels,
    this.maxInstanceRequestConcurrency,
    this.revision,
    this.scaling,
    this.serviceAccount,
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
      map['containers'] = pulumi.Input.encodeList<GoogleCloudRunV2Container,
          Map<String, dynamic>>(containersValue, (value) => value.toMap());
    }
    final encryptionKeyValue = encryptionKey;
    if (encryptionKeyValue != null) {
      map['encryptionKey'] = encryptionKeyValue;
    }
    final executionEnvironmentValue = executionEnvironment;
    if (executionEnvironmentValue != null) {
      map['executionEnvironment'] = executionEnvironmentValue.value;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final maxInstanceRequestConcurrencyValue = maxInstanceRequestConcurrency;
    if (maxInstanceRequestConcurrencyValue != null) {
      map['maxInstanceRequestConcurrency'] = maxInstanceRequestConcurrencyValue;
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
          pulumi.Input.encodeList<GoogleCloudRunV2Volume, Map<String, dynamic>>(
              volumesValue, (value) => value.toMap());
    }
    final vpcAccessValue = vpcAccess;
    if (vpcAccessValue != null) {
      map['vpcAccess'] = vpcAccessValue.toMap();
    }
    return map;
  }

  factory GoogleCloudRunV2RevisionTemplate.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2RevisionTemplate(
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      containers: map['containers'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudRunV2Container>(
              map['containers'],
              (value) => GoogleCloudRunV2Container.fromMap(
                  (value as Map).cast<String, dynamic>())),
      encryptionKey:
          map['encryptionKey'] == null ? null : map['encryptionKey'] as String,
      executionEnvironment: map['executionEnvironment'] == null
          ? null
          : GoogleCloudRunV2RevisionTemplateExecutionEnvironment.fromValue(
              map['executionEnvironment'] as String),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      maxInstanceRequestConcurrency:
          map['maxInstanceRequestConcurrency'] == null
              ? null
              : map['maxInstanceRequestConcurrency'] as int,
      revision: map['revision'] == null ? null : map['revision'] as String,
      scaling: map['scaling'] == null
          ? null
          : GoogleCloudRunV2RevisionScaling.fromMap(
              (map['scaling'] as Map).cast<String, dynamic>()),
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      sessionAffinity: map['sessionAffinity'] == null
          ? null
          : map['sessionAffinity'] as bool,
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
      volumes: map['volumes'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudRunV2Volume>(
              map['volumes'],
              (value) => GoogleCloudRunV2Volume.fromMap(
                  (value as Map).cast<String, dynamic>())),
      vpcAccess: map['vpcAccess'] == null
          ? null
          : GoogleCloudRunV2VpcAccess.fromMap(
              (map['vpcAccess'] as Map).cast<String, dynamic>()),
    );
  }
}
