// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'debug_options_response.dart';
import 'worker_pool_response.dart';

/// Describes the environment in which a Dataflow Job runs.
class EnvironmentResponse3 {
  /// The type of cluster manager API to use. If unknown or unspecified, the service will attempt to choose a reasonable default. This should be in the form of the API service name, e.g. "compute.googleapis.com".
  final String clusterManagerApiService;

  /// The dataset for the current project where various workflow related tables are stored. The supported resource type is: Google BigQuery: bigquery.googleapis.com/{dataset}
  final String dataset;

  /// Any debugging options to be supplied to the job.
  final DebugOptionsResponse debugOptions;

  /// The list of experiments to enable. This field should be used for SDK related experiments and not for service related experiments. The proper field for service related experiments is service_options.
  final List<String> experiments;

  /// Which Flexible Resource Scheduling mode to run in.
  final String flexResourceSchedulingGoal;

  /// Experimental settings.
  final Map<String, String> internalExperiments;

  /// The Cloud Dataflow SDK pipeline options specified by the user. These options are passed through the service and are used to recreate the SDK pipeline options on the worker in a language agnostic and platform independent way.
  final Map<String, String> sdkPipelineOptions;

  /// Identity to run virtual machines as. Defaults to the default account.
  final String serviceAccountEmail;

  /// If set, contains the Cloud KMS key identifier used to encrypt data at rest, AKA a Customer Managed Encryption Key (CMEK). Format: projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY
  final String serviceKmsKeyName;

  /// The list of service options to enable. This field should be used for service related experiments only. These experiments, when graduating to GA, should be replaced by dedicated fields or become default (i.e. always on).
  final List<String> serviceOptions;

  /// The shuffle mode used for the job.
  final String shuffleMode;

  /// The prefix of the resources the system should use for temporary storage. The system will append the suffix "/temp-{JOBNAME} to this resource prefix, where {JOBNAME} is the value of the job_name field. The resulting bucket and object prefix is used as the prefix of the resources used to store temporary data needed during the job execution. NOTE: This will override the value in taskrunner_settings. The supported resource type is: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}
  final String tempStoragePrefix;

  /// Whether the job uses the new streaming engine billing model based on resource usage.
  final bool useStreamingEngineResourceBasedBilling;

  /// A description of the process that generated the request.
  final Map<String, String> userAgent;

  /// A structure describing which components and their versions of the service are required in order to run the job.
  final Map<String, String> version;

  /// The worker pools. At least one "harness" worker pool must be specified in order for the job to have workers.
  final List<WorkerPoolResponse> workerPools;

  /// The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1". Mutually exclusive with worker_zone. If neither worker_region nor worker_zone is specified, default to the control plane's region.
  final String workerRegion;

  /// The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1-a". Mutually exclusive with worker_region. If neither worker_region nor worker_zone is specified, a zone in the control plane's region is chosen based on available capacity.
  final String workerZone;

  EnvironmentResponse3({
    required this.clusterManagerApiService,
    required this.dataset,
    required this.debugOptions,
    required this.experiments,
    required this.flexResourceSchedulingGoal,
    required this.internalExperiments,
    required this.sdkPipelineOptions,
    required this.serviceAccountEmail,
    required this.serviceKmsKeyName,
    required this.serviceOptions,
    required this.shuffleMode,
    required this.tempStoragePrefix,
    required this.useStreamingEngineResourceBasedBilling,
    required this.userAgent,
    required this.version,
    required this.workerPools,
    required this.workerRegion,
    required this.workerZone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterManagerApiService'] = clusterManagerApiService;
    map['dataset'] = dataset;
    map['debugOptions'] = debugOptions.toMap();
    map['experiments'] = experiments;
    map['flexResourceSchedulingGoal'] = flexResourceSchedulingGoal;
    map['internalExperiments'] = internalExperiments;
    map['sdkPipelineOptions'] = sdkPipelineOptions;
    map['serviceAccountEmail'] = serviceAccountEmail;
    map['serviceKmsKeyName'] = serviceKmsKeyName;
    map['serviceOptions'] = serviceOptions;
    map['shuffleMode'] = shuffleMode;
    map['tempStoragePrefix'] = tempStoragePrefix;
    map['useStreamingEngineResourceBasedBilling'] =
        useStreamingEngineResourceBasedBilling;
    map['userAgent'] = userAgent;
    map['version'] = version;
    map['workerPools'] =
        Input.encodeList<WorkerPoolResponse, Map<String, dynamic>>(
            workerPools, (value) => value.toMap());
    map['workerRegion'] = workerRegion;
    map['workerZone'] = workerZone;
    return map;
  }

  factory EnvironmentResponse3.fromMap(Map<String, dynamic> map) {
    return EnvironmentResponse3(
      clusterManagerApiService: map['clusterManagerApiService'] as String,
      dataset: map['dataset'] as String,
      debugOptions: DebugOptionsResponse.fromMap(
          (map['debugOptions'] as Map).cast<String, dynamic>()),
      experiments: (map['experiments'] as List).cast<String>(),
      flexResourceSchedulingGoal: map['flexResourceSchedulingGoal'] as String,
      internalExperiments:
          (map['internalExperiments'] as Map).cast<String, String>(),
      sdkPipelineOptions:
          (map['sdkPipelineOptions'] as Map).cast<String, String>(),
      serviceAccountEmail: map['serviceAccountEmail'] as String,
      serviceKmsKeyName: map['serviceKmsKeyName'] as String,
      serviceOptions: (map['serviceOptions'] as List).cast<String>(),
      shuffleMode: map['shuffleMode'] as String,
      tempStoragePrefix: map['tempStoragePrefix'] as String,
      useStreamingEngineResourceBasedBilling:
          map['useStreamingEngineResourceBasedBilling'] as bool,
      userAgent: (map['userAgent'] as Map).cast<String, String>(),
      version: (map['version'] as Map).cast<String, String>(),
      workerPools: Input.decodeList<WorkerPoolResponse>(
          map['workerPools'],
          (value) => WorkerPoolResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      workerRegion: map['workerRegion'] as String,
      workerZone: map['workerZone'] as String,
    );
  }
}
