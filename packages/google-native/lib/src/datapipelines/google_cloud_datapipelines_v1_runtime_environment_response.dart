// ignore_for_file: unused_element, unnecessary_cast


/// The environment values to set at runtime.
class GoogleCloudDatapipelinesV1RuntimeEnvironmentResponse {
  /// Additional experiment flags for the job.
  final List<String> additionalExperiments;
  /// Additional user labels to be specified for the job. Keys and values should follow the restrictions specified in the [labeling restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions) page. An object containing a list of key/value pairs. Example: { "name": "wrench", "mass": "1kg", "count": "3" }.
  final Map<String, String> additionalUserLabels;
  /// Whether to bypass the safety checks for the job's temporary directory. Use with caution.
  final bool bypassTempDirValidation;
  /// Whether to enable Streaming Engine for the job.
  final bool enableStreamingEngine;
  /// Configuration for VM IPs.
  final String ipConfiguration;
  /// Name for the Cloud KMS key for the job. The key format is: projects//locations//keyRings//cryptoKeys/
  final String kmsKeyName;
  /// The machine type to use for the job. Defaults to the value from the template if not specified.
  final String machineType;
  /// The maximum number of Compute Engine instances to be made available to your pipeline during execution, from 1 to 1000.
  final int maxWorkers;
  /// Network to which VMs will be assigned. If empty or unspecified, the service will use the network "default".
  final String network;
  /// The initial number of Compute Engine instances for the job.
  final int numWorkers;
  /// The email address of the service account to run the job as.
  final String serviceAccountEmail;
  /// Subnetwork to which VMs will be assigned, if desired. You can specify a subnetwork using either a complete URL or an abbreviated path. Expected to be of the form "https://www.googleapis.com/compute/v1/projects/HOST_PROJECT_ID/regions/REGION/subnetworks/SUBNETWORK" or "regions/REGION/subnetworks/SUBNETWORK". If the subnetwork is located in a Shared VPC network, you must use the complete URL.
  final String subnetwork;
  /// The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning with `gs://`.
  final String tempLocation;
  /// The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1". Mutually exclusive with worker_zone. If neither worker_region nor worker_zone is specified, default to the control plane's region.
  final String workerRegion;
  /// The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1-a". Mutually exclusive with worker_region. If neither worker_region nor worker_zone is specified, a zone in the control plane's region is chosen based on available capacity. If both `worker_zone` and `zone` are set, `worker_zone` takes precedence.
  final String workerZone;
  /// The Compute Engine [availability zone](https://cloud.google.com/compute/docs/regions-zones/regions-zones) for launching worker instances to run your pipeline. In the future, worker_zone will take precedence.
  final String zone;

  /// Creates a new [GoogleCloudDatapipelinesV1RuntimeEnvironmentResponse].
  /// [additionalExperiments] Additional experiment flags for the job.
  /// [additionalUserLabels] Additional user labels to be specified for the job. Keys and values should follow the restrictions specified in the [labeling restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions) page. An object containing a list of key/value pairs. Example: { "name": "wrench", "mass": "1kg", "count": "3" }.
  /// [bypassTempDirValidation] Whether to bypass the safety checks for the job's temporary directory. Use with caution.
  /// [enableStreamingEngine] Whether to enable Streaming Engine for the job.
  /// [ipConfiguration] Configuration for VM IPs.
  /// [kmsKeyName] Name for the Cloud KMS key for the job. The key format is: projects//locations//keyRings//cryptoKeys/
  /// [machineType] The machine type to use for the job. Defaults to the value from the template if not specified.
  /// [maxWorkers] The maximum number of Compute Engine instances to be made available to your pipeline during execution, from 1 to 1000.
  /// [network] Network to which VMs will be assigned. If empty or unspecified, the service will use the network "default".
  /// [numWorkers] The initial number of Compute Engine instances for the job.
  /// [serviceAccountEmail] The email address of the service account to run the job as.
  /// [subnetwork] Subnetwork to which VMs will be assigned, if desired. You can specify a subnetwork using either a complete URL or an abbreviated path. Expected to be of the form "https://www.googleapis.com/compute/v1/projects/HOST_PROJECT_ID/regions/REGION/subnetworks/SUBNETWORK" or "regions/REGION/subnetworks/SUBNETWORK". If the subnetwork is located in a Shared VPC network, you must use the complete URL.
  /// [tempLocation] The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning with `gs://`.
  /// [workerRegion] The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1". Mutually exclusive with worker_zone. If neither worker_region nor worker_zone is specified, default to the control plane's region.
  /// [workerZone] The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1-a". Mutually exclusive with worker_region. If neither worker_region nor worker_zone is specified, a zone in the control plane's region is chosen based on available capacity. If both `worker_zone` and `zone` are set, `worker_zone` takes precedence.
  /// [zone] The Compute Engine [availability zone](https://cloud.google.com/compute/docs/regions-zones/regions-zones) for launching worker instances to run your pipeline. In the future, worker_zone will take precedence.
  GoogleCloudDatapipelinesV1RuntimeEnvironmentResponse({
    required this.additionalExperiments,
    required this.additionalUserLabels,
    required this.bypassTempDirValidation,
    required this.enableStreamingEngine,
    required this.ipConfiguration,
    required this.kmsKeyName,
    required this.machineType,
    required this.maxWorkers,
    required this.network,
    required this.numWorkers,
    required this.serviceAccountEmail,
    required this.subnetwork,
    required this.tempLocation,
    required this.workerRegion,
    required this.workerZone,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalExperiments': additionalExperiments,
      'additionalUserLabels': additionalUserLabels,
      'bypassTempDirValidation': bypassTempDirValidation,
      'enableStreamingEngine': enableStreamingEngine,
      'ipConfiguration': ipConfiguration,
      'kmsKeyName': kmsKeyName,
      'machineType': machineType,
      'maxWorkers': maxWorkers,
      'network': network,
      'numWorkers': numWorkers,
      'serviceAccountEmail': serviceAccountEmail,
      'subnetwork': subnetwork,
      'tempLocation': tempLocation,
      'workerRegion': workerRegion,
      'workerZone': workerZone,
      'zone': zone,
    };
  }

  factory GoogleCloudDatapipelinesV1RuntimeEnvironmentResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatapipelinesV1RuntimeEnvironmentResponse(
      additionalExperiments: (map['additionalExperiments'] as List).cast<String>(),
      additionalUserLabels: (map['additionalUserLabels'] as Map).cast<String, String>(),
      bypassTempDirValidation: map['bypassTempDirValidation'] as bool,
      enableStreamingEngine: map['enableStreamingEngine'] as bool,
      ipConfiguration: map['ipConfiguration'] as String,
      kmsKeyName: map['kmsKeyName'] as String,
      machineType: map['machineType'] as String,
      maxWorkers: map['maxWorkers'] as int,
      network: map['network'] as String,
      numWorkers: map['numWorkers'] as int,
      serviceAccountEmail: map['serviceAccountEmail'] as String,
      subnetwork: map['subnetwork'] as String,
      tempLocation: map['tempLocation'] as String,
      workerRegion: map['workerRegion'] as String,
      workerZone: map['workerZone'] as String,
      zone: map['zone'] as String,
    );
  }
}

