// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_aiplatform_v1_gcs_destination.dart';
import 'google_cloud_aiplatform_v1_scheduling.dart';
import 'google_cloud_aiplatform_v1_worker_pool_spec.dart';

/// Represents the spec of a CustomJob.
class GoogleCloudAiplatformV1CustomJobSpec {
  /// The Cloud Storage location to store the output of this CustomJob or HyperparameterTuningJob. For HyperparameterTuningJob, the baseOutputDirectory of each child CustomJob backing a Trial is set to a subdirectory of name id under its parent HyperparameterTuningJob's baseOutputDirectory. The following Vertex AI environment variables will be passed to containers or python modules when this field is set: For CustomJob: * AIP_MODEL_DIR = `/model/` * AIP_CHECKPOINT_DIR = `/checkpoints/` * AIP_TENSORBOARD_LOG_DIR = `/logs/` For CustomJob backing a Trial of HyperparameterTuningJob: * AIP_MODEL_DIR = `//model/` * AIP_CHECKPOINT_DIR = `//checkpoints/` * AIP_TENSORBOARD_LOG_DIR = `//logs/`
  final GoogleCloudAiplatformV1GcsDestination? baseOutputDirectory;

  /// Optional. Whether you want Vertex AI to enable access to the customized dashboard in training chief container. If set to `true`, you can access the dashboard at the URIs given by CustomJob.web_access_uris or Trial.web_access_uris (within HyperparameterTuningJob.trials).
  final bool? enableDashboardAccess;

  /// Optional. Whether you want Vertex AI to enable [interactive shell access](https://cloud.google.com/vertex-ai/docs/training/monitor-debug-interactive-shell) to training containers. If set to `true`, you can access interactive shells at the URIs given by CustomJob.web_access_uris or Trial.web_access_uris (within HyperparameterTuningJob.trials).
  final bool? enableWebAccess;

  /// Optional. The Experiment associated with this job. Format: `projects/{project}/locations/{location}/metadataStores/{metadataStores}/contexts/{experiment-name}`
  final String? experiment;

  /// Optional. The Experiment Run associated with this job. Format: `projects/{project}/locations/{location}/metadataStores/{metadataStores}/contexts/{experiment-name}-{experiment-run-name}`
  final String? experimentRun;

  /// Optional. The full name of the Compute Engine [network](/compute/docs/networks-and-firewalls#networks) to which the Job should be peered. For example, `projects/12345/global/networks/myVPC`. [Format](/compute/docs/reference/rest/v1/networks/insert) is of the form `projects/{project}/global/networks/{network}`. Where {project} is a project number, as in `12345`, and {network} is a network name. To specify this field, you must have already [configured VPC Network Peering for Vertex AI](https://cloud.google.com/vertex-ai/docs/general/vpc-peering). If this field is left unspecified, the job is not peered with any network.
  final String? network;

  /// The ID of the location to store protected artifacts. e.g. us-central1. Populate only when the location is different than CustomJob location. List of supported locations: https://cloud.google.com/vertex-ai/docs/general/locations
  final String? protectedArtifactLocationId;

  /// Optional. A list of names for the reserved ip ranges under the VPC network that can be used for this job. If set, we will deploy the job within the provided ip ranges. Otherwise, the job will be deployed to any ip ranges under the provided VPC network. Example: ['vertex-ai-ip-range'].
  final List<String>? reservedIpRanges;

  /// Scheduling options for a CustomJob.
  final GoogleCloudAiplatformV1Scheduling? scheduling;

  /// Specifies the service account for workload run-as account. Users submitting jobs must have act-as permission on this run-as account. If unspecified, the [Vertex AI Custom Code Service Agent](https://cloud.google.com/vertex-ai/docs/general/access-control#service-agents) for the CustomJob's project is used.
  final String? serviceAccount;

  /// Optional. The name of a Vertex AI Tensorboard resource to which this CustomJob will upload Tensorboard logs. Format: `projects/{project}/locations/{location}/tensorboards/{tensorboard}`
  final String? tensorboard;

  /// The spec of the worker pools including machine type and Docker image. All worker pools except the first one are optional and can be skipped by providing an empty value.
  final List<GoogleCloudAiplatformV1WorkerPoolSpec> workerPoolSpecs;

  GoogleCloudAiplatformV1CustomJobSpec({
    this.baseOutputDirectory,
    this.enableDashboardAccess,
    this.enableWebAccess,
    this.experiment,
    this.experimentRun,
    this.network,
    this.protectedArtifactLocationId,
    this.reservedIpRanges,
    this.scheduling,
    this.serviceAccount,
    this.tensorboard,
    required this.workerPoolSpecs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final baseOutputDirectoryValue = baseOutputDirectory;
    if (baseOutputDirectoryValue != null) {
      map['baseOutputDirectory'] = baseOutputDirectoryValue.toMap();
    }
    final enableDashboardAccessValue = enableDashboardAccess;
    if (enableDashboardAccessValue != null) {
      map['enableDashboardAccess'] = enableDashboardAccessValue;
    }
    final enableWebAccessValue = enableWebAccess;
    if (enableWebAccessValue != null) {
      map['enableWebAccess'] = enableWebAccessValue;
    }
    final experimentValue = experiment;
    if (experimentValue != null) {
      map['experiment'] = experimentValue;
    }
    final experimentRunValue = experimentRun;
    if (experimentRunValue != null) {
      map['experimentRun'] = experimentRunValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final protectedArtifactLocationIdValue = protectedArtifactLocationId;
    if (protectedArtifactLocationIdValue != null) {
      map['protectedArtifactLocationId'] = protectedArtifactLocationIdValue;
    }
    final reservedIpRangesValue = reservedIpRanges;
    if (reservedIpRangesValue != null) {
      map['reservedIpRanges'] = reservedIpRangesValue;
    }
    final schedulingValue = scheduling;
    if (schedulingValue != null) {
      map['scheduling'] = schedulingValue.toMap();
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    final tensorboardValue = tensorboard;
    if (tensorboardValue != null) {
      map['tensorboard'] = tensorboardValue;
    }
    map['workerPoolSpecs'] = Input.encodeList<
        GoogleCloudAiplatformV1WorkerPoolSpec,
        Map<String, dynamic>>(workerPoolSpecs, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudAiplatformV1CustomJobSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1CustomJobSpec(
      baseOutputDirectory: map['baseOutputDirectory'] == null
          ? null
          : GoogleCloudAiplatformV1GcsDestination.fromMap(
              (map['baseOutputDirectory'] as Map).cast<String, dynamic>()),
      enableDashboardAccess: map['enableDashboardAccess'] == null
          ? null
          : map['enableDashboardAccess'] as bool,
      enableWebAccess: map['enableWebAccess'] == null
          ? null
          : map['enableWebAccess'] as bool,
      experiment:
          map['experiment'] == null ? null : map['experiment'] as String,
      experimentRun:
          map['experimentRun'] == null ? null : map['experimentRun'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      protectedArtifactLocationId: map['protectedArtifactLocationId'] == null
          ? null
          : map['protectedArtifactLocationId'] as String,
      reservedIpRanges: map['reservedIpRanges'] == null
          ? null
          : (map['reservedIpRanges'] as List).cast<String>(),
      scheduling: map['scheduling'] == null
          ? null
          : GoogleCloudAiplatformV1Scheduling.fromMap(
              (map['scheduling'] as Map).cast<String, dynamic>()),
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      tensorboard:
          map['tensorboard'] == null ? null : map['tensorboard'] as String,
      workerPoolSpecs: Input.decodeList<GoogleCloudAiplatformV1WorkerPoolSpec>(
          map['workerPoolSpecs'],
          (value) => GoogleCloudAiplatformV1WorkerPoolSpec.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
