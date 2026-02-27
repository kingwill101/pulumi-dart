// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for FlexTemplateJob.
class FlexTemplateJobArgs {
  /// List of experiments that should be used by the job. An example value is `["enable_stackdriver_agent_metrics"]`.
  final pulumi.Input<List<String>>? additionalExperiments;

  /// List of pipeline options that should be used by the job. An example value is `["numberOfWorkerHarnessThreads=20"]`.
  final pulumi.Input<List<String>>? additionalPipelineOptions;

  /// The algorithm to use for autoscaling.
  final pulumi.Input<String>? autoscalingAlgorithm;

  /// The GCS path to the Dataflow job Flex
  /// Template.
  ///
  /// - - -
  final pulumi.Input<String> containerSpecGcsPath;

  /// Immutable. Indicates if the job should use the streaming engine feature.
  final pulumi.Input<bool>? enableStreamingEngine;

  /// The configuration for VM IPs.  Options are `"WORKER_IP_PUBLIC"` or `"WORKER_IP_PRIVATE"`.
  final pulumi.Input<String>? ipConfiguration;

  /// The name for the Cloud KMS key for the job. Key format is: `projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY`
  final pulumi.Input<String>? kmsKeyName;

  /// User labels to be specified for the job. Keys and values
  /// should follow the restrictions specified in the [labeling restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions)
  /// page. **Note**: This field is marked as deprecated as the API does not currently
  /// support adding labels.
  /// **NOTE**: Google-provided Dataflow templates often provide default labels
  /// that begin with `goog-dataflow-provided`. Unless explicitly set in config, these
  /// labels will be ignored to prevent diffs on re-apply.
  final pulumi.Input<Map<String, String>>? labels;

  /// The machine type to use for launching the job. The default is n1-standard-1.
  final pulumi.Input<String>? launcherMachineType;

  /// The machine type to use for the job.
  final pulumi.Input<String>? machineType;

  /// Immutable. The maximum number of Google Compute Engine instances to be made available to your pipeline during execution, from 1 to 1000.
  final pulumi.Input<int>? maxWorkers;

  /// Immutable. A unique name for the resource, required by Dataflow.
  final pulumi.Input<String>? name;

  /// The network to which VMs will be assigned. If it is not provided, "default" will be used.
  final pulumi.Input<String>? network;

  /// Immutable. The initial number of Google Compute Engine instances for the job.
  final pulumi.Input<int>? numWorkers;

  /// One of "drain" or "cancel". Specifies behavior of
  /// deletion during `pulumi destroy`.  See above note.
  final pulumi.Input<String>? onDelete;

  /// **Template specific** Key/Value pairs to be forwarded to the pipeline's options; keys are
  /// case-sensitive based on the language on which the pipeline is coded, mostly Java.
  /// **Note**: do not configure Dataflow options here in parameters.
  final pulumi.Input<Map<String, String>>? parameters;

  /// The project in which the resource belongs. If it is not
  /// provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Immutable. The region in which the created job should run.
  final pulumi.Input<String>? region;

  /// Docker registry location of container image to use for the 'worker harness. Default is the container for the version of the SDK. Note this field is only valid for portable pipelines.
  final pulumi.Input<String>? sdkContainerImage;

  /// Service account email to run the workers as. This should be just an email e.g. `myserviceaccount@myproject.iam.gserviceaccount.com`. Do not include any `serviceAccount:` or other prefix.
  final pulumi.Input<String>? serviceAccountEmail;
  final pulumi.Input<bool>? skipWaitOnJobTermination;

  /// The Cloud Storage path to use for staging files. Must be a valid Cloud Storage URL, beginning with gs://.
  final pulumi.Input<String>? stagingLocation;

  /// The subnetwork to which VMs will be assigned. Should be of the form "regions/REGION/subnetworks/SUBNETWORK".
  final pulumi.Input<String>? subnetwork;

  /// The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning with gs://.
  final pulumi.Input<String>? tempLocation;

  /// Only applicable when updating a pipeline. Map of transform name prefixes of the job to be replaced with the corresponding name prefixes of the new job.Only applicable when updating a pipeline. Map of transform name prefixes of the job to be replaced with the corresponding name prefixes of the new job.
  final pulumi.Input<Map<String, String>>? transformNameMapping;

  FlexTemplateJobArgs({
    this.additionalExperiments,
    this.additionalPipelineOptions,
    this.autoscalingAlgorithm,
    required this.containerSpecGcsPath,
    this.enableStreamingEngine,
    this.ipConfiguration,
    this.kmsKeyName,
    this.labels,
    this.launcherMachineType,
    this.machineType,
    this.maxWorkers,
    this.name,
    this.network,
    this.numWorkers,
    this.onDelete,
    this.parameters,
    this.project,
    this.region,
    this.sdkContainerImage,
    this.serviceAccountEmail,
    this.skipWaitOnJobTermination,
    this.stagingLocation,
    this.subnetwork,
    this.tempLocation,
    this.transformNameMapping,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalExperimentsValue = additionalExperiments;
    if (additionalExperimentsValue != null) {
      map['additionalExperiments'] = additionalExperimentsValue;
    }
    final additionalPipelineOptionsValue = additionalPipelineOptions;
    if (additionalPipelineOptionsValue != null) {
      map['additionalPipelineOptions'] = additionalPipelineOptionsValue;
    }
    final autoscalingAlgorithmValue = autoscalingAlgorithm;
    if (autoscalingAlgorithmValue != null) {
      map['autoscalingAlgorithm'] = autoscalingAlgorithmValue;
    }
    map['containerSpecGcsPath'] = containerSpecGcsPath;
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
    final launcherMachineTypeValue = launcherMachineType;
    if (launcherMachineTypeValue != null) {
      map['launcherMachineType'] = launcherMachineTypeValue;
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
    final numWorkersValue = numWorkers;
    if (numWorkersValue != null) {
      map['numWorkers'] = numWorkersValue;
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
    final sdkContainerImageValue = sdkContainerImage;
    if (sdkContainerImageValue != null) {
      map['sdkContainerImage'] = sdkContainerImageValue;
    }
    final serviceAccountEmailValue = serviceAccountEmail;
    if (serviceAccountEmailValue != null) {
      map['serviceAccountEmail'] = serviceAccountEmailValue;
    }
    final skipWaitOnJobTerminationValue = skipWaitOnJobTermination;
    if (skipWaitOnJobTerminationValue != null) {
      map['skipWaitOnJobTermination'] = skipWaitOnJobTerminationValue;
    }
    final stagingLocationValue = stagingLocation;
    if (stagingLocationValue != null) {
      map['stagingLocation'] = stagingLocationValue;
    }
    final subnetworkValue = subnetwork;
    if (subnetworkValue != null) {
      map['subnetwork'] = subnetworkValue;
    }
    final tempLocationValue = tempLocation;
    if (tempLocationValue != null) {
      map['tempLocation'] = tempLocationValue;
    }
    final transformNameMappingValue = transformNameMapping;
    if (transformNameMappingValue != null) {
      map['transformNameMapping'] = transformNameMappingValue;
    }
    return map;
  }

  factory FlexTemplateJobArgs.fromMap(Map<String, dynamic> map) {
    return FlexTemplateJobArgs(
      additionalExperiments: pulumi.Input.asOptionalInput<List<String>>(
          map['additionalExperiments']),
      additionalPipelineOptions: pulumi.Input.asOptionalInput<List<String>>(
          map['additionalPipelineOptions']),
      autoscalingAlgorithm:
          pulumi.Input.asOptionalInput<String>(map['autoscalingAlgorithm']),
      containerSpecGcsPath:
          pulumi.Input.asInput<String>(map['containerSpecGcsPath']),
      enableStreamingEngine:
          pulumi.Input.asOptionalInput<bool>(map['enableStreamingEngine']),
      ipConfiguration:
          pulumi.Input.asOptionalInput<String>(map['ipConfiguration']),
      kmsKeyName: pulumi.Input.asOptionalInput<String>(map['kmsKeyName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      launcherMachineType:
          pulumi.Input.asOptionalInput<String>(map['launcherMachineType']),
      machineType: pulumi.Input.asOptionalInput<String>(map['machineType']),
      maxWorkers: pulumi.Input.asOptionalInput<int>(map['maxWorkers']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      network: pulumi.Input.asOptionalInput<String>(map['network']),
      numWorkers: pulumi.Input.asOptionalInput<int>(map['numWorkers']),
      onDelete: pulumi.Input.asOptionalInput<String>(map['onDelete']),
      parameters:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['parameters']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      sdkContainerImage:
          pulumi.Input.asOptionalInput<String>(map['sdkContainerImage']),
      serviceAccountEmail:
          pulumi.Input.asOptionalInput<String>(map['serviceAccountEmail']),
      skipWaitOnJobTermination:
          pulumi.Input.asOptionalInput<bool>(map['skipWaitOnJobTermination']),
      stagingLocation:
          pulumi.Input.asOptionalInput<String>(map['stagingLocation']),
      subnetwork: pulumi.Input.asOptionalInput<String>(map['subnetwork']),
      tempLocation: pulumi.Input.asOptionalInput<String>(map['tempLocation']),
      transformNameMapping: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['transformNameMapping']),
    );
  }
}
