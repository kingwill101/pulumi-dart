// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'debug_options.dart';
import 'environment_flex_resource_scheduling_goal.dart';
import 'worker_pool.dart';

/// Describes the environment in which a Dataflow Job runs.
class Environment {
  /// The type of cluster manager API to use. If unknown or unspecified, the service will attempt to choose a reasonable default. This should be in the form of the API service name, e.g. "compute.googleapis.com".
  final String? clusterManagerApiService;
  /// The dataset for the current project where various workflow related tables are stored. The supported resource type is: Google BigQuery: bigquery.googleapis.com/{dataset}
  final String? dataset;
  /// Any debugging options to be supplied to the job.
  final DebugOptions? debugOptions;
  /// The list of experiments to enable. This field should be used for SDK related experiments and not for service related experiments. The proper field for service related experiments is service_options.
  final List<String>? experiments;
  /// Which Flexible Resource Scheduling mode to run in.
  final EnvironmentFlexResourceSchedulingGoal? flexResourceSchedulingGoal;
  /// Experimental settings.
  final Map<String, String>? internalExperiments;
  /// The Cloud Dataflow SDK pipeline options specified by the user. These options are passed through the service and are used to recreate the SDK pipeline options on the worker in a language agnostic and platform independent way.
  final Map<String, String>? sdkPipelineOptions;
  /// Identity to run virtual machines as. Defaults to the default account.
  final String? serviceAccountEmail;
  /// If set, contains the Cloud KMS key identifier used to encrypt data at rest, AKA a Customer Managed Encryption Key (CMEK). Format: projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY
  final String? serviceKmsKeyName;
  /// The list of service options to enable. This field should be used for service related experiments only. These experiments, when graduating to GA, should be replaced by dedicated fields or become default (i.e. always on).
  final List<String>? serviceOptions;
  /// The prefix of the resources the system should use for temporary storage. The system will append the suffix "/temp-{JOBNAME} to this resource prefix, where {JOBNAME} is the value of the job_name field. The resulting bucket and object prefix is used as the prefix of the resources used to store temporary data needed during the job execution. NOTE: This will override the value in taskrunner_settings. The supported resource type is: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}
  final String? tempStoragePrefix;
  /// A description of the process that generated the request.
  final Map<String, String>? userAgent;
  /// A structure describing which components and their versions of the service are required in order to run the job.
  final Map<String, String>? version;
  /// The worker pools. At least one "harness" worker pool must be specified in order for the job to have workers.
  final List<WorkerPool>? workerPools;
  /// The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1". Mutually exclusive with worker_zone. If neither worker_region nor worker_zone is specified, default to the control plane's region.
  final String? workerRegion;
  /// The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1-a". Mutually exclusive with worker_region. If neither worker_region nor worker_zone is specified, a zone in the control plane's region is chosen based on available capacity.
  final String? workerZone;

  /// Creates a new [Environment].
  /// [clusterManagerApiService] The type of cluster manager API to use. If unknown or unspecified, the service will attempt to choose a reasonable default. This should be in the form of the API service name, e.g. "compute.googleapis.com".
  /// [dataset] The dataset for the current project where various workflow related tables are stored. The supported resource type is: Google BigQuery: bigquery.googleapis.com/{dataset}
  /// [debugOptions] Any debugging options to be supplied to the job.
  /// [experiments] The list of experiments to enable. This field should be used for SDK related experiments and not for service related experiments. The proper field for service related experiments is service_options.
  /// [flexResourceSchedulingGoal] Which Flexible Resource Scheduling mode to run in.
  /// [internalExperiments] Experimental settings.
  /// [sdkPipelineOptions] The Cloud Dataflow SDK pipeline options specified by the user. These options are passed through the service and are used to recreate the SDK pipeline options on the worker in a language agnostic and platform independent way.
  /// [serviceAccountEmail] Identity to run virtual machines as. Defaults to the default account.
  /// [serviceKmsKeyName] If set, contains the Cloud KMS key identifier used to encrypt data at rest, AKA a Customer Managed Encryption Key (CMEK). Format: projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY
  /// [serviceOptions] The list of service options to enable. This field should be used for service related experiments only. These experiments, when graduating to GA, should be replaced by dedicated fields or become default (i.e. always on).
  /// [tempStoragePrefix] The prefix of the resources the system should use for temporary storage. The system will append the suffix "/temp-{JOBNAME} to this resource prefix, where {JOBNAME} is the value of the job_name field. The resulting bucket and object prefix is used as the prefix of the resources used to store temporary data needed during the job execution. NOTE: This will override the value in taskrunner_settings. The supported resource type is: Google Cloud Storage: storage.googleapis.com/{bucket}/{object} bucket.storage.googleapis.com/{object}
  /// [userAgent] A description of the process that generated the request.
  /// [version] A structure describing which components and their versions of the service are required in order to run the job.
  /// [workerPools] The worker pools. At least one "harness" worker pool must be specified in order for the job to have workers.
  /// [workerRegion] The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1". Mutually exclusive with worker_zone. If neither worker_region nor worker_zone is specified, default to the control plane's region.
  /// [workerZone] The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1-a". Mutually exclusive with worker_region. If neither worker_region nor worker_zone is specified, a zone in the control plane's region is chosen based on available capacity.
  Environment({
    this.clusterManagerApiService,
    this.dataset,
    this.debugOptions,
    this.experiments,
    this.flexResourceSchedulingGoal,
    this.internalExperiments,
    this.sdkPipelineOptions,
    this.serviceAccountEmail,
    this.serviceKmsKeyName,
    this.serviceOptions,
    this.tempStoragePrefix,
    this.userAgent,
    this.version,
    this.workerPools,
    this.workerRegion,
    this.workerZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterManagerApiService': ?clusterManagerApiService,
      'dataset': ?dataset,
      'debugOptions': ?debugOptions == null ? null : debugOptions!.toMap(),
      'experiments': ?experiments,
      'flexResourceSchedulingGoal': ?flexResourceSchedulingGoal == null ? null : flexResourceSchedulingGoal!.value,
      'internalExperiments': ?internalExperiments,
      'sdkPipelineOptions': ?sdkPipelineOptions,
      'serviceAccountEmail': ?serviceAccountEmail,
      'serviceKmsKeyName': ?serviceKmsKeyName,
      'serviceOptions': ?serviceOptions,
      'tempStoragePrefix': ?tempStoragePrefix,
      'userAgent': ?userAgent,
      'version': ?version,
      'workerPools': ?workerPools == null ? null : pulumi.Input.encodeList<WorkerPool, Map<String, dynamic>>(workerPools!, (value) => value.toMap()),
      'workerRegion': ?workerRegion,
      'workerZone': ?workerZone,
    };
  }

  factory Environment.fromMap(Map<String, dynamic> map) {
    return Environment(
      clusterManagerApiService: map['clusterManagerApiService'] == null ? null : map['clusterManagerApiService'] as String,
      dataset: map['dataset'] == null ? null : map['dataset'] as String,
      debugOptions: map['debugOptions'] == null ? null : DebugOptions.fromMap((map['debugOptions'] as Map).cast<String, dynamic>()),
      experiments: map['experiments'] == null ? null : (map['experiments'] as List).cast<String>(),
      flexResourceSchedulingGoal: map['flexResourceSchedulingGoal'] == null ? null : EnvironmentFlexResourceSchedulingGoal.fromValue(map['flexResourceSchedulingGoal'] as String),
      internalExperiments: map['internalExperiments'] == null ? null : (map['internalExperiments'] as Map).cast<String, String>(),
      sdkPipelineOptions: map['sdkPipelineOptions'] == null ? null : (map['sdkPipelineOptions'] as Map).cast<String, String>(),
      serviceAccountEmail: map['serviceAccountEmail'] == null ? null : map['serviceAccountEmail'] as String,
      serviceKmsKeyName: map['serviceKmsKeyName'] == null ? null : map['serviceKmsKeyName'] as String,
      serviceOptions: map['serviceOptions'] == null ? null : (map['serviceOptions'] as List).cast<String>(),
      tempStoragePrefix: map['tempStoragePrefix'] == null ? null : map['tempStoragePrefix'] as String,
      userAgent: map['userAgent'] == null ? null : (map['userAgent'] as Map).cast<String, String>(),
      version: map['version'] == null ? null : (map['version'] as Map).cast<String, String>(),
      workerPools: map['workerPools'] == null ? null : pulumi.Input.decodeList<WorkerPool>(map['workerPools'], (value) => WorkerPool.fromMap((value as Map).cast<String, dynamic>())),
      workerRegion: map['workerRegion'] == null ? null : map['workerRegion'] as String,
      workerZone: map['workerZone'] == null ? null : map['workerZone'] as String,
    );
  }
}

