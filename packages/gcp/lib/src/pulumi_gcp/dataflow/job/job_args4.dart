// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Job.
class JobArgs4 {
  /// List of experiments that should be used by the job. An example value is `[<span pulumi-lang-nodejs=""enableStackdriverAgentMetrics"" pulumi-lang-dotnet=""EnableStackdriverAgentMetrics"" pulumi-lang-go=""enableStackdriverAgentMetrics"" pulumi-lang-python=""enable_stackdriver_agent_metrics"" pulumi-lang-yaml=""enableStackdriverAgentMetrics"" pulumi-lang-java=""enableStackdriverAgentMetrics"">"enable_stackdriver_agent_metrics"</span>]`.
  final Input<List<String>>? additionalExperiments;

  /// Enable/disable the use of [Streaming Engine](https://cloud.google.com/dataflow/docs/guides/deploying-a-pipeline#streaming-engine) for the job. Note that Streaming Engine is enabled by default for pipelines developed against the Beam SDK for Python v2.21.0 or later when using Python 3.
  final Input<bool>? enableStreamingEngine;

  /// The configuration for VM IPs.  Options are `"WORKER_IP_PUBLIC"` or `"WORKER_IP_PRIVATE"`.
  final Input<String>? ipConfiguration;

  /// The name for the Cloud KMS key for the job. Key format is: `projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY`
  final Input<String>? kmsKeyName;

  /// User labels to be specified for the job. Keys and values should follow the restrictions
  /// specified in the [labeling restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions) page.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration. Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The machine type to use for the job.
  final Input<String>? machineType;

  /// The number of workers permitted to work on the job.  More workers may improve processing speed at additional cost.
  final Input<int>? maxWorkers;

  /// A unique name for the resource, required by Dataflow.
  final Input<String>? name;

  /// The network to which VMs will be assigned. If it is not provided, "default" will be used.
  final Input<String>? network;

  /// One of "drain" or "cancel".  Specifies behavior of deletion during `pulumi destroy`.  See above note.
  final Input<String>? onDelete;

  /// **Template specific** Key/Value pairs to be forwarded to the pipeline's options; keys are
  /// case-sensitive based on the language on which the pipeline is coded, mostly Java.
  /// **Note**: do not configure Dataflow options here in parameters.
  final Input<Map<String, String>>? parameters;

  /// The project in which the resource belongs. If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The region in which the created job should run.
  final Input<String>? region;

  /// The Service Account email used to create the job. This should be just an email e.g. `myserviceaccount@myproject.iam.gserviceaccount.com`. Do not include any `serviceAccount:` or other prefix.
  final Input<String>? serviceAccountEmail;

  /// If set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, Pulumi will treat `DRAINING` and `CANCELLING` as terminal states when deleting the resource, and will remove the resource from Pulumi state and move on.  See above note.
  final Input<bool>? skipWaitOnJobTermination;

  /// The subnetwork to which VMs will be assigned. Should be of the form "regions/REGION/subnetworks/SUBNETWORK". If the [subnetwork is located in a Shared VPC network](https://cloud.google.com/dataflow/docs/guides/specifying-networks#shared), you must use the complete URL. For example `"googleapis.com/compute/v1/projects/PROJECT_ID/regions/REGION/subnetworks/SUBNET_NAME"`
  final Input<String>? subnetwork;

  /// A writeable location on GCS for the Dataflow job to dump its temporary data.
  ///
  /// - - -
  final Input<String> tempGcsLocation;

  /// The GCS path to the Dataflow job template.
  final Input<String> templateGcsPath;

  /// Only applicable when updating a pipeline. Map of transform name prefixes of the job to be replaced with the corresponding name prefixes of the new job. This field is not used outside of update.
  final Input<Map<String, String>>? transformNameMapping;

  /// The zone in which the created job should run. If it is not provided, the provider zone is used.
  final Input<String>? zone;

  JobArgs4({
    this.additionalExperiments,
    this.enableStreamingEngine,
    this.ipConfiguration,
    this.kmsKeyName,
    this.labels,
    this.machineType,
    this.maxWorkers,
    this.name,
    this.network,
    this.onDelete,
    this.parameters,
    this.project,
    this.region,
    this.serviceAccountEmail,
    this.skipWaitOnJobTermination,
    this.subnetwork,
    required this.tempGcsLocation,
    required this.templateGcsPath,
    this.transformNameMapping,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalExperimentsValue = additionalExperiments;
    if (additionalExperimentsValue != null) {
      map['additionalExperiments'] = additionalExperimentsValue;
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
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final machineTypeValue = machineType;
    if (machineTypeValue != null) {
      map['machineType'] = machineTypeValue;
    }
    final maxWorkersValue = maxWorkers;
    if (maxWorkersValue != null) {
      map['maxWorkers'] = maxWorkersValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final onDeleteValue = onDelete;
    if (onDeleteValue != null) {
      map['onDelete'] = onDeleteValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final serviceAccountEmailValue = serviceAccountEmail;
    if (serviceAccountEmailValue != null) {
      map['serviceAccountEmail'] = serviceAccountEmailValue;
    }
    final skipWaitOnJobTerminationValue = skipWaitOnJobTermination;
    if (skipWaitOnJobTerminationValue != null) {
      map['skipWaitOnJobTermination'] = skipWaitOnJobTerminationValue;
    }
    final subnetworkValue = subnetwork;
    if (subnetworkValue != null) {
      map['subnetwork'] = subnetworkValue;
    }
    map['tempGcsLocation'] = tempGcsLocation;
    map['templateGcsPath'] = templateGcsPath;
    final transformNameMappingValue = transformNameMapping;
    if (transformNameMappingValue != null) {
      map['transformNameMapping'] = transformNameMappingValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory JobArgs4.fromMap(Map<String, dynamic> map) {
    return JobArgs4(
      additionalExperiments:
          Input.asOptionalInput<List<String>>(map['additionalExperiments']),
      enableStreamingEngine:
          Input.asOptionalInput<bool>(map['enableStreamingEngine']),
      ipConfiguration: Input.asOptionalInput<String>(map['ipConfiguration']),
      kmsKeyName: Input.asOptionalInput<String>(map['kmsKeyName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      machineType: Input.asOptionalInput<String>(map['machineType']),
      maxWorkers: Input.asOptionalInput<int>(map['maxWorkers']),
      name: Input.asOptionalInput<String>(map['name']),
      network: Input.asOptionalInput<String>(map['network']),
      onDelete: Input.asOptionalInput<String>(map['onDelete']),
      parameters: Input.asOptionalInput<Map<String, String>>(map['parameters']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      serviceAccountEmail:
          Input.asOptionalInput<String>(map['serviceAccountEmail']),
      skipWaitOnJobTermination:
          Input.asOptionalInput<bool>(map['skipWaitOnJobTermination']),
      subnetwork: Input.asOptionalInput<String>(map['subnetwork']),
      tempGcsLocation: Input.asInput<String>(map['tempGcsLocation']),
      templateGcsPath: Input.asInput<String>(map['templateGcsPath']),
      transformNameMapping: Input.asOptionalInput<Map<String, String>>(
          map['transformNameMapping']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
