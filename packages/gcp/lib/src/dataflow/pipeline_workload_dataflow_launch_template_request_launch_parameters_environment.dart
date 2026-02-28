// ignore_for_file: unused_element, unnecessary_cast

class PipelineWorkloadDataflowLaunchTemplateRequestLaunchParametersEnvironment {
  /// Additional experiment flags for the job.
  final List<String>? additionalExperiments;

  /// Additional user labels to be specified for the job. Keys and values should follow the restrictions specified in the labeling restrictions page. An object containing a list of key/value pairs.
  /// 'Example: { "name": "wrench", "mass": "1kg", "count": "3" }.'
  /// 'An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.'
  final Map<String, String>? additionalUserLabels;

  /// Whether to bypass the safety checks for the job's temporary directory. Use with caution.
  final bool? bypassTempDirValidation;

  /// Whether to enable Streaming Engine for the job.
  final bool? enableStreamingEngine;

  /// Configuration for VM IPs.
  /// https://cloud.google.com/dataflow/docs/reference/data-pipelines/rest/v1/projects.locations.pipelines#WorkerIPAddressConfiguration
  /// Possible values are: `WORKER_IP_UNSPECIFIED`, `WORKER_IP_PUBLIC`, `WORKER_IP_PRIVATE`.
  final String? ipConfiguration;

  /// 'Name for the Cloud KMS key for the job. The key format is: projects//locations//keyRings//cryptoKeys/'
  final String? kmsKeyName;

  /// The machine type to use for the job. Defaults to the value from the template if not specified.
  final String? machineType;

  /// The maximum number of Compute Engine instances to be made available to your pipeline during execution, from 1 to 1000.
  final int? maxWorkers;

  /// Network to which VMs will be assigned. If empty or unspecified, the service will use the network "default".
  final String? network;

  /// The initial number of Compute Engine instances for the job.
  final int? numWorkers;

  /// The email address of the service account to run the job as.
  final String? serviceAccountEmail;

  /// Subnetwork to which VMs will be assigned, if desired. You can specify a subnetwork using either a complete URL or an abbreviated path. Expected to be of the form "https://www.googleapis.com/compute/v1/projects/HOST_PROJECT_ID/regions/REGION/subnetworks/SUBNETWORK" or "regions/REGION/subnetworks/SUBNETWORK". If the subnetwork is located in a Shared VPC network, you must use the complete URL.
  final String? subnetwork;

  /// The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning with gs://.
  final String? tempLocation;

  /// The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1". Mutually exclusive with workerZone. If neither workerRegion nor workerZone is specified, default to the control plane's region.
  final String? workerRegion;

  /// The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1-a". Mutually exclusive with workerRegion. If neither workerRegion nor workerZone is specified, a zone in the control plane's region is chosen based on available capacity. If both workerZone and zone are set, workerZone takes precedence.
  final String? workerZone;

  /// The Compute Engine availability zone for launching worker instances to run your pipeline. In the future, workerZone will take precedence.
  final String? zone;

  /// Creates a new [PipelineWorkloadDataflowLaunchTemplateRequestLaunchParametersEnvironment].
  /// [additionalExperiments] Additional experiment flags for the job.
  /// [additionalUserLabels] Additional user labels to be specified for the job. Keys and values should follow the restrictions specified in the labeling restrictions page. An object containing a list of key/value pairs.
  /// [bypassTempDirValidation] Whether to bypass the safety checks for the job's temporary directory. Use with caution.
  /// [enableStreamingEngine] Whether to enable Streaming Engine for the job.
  /// [ipConfiguration] Configuration for VM IPs.
  /// [kmsKeyName] 'Name for the Cloud KMS key for the job. The key format is: projects//locations//keyRings//cryptoKeys/'
  /// [machineType] The machine type to use for the job. Defaults to the value from the template if not specified.
  /// [maxWorkers] The maximum number of Compute Engine instances to be made available to your pipeline during execution, from 1 to 1000.
  /// [network] Network to which VMs will be assigned. If empty or unspecified, the service will use the network "default".
  /// [numWorkers] The initial number of Compute Engine instances for the job.
  /// [serviceAccountEmail] The email address of the service account to run the job as.
  /// [subnetwork] Subnetwork to which VMs will be assigned, if desired. You can specify a subnetwork using either a complete URL or an abbreviated path. Expected to be of the form "https://www.googleapis.com/compute/v1/projects/HOST_PROJECT_ID/regions/REGION/subnetworks/SUBNETWORK" or "regions/REGION/subnetworks/SUBNETWORK". If the subnetwork is located in a Shared VPC network, you must use the complete URL.
  /// [tempLocation] The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning with gs://.
  /// [workerRegion] The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1". Mutually exclusive with workerZone. If neither workerRegion nor workerZone is specified, default to the control plane's region.
  /// [workerZone] The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1-a". Mutually exclusive with workerRegion. If neither workerRegion nor workerZone is specified, a zone in the control plane's region is chosen based on available capacity. If both workerZone and zone are set, workerZone takes precedence.
  /// [zone] The Compute Engine availability zone for launching worker instances to run your pipeline. In the future, workerZone will take precedence.
  PipelineWorkloadDataflowLaunchTemplateRequestLaunchParametersEnvironment({
    this.additionalExperiments,
    this.additionalUserLabels,
    this.bypassTempDirValidation,
    this.enableStreamingEngine,
    this.ipConfiguration,
    this.kmsKeyName,
    this.machineType,
    this.maxWorkers,
    this.network,
    this.numWorkers,
    this.serviceAccountEmail,
    this.subnetwork,
    this.tempLocation,
    this.workerRegion,
    this.workerZone,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalExperimentsValue = additionalExperiments;
    if (additionalExperimentsValue != null) {
      map['additionalExperiments'] = additionalExperimentsValue;
    }
    final additionalUserLabelsValue = additionalUserLabels;
    if (additionalUserLabelsValue != null) {
      map['additionalUserLabels'] = additionalUserLabelsValue;
    }
    final bypassTempDirValidationValue = bypassTempDirValidation;
    if (bypassTempDirValidationValue != null) {
      map['bypassTempDirValidation'] = bypassTempDirValidationValue;
    }
    final enableStreamingEngineValue = enableStreamingEngine;
    if (enableStreamingEngineValue != null) {
      map['enableStreamingEngine'] = enableStreamingEngineValue;
    }
    final ipConfigurationValue = ipConfiguration;
    if (ipConfigurationValue != null) {
      map['ipConfiguration'] = ipConfigurationValue;
    }
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
    }
    final machineTypeValue = machineType;
    if (machineTypeValue != null) {
      map['machineType'] = machineTypeValue;
    }
    final maxWorkersValue = maxWorkers;
    if (maxWorkersValue != null) {
      map['maxWorkers'] = maxWorkersValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final numWorkersValue = numWorkers;
    if (numWorkersValue != null) {
      map['numWorkers'] = numWorkersValue;
    }
    final serviceAccountEmailValue = serviceAccountEmail;
    if (serviceAccountEmailValue != null) {
      map['serviceAccountEmail'] = serviceAccountEmailValue;
    }
    final subnetworkValue = subnetwork;
    if (subnetworkValue != null) {
      map['subnetwork'] = subnetworkValue;
    }
    final tempLocationValue = tempLocation;
    if (tempLocationValue != null) {
      map['tempLocation'] = tempLocationValue;
    }
    final workerRegionValue = workerRegion;
    if (workerRegionValue != null) {
      map['workerRegion'] = workerRegionValue;
    }
    final workerZoneValue = workerZone;
    if (workerZoneValue != null) {
      map['workerZone'] = workerZoneValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory PipelineWorkloadDataflowLaunchTemplateRequestLaunchParametersEnvironment.fromMap(
      Map<String, dynamic> map) {
    return PipelineWorkloadDataflowLaunchTemplateRequestLaunchParametersEnvironment(
      additionalExperiments: map['additionalExperiments'] == null
          ? null
          : (map['additionalExperiments'] as List).cast<String>(),
      additionalUserLabels: map['additionalUserLabels'] == null
          ? null
          : (map['additionalUserLabels'] as Map).cast<String, String>(),
      bypassTempDirValidation: map['bypassTempDirValidation'] == null
          ? null
          : map['bypassTempDirValidation'] as bool,
      enableStreamingEngine: map['enableStreamingEngine'] == null
          ? null
          : map['enableStreamingEngine'] as bool,
      ipConfiguration: map['ipConfiguration'] == null
          ? null
          : map['ipConfiguration'] as String,
      kmsKeyName:
          map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
      machineType:
          map['machineType'] == null ? null : map['machineType'] as String,
      maxWorkers: map['maxWorkers'] == null ? null : map['maxWorkers'] as int,
      network: map['network'] == null ? null : map['network'] as String,
      numWorkers: map['numWorkers'] == null ? null : map['numWorkers'] as int,
      serviceAccountEmail: map['serviceAccountEmail'] == null
          ? null
          : map['serviceAccountEmail'] as String,
      subnetwork:
          map['subnetwork'] == null ? null : map['subnetwork'] as String,
      tempLocation:
          map['tempLocation'] == null ? null : map['tempLocation'] as String,
      workerRegion:
          map['workerRegion'] == null ? null : map['workerRegion'] as String,
      workerZone:
          map['workerZone'] == null ? null : map['workerZone'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
