// ignore_for_file: unused_element, unnecessary_cast

import 'runtime_environment_ip_configuration.dart';

/// The environment values to set at runtime.
class RuntimeEnvironment {
  /// Optional. Additional experiment flags for the job, specified with the `--experiments` option.
  final List<String>? additionalExperiments;
  /// Optional. Additional user labels to be specified for the job. Keys and values should follow the restrictions specified in the [labeling restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions) page. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1kg", "count": "3" }.
  final Map<String, String>? additionalUserLabels;
  /// Optional. Whether to bypass the safety checks for the job's temporary directory. Use with caution.
  final bool? bypassTempDirValidation;
  /// Optional. The disk size, in gigabytes, to use on each remote Compute Engine worker instance.
  final int? diskSizeGb;
  /// Optional. Whether to enable Streaming Engine for the job.
  final bool? enableStreamingEngine;
  /// Optional. Configuration for VM IPs.
  final RuntimeEnvironmentIpConfiguration? ipConfiguration;
  /// Optional. Name for the Cloud KMS key for the job. Key format is: projects//locations//keyRings//cryptoKeys/
  final String? kmsKeyName;
  /// Optional. The machine type to use for the job. Defaults to the value from the template if not specified.
  final String? machineType;
  /// Optional. The maximum number of Google Compute Engine instances to be made available to your pipeline during execution, from 1 to 1000. The default value is 1.
  final int? maxWorkers;
  /// Optional. Network to which VMs will be assigned. If empty or unspecified, the service will use the network "default".
  final String? network;
  /// Optional. The initial number of Google Compute Engine instances for the job. The default value is 11.
  final int? numWorkers;
  /// Optional. The email address of the service account to run the job as.
  final String? serviceAccountEmail;
  /// Optional. Subnetwork to which VMs will be assigned, if desired. You can specify a subnetwork using either a complete URL or an abbreviated path. Expected to be of the form "https://www.googleapis.com/compute/v1/projects/HOST_PROJECT_ID/regions/REGION/subnetworks/SUBNETWORK" or "regions/REGION/subnetworks/SUBNETWORK". If the subnetwork is located in a Shared VPC network, you must use the complete URL.
  final String? subnetwork;
  /// The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning with `gs://`.
  final String tempLocation;
  /// The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1". Mutually exclusive with worker_zone. If neither worker_region nor worker_zone is specified, default to the control plane's region.
  final String workerRegion;
  /// Optional. The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1-a". Mutually exclusive with worker_region. If neither worker_region nor worker_zone is specified, a zone in the control plane's region is chosen based on available capacity. If both `worker_zone` and `zone` are set, `worker_zone` takes precedence.
  final String? workerZone;
  /// Optional. The Compute Engine [availability zone](https://cloud.google.com/compute/docs/regions-zones/regions-zones) for launching worker instances to run your pipeline. In the future, worker_zone will take precedence.
  final String? zone;

  /// Creates a new [RuntimeEnvironment].
  /// [additionalExperiments] Optional. Additional experiment flags for the job, specified with the `--experiments` option.
  /// [additionalUserLabels] Optional. Additional user labels to be specified for the job. Keys and values should follow the restrictions specified in the [labeling restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions) page. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1kg", "count": "3" }.
  /// [bypassTempDirValidation] Optional. Whether to bypass the safety checks for the job's temporary directory. Use with caution.
  /// [diskSizeGb] Optional. The disk size, in gigabytes, to use on each remote Compute Engine worker instance.
  /// [enableStreamingEngine] Optional. Whether to enable Streaming Engine for the job.
  /// [ipConfiguration] Optional. Configuration for VM IPs.
  /// [kmsKeyName] Optional. Name for the Cloud KMS key for the job. Key format is: projects//locations//keyRings//cryptoKeys/
  /// [machineType] Optional. The machine type to use for the job. Defaults to the value from the template if not specified.
  /// [maxWorkers] Optional. The maximum number of Google Compute Engine instances to be made available to your pipeline during execution, from 1 to 1000. The default value is 1.
  /// [network] Optional. Network to which VMs will be assigned. If empty or unspecified, the service will use the network "default".
  /// [numWorkers] Optional. The initial number of Google Compute Engine instances for the job. The default value is 11.
  /// [serviceAccountEmail] Optional. The email address of the service account to run the job as.
  /// [subnetwork] Optional. Subnetwork to which VMs will be assigned, if desired. You can specify a subnetwork using either a complete URL or an abbreviated path. Expected to be of the form "https://www.googleapis.com/compute/v1/projects/HOST_PROJECT_ID/regions/REGION/subnetworks/SUBNETWORK" or "regions/REGION/subnetworks/SUBNETWORK". If the subnetwork is located in a Shared VPC network, you must use the complete URL.
  /// [tempLocation] The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning with `gs://`.
  /// [workerRegion] The Compute Engine region (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1". Mutually exclusive with worker_zone. If neither worker_region nor worker_zone is specified, default to the control plane's region.
  /// [workerZone] Optional. The Compute Engine zone (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in which worker processing should occur, e.g. "us-west1-a". Mutually exclusive with worker_region. If neither worker_region nor worker_zone is specified, a zone in the control plane's region is chosen based on available capacity. If both `worker_zone` and `zone` are set, `worker_zone` takes precedence.
  /// [zone] Optional. The Compute Engine [availability zone](https://cloud.google.com/compute/docs/regions-zones/regions-zones) for launching worker instances to run your pipeline. In the future, worker_zone will take precedence.
  RuntimeEnvironment({
    this.additionalExperiments,
    this.additionalUserLabels,
    this.bypassTempDirValidation,
    this.diskSizeGb,
    this.enableStreamingEngine,
    this.ipConfiguration,
    this.kmsKeyName,
    this.machineType,
    this.maxWorkers,
    this.network,
    this.numWorkers,
    this.serviceAccountEmail,
    this.subnetwork,
    required this.tempLocation,
    required this.workerRegion,
    this.workerZone,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalExperiments': ?additionalExperiments,
      'additionalUserLabels': ?additionalUserLabels,
      'bypassTempDirValidation': ?bypassTempDirValidation,
      'diskSizeGb': ?diskSizeGb,
      'enableStreamingEngine': ?enableStreamingEngine,
      'ipConfiguration': ?ipConfiguration == null ? null : ipConfiguration!.value,
      'kmsKeyName': ?kmsKeyName,
      'machineType': ?machineType,
      'maxWorkers': ?maxWorkers,
      'network': ?network,
      'numWorkers': ?numWorkers,
      'serviceAccountEmail': ?serviceAccountEmail,
      'subnetwork': ?subnetwork,
      'tempLocation': tempLocation,
      'workerRegion': workerRegion,
      'workerZone': ?workerZone,
      'zone': ?zone,
    };
  }

  factory RuntimeEnvironment.fromMap(Map<String, dynamic> map) {
    return RuntimeEnvironment(
      additionalExperiments: map['additionalExperiments'] == null ? null : (map['additionalExperiments'] as List).cast<String>(),
      additionalUserLabels: map['additionalUserLabels'] == null ? null : (map['additionalUserLabels'] as Map).cast<String, String>(),
      bypassTempDirValidation: map['bypassTempDirValidation'] == null ? null : map['bypassTempDirValidation'] as bool,
      diskSizeGb: map['diskSizeGb'] == null ? null : map['diskSizeGb'] as int,
      enableStreamingEngine: map['enableStreamingEngine'] == null ? null : map['enableStreamingEngine'] as bool,
      ipConfiguration: map['ipConfiguration'] == null ? null : RuntimeEnvironmentIpConfiguration.fromValue(map['ipConfiguration'] as String),
      kmsKeyName: map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
      machineType: map['machineType'] == null ? null : map['machineType'] as String,
      maxWorkers: map['maxWorkers'] == null ? null : map['maxWorkers'] as int,
      network: map['network'] == null ? null : map['network'] as String,
      numWorkers: map['numWorkers'] == null ? null : map['numWorkers'] as int,
      serviceAccountEmail: map['serviceAccountEmail'] == null ? null : map['serviceAccountEmail'] as String,
      subnetwork: map['subnetwork'] == null ? null : map['subnetwork'] as String,
      tempLocation: map['tempLocation'] as String,
      workerRegion: map['workerRegion'] as String,
      workerZone: map['workerZone'] == null ? null : map['workerZone'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}

