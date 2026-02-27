// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_run_v2_container_response.dart';
import 'google_cloud_run_v2_revision_scaling_response.dart';
import 'google_cloud_run_v2_volume_response.dart';
import 'google_cloud_run_v2_vpc_access_response.dart';

/// RevisionTemplate describes the data a revision should have when created from a template.
class GoogleCloudRunV2RevisionTemplateResponse {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system annotations in v1 now have a corresponding field in v2 RevisionTemplate. This field follows Kubernetes annotations' namespacing, limits, and rules.
  final Map<String, String> annotations;

  /// Holds the single container that defines the unit of execution for this Revision.
  final List<GoogleCloudRunV2ContainerResponse> containers;

  /// A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  final String encryptionKey;

  /// The sandbox environment to host this Revision.
  final String executionEnvironment;

  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 RevisionTemplate.
  final Map<String, String> labels;

  /// Sets the maximum number of requests that each serving instance can receive.
  final int maxInstanceRequestConcurrency;

  /// The unique name for the revision. If this field is omitted, it will be automatically generated based on the Service name.
  final String revision;

  /// Scaling settings for this Revision.
  final GoogleCloudRunV2RevisionScalingResponse scaling;

  /// Email address of the IAM service account associated with the revision of the service. The service account represents the identity of the running revision, and determines what permissions the revision has. If not provided, the revision will use the project's default service account.
  final String serviceAccount;

  /// Enable session affinity.
  final bool sessionAffinity;

  /// Max allowed time for an instance to respond to a request.
  final String timeout;

  /// A list of Volumes to make available to containers.
  final List<GoogleCloudRunV2VolumeResponse> volumes;

  /// VPC Access configuration to use for this Revision. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
  final GoogleCloudRunV2VpcAccessResponse vpcAccess;

  GoogleCloudRunV2RevisionTemplateResponse({
    required this.annotations,
    required this.containers,
    required this.encryptionKey,
    required this.executionEnvironment,
    required this.labels,
    required this.maxInstanceRequestConcurrency,
    required this.revision,
    required this.scaling,
    required this.serviceAccount,
    required this.sessionAffinity,
    required this.timeout,
    required this.volumes,
    required this.vpcAccess,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotations'] = annotations;
    map['containers'] = Input.encodeList<GoogleCloudRunV2ContainerResponse,
        Map<String, dynamic>>(containers, (value) => value.toMap());
    map['encryptionKey'] = encryptionKey;
    map['executionEnvironment'] = executionEnvironment;
    map['labels'] = labels;
    map['maxInstanceRequestConcurrency'] = maxInstanceRequestConcurrency;
    map['revision'] = revision;
    map['scaling'] = scaling.toMap();
    map['serviceAccount'] = serviceAccount;
    map['sessionAffinity'] = sessionAffinity;
    map['timeout'] = timeout;
    map['volumes'] =
        Input.encodeList<GoogleCloudRunV2VolumeResponse, Map<String, dynamic>>(
            volumes, (value) => value.toMap());
    map['vpcAccess'] = vpcAccess.toMap();
    return map;
  }

  factory GoogleCloudRunV2RevisionTemplateResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRunV2RevisionTemplateResponse(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      containers: Input.decodeList<GoogleCloudRunV2ContainerResponse>(
          map['containers'],
          (value) => GoogleCloudRunV2ContainerResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      encryptionKey: map['encryptionKey'] as String,
      executionEnvironment: map['executionEnvironment'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      maxInstanceRequestConcurrency:
          map['maxInstanceRequestConcurrency'] as int,
      revision: map['revision'] as String,
      scaling: GoogleCloudRunV2RevisionScalingResponse.fromMap(
          (map['scaling'] as Map).cast<String, dynamic>()),
      serviceAccount: map['serviceAccount'] as String,
      sessionAffinity: map['sessionAffinity'] as bool,
      timeout: map['timeout'] as String,
      volumes: Input.decodeList<GoogleCloudRunV2VolumeResponse>(
          map['volumes'],
          (value) => GoogleCloudRunV2VolumeResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      vpcAccess: GoogleCloudRunV2VpcAccessResponse.fromMap(
          (map['vpcAccess'] as Map).cast<String, dynamic>()),
    );
  }
}
