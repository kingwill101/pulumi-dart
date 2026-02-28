// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaling_settings.dart';
import 'disk.dart';
import 'package.dart';
import 'sdk_harness_container_image.dart';
import 'task_runner_settings.dart';
import 'worker_pool_default_package_set.dart';
import 'worker_pool_ip_configuration.dart';
import 'worker_pool_teardown_policy.dart';

/// Describes one particular pool of Cloud Dataflow workers to be instantiated by the Cloud Dataflow service in order to perform the computations required by a job. Note that a workflow job may use multiple pools, in order to match the various computational requirements of the various stages of the job.
class WorkerPool {
  /// Settings for autoscaling of this WorkerPool.
  final AutoscalingSettings? autoscalingSettings;
  /// Data disks that are used by a VM in this workflow.
  final List<Disk>? dataDisks;
  /// The default package set to install. This allows the service to select a default set of packages which are useful to worker harnesses written in a particular language.
  final WorkerPoolDefaultPackageSet? defaultPackageSet;
  /// Size of root disk for VMs, in GB. If zero or unspecified, the service will attempt to choose a reasonable default.
  final int? diskSizeGb;
  /// Fully qualified source image for disks.
  final String? diskSourceImage;
  /// Type of root disk for VMs. If empty or unspecified, the service will attempt to choose a reasonable default.
  final String? diskType;
  /// Configuration for VM IPs.
  final WorkerPoolIpConfiguration? ipConfiguration;
  /// The kind of the worker pool; currently only `harness` and `shuffle` are supported.
  final String? kind;
  /// Machine type (e.g. "n1-standard-1"). If empty or unspecified, the service will attempt to choose a reasonable default.
  final String? machineType;
  /// Metadata to set on the Google Compute Engine VMs.
  final Map<String, String>? metadata;
  /// Network to which VMs will be assigned. If empty or unspecified, the service will use the network "default".
  final String? network;
  /// The number of threads per worker harness. If empty or unspecified, the service will choose a number of threads (according to the number of cores on the selected machine type for batch, or 1 by convention for streaming).
  final int? numThreadsPerWorker;
  /// Number of Google Compute Engine workers in this pool needed to execute the job. If zero or unspecified, the service will attempt to choose a reasonable default.
  final int? numWorkers;
  /// The action to take on host maintenance, as defined by the Google Compute Engine API.
  final String? onHostMaintenance;
  /// Packages to be installed on workers.
  final List<Package>? packages;
  /// Extra arguments for this worker pool.
  final Map<String, String>? poolArgs;
  /// Set of SDK harness containers needed to execute this pipeline. This will only be set in the Fn API path. For non-cross-language pipelines this should have only one entry. Cross-language pipelines will have two or more entries.
  final List<SdkHarnessContainerImage>? sdkHarnessContainerImages;
  /// Subnetwork to which VMs will be assigned, if desired. Expected to be of the form "regions/REGION/subnetworks/SUBNETWORK".
  final String? subnetwork;
  /// Settings passed through to Google Compute Engine workers when using the standard Dataflow task runner. Users should ignore this field.
  final TaskRunnerSettings? taskrunnerSettings;
  /// Sets the policy for determining when to turndown worker pool. Allowed values are: `TEARDOWN_ALWAYS`, `TEARDOWN_ON_SUCCESS`, and `TEARDOWN_NEVER`. `TEARDOWN_ALWAYS` means workers are always torn down regardless of whether the job succeeds. `TEARDOWN_ON_SUCCESS` means workers are torn down if the job succeeds. `TEARDOWN_NEVER` means the workers are never torn down. If the workers are not torn down by the service, they will continue to run and use Google Compute Engine VM resources in the user's project until they are explicitly terminated by the user. Because of this, Google recommends using the `TEARDOWN_ALWAYS` policy except for small, manually supervised test jobs. If unknown or unspecified, the service will attempt to choose a reasonable default.
  final WorkerPoolTeardownPolicy? teardownPolicy;
  /// Docker container image that executes the Cloud Dataflow worker harness, residing in Google Container Registry. Deprecated for the Fn API path. Use sdk_harness_container_images instead.
  final String workerHarnessContainerImage;
  /// Zone to run the worker pools in. If empty or unspecified, the service will attempt to choose a reasonable default.
  final String? zone;

  /// Creates a new [WorkerPool].
  /// [autoscalingSettings] Settings for autoscaling of this WorkerPool.
  /// [dataDisks] Data disks that are used by a VM in this workflow.
  /// [defaultPackageSet] The default package set to install. This allows the service to select a default set of packages which are useful to worker harnesses written in a particular language.
  /// [diskSizeGb] Size of root disk for VMs, in GB. If zero or unspecified, the service will attempt to choose a reasonable default.
  /// [diskSourceImage] Fully qualified source image for disks.
  /// [diskType] Type of root disk for VMs. If empty or unspecified, the service will attempt to choose a reasonable default.
  /// [ipConfiguration] Configuration for VM IPs.
  /// [kind] The kind of the worker pool; currently only `harness` and `shuffle` are supported.
  /// [machineType] Machine type (e.g. "n1-standard-1"). If empty or unspecified, the service will attempt to choose a reasonable default.
  /// [metadata] Metadata to set on the Google Compute Engine VMs.
  /// [network] Network to which VMs will be assigned. If empty or unspecified, the service will use the network "default".
  /// [numThreadsPerWorker] The number of threads per worker harness. If empty or unspecified, the service will choose a number of threads (according to the number of cores on the selected machine type for batch, or 1 by convention for streaming).
  /// [numWorkers] Number of Google Compute Engine workers in this pool needed to execute the job. If zero or unspecified, the service will attempt to choose a reasonable default.
  /// [onHostMaintenance] The action to take on host maintenance, as defined by the Google Compute Engine API.
  /// [packages] Packages to be installed on workers.
  /// [poolArgs] Extra arguments for this worker pool.
  /// [sdkHarnessContainerImages] Set of SDK harness containers needed to execute this pipeline. This will only be set in the Fn API path. For non-cross-language pipelines this should have only one entry. Cross-language pipelines will have two or more entries.
  /// [subnetwork] Subnetwork to which VMs will be assigned, if desired. Expected to be of the form "regions/REGION/subnetworks/SUBNETWORK".
  /// [taskrunnerSettings] Settings passed through to Google Compute Engine workers when using the standard Dataflow task runner. Users should ignore this field.
  /// [teardownPolicy] Sets the policy for determining when to turndown worker pool. Allowed values are: `TEARDOWN_ALWAYS`, `TEARDOWN_ON_SUCCESS`, and `TEARDOWN_NEVER`. `TEARDOWN_ALWAYS` means workers are always torn down regardless of whether the job succeeds. `TEARDOWN_ON_SUCCESS` means workers are torn down if the job succeeds. `TEARDOWN_NEVER` means the workers are never torn down. If the workers are not torn down by the service, they will continue to run and use Google Compute Engine VM resources in the user's project until they are explicitly terminated by the user. Because of this, Google recommends using the `TEARDOWN_ALWAYS` policy except for small, manually supervised test jobs. If unknown or unspecified, the service will attempt to choose a reasonable default.
  /// [workerHarnessContainerImage] Docker container image that executes the Cloud Dataflow worker harness, residing in Google Container Registry. Deprecated for the Fn API path. Use sdk_harness_container_images instead.
  /// [zone] Zone to run the worker pools in. If empty or unspecified, the service will attempt to choose a reasonable default.
  WorkerPool({
    this.autoscalingSettings,
    this.dataDisks,
    this.defaultPackageSet,
    this.diskSizeGb,
    this.diskSourceImage,
    this.diskType,
    this.ipConfiguration,
    this.kind,
    this.machineType,
    this.metadata,
    this.network,
    this.numThreadsPerWorker,
    this.numWorkers,
    this.onHostMaintenance,
    this.packages,
    this.poolArgs,
    this.sdkHarnessContainerImages,
    this.subnetwork,
    this.taskrunnerSettings,
    this.teardownPolicy,
    required this.workerHarnessContainerImage,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingSettings': ?autoscalingSettings == null ? null : autoscalingSettings!.toMap(),
      'dataDisks': ?dataDisks == null ? null : pulumi.Input.encodeList<Disk, Map<String, dynamic>>(dataDisks!, (value) => value.toMap()),
      'defaultPackageSet': ?defaultPackageSet == null ? null : defaultPackageSet!.value,
      'diskSizeGb': ?diskSizeGb,
      'diskSourceImage': ?diskSourceImage,
      'diskType': ?diskType,
      'ipConfiguration': ?ipConfiguration == null ? null : ipConfiguration!.value,
      'kind': ?kind,
      'machineType': ?machineType,
      'metadata': ?metadata,
      'network': ?network,
      'numThreadsPerWorker': ?numThreadsPerWorker,
      'numWorkers': ?numWorkers,
      'onHostMaintenance': ?onHostMaintenance,
      'packages': ?packages == null ? null : pulumi.Input.encodeList<Package, Map<String, dynamic>>(packages!, (value) => value.toMap()),
      'poolArgs': ?poolArgs,
      'sdkHarnessContainerImages': ?sdkHarnessContainerImages == null ? null : pulumi.Input.encodeList<SdkHarnessContainerImage, Map<String, dynamic>>(sdkHarnessContainerImages!, (value) => value.toMap()),
      'subnetwork': ?subnetwork,
      'taskrunnerSettings': ?taskrunnerSettings == null ? null : taskrunnerSettings!.toMap(),
      'teardownPolicy': ?teardownPolicy == null ? null : teardownPolicy!.value,
      'workerHarnessContainerImage': workerHarnessContainerImage,
      'zone': ?zone,
    };
  }

  factory WorkerPool.fromMap(Map<String, dynamic> map) {
    return WorkerPool(
      autoscalingSettings: map['autoscalingSettings'] == null ? null : AutoscalingSettings.fromMap((map['autoscalingSettings'] as Map).cast<String, dynamic>()),
      dataDisks: map['dataDisks'] == null ? null : pulumi.Input.decodeList<Disk>(map['dataDisks'], (value) => Disk.fromMap((value as Map).cast<String, dynamic>())),
      defaultPackageSet: map['defaultPackageSet'] == null ? null : WorkerPoolDefaultPackageSet.fromValue(map['defaultPackageSet'] as String),
      diskSizeGb: map['diskSizeGb'] == null ? null : map['diskSizeGb'] as int,
      diskSourceImage: map['diskSourceImage'] == null ? null : map['diskSourceImage'] as String,
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      ipConfiguration: map['ipConfiguration'] == null ? null : WorkerPoolIpConfiguration.fromValue(map['ipConfiguration'] as String),
      kind: map['kind'] == null ? null : map['kind'] as String,
      machineType: map['machineType'] == null ? null : map['machineType'] as String,
      metadata: map['metadata'] == null ? null : (map['metadata'] as Map).cast<String, String>(),
      network: map['network'] == null ? null : map['network'] as String,
      numThreadsPerWorker: map['numThreadsPerWorker'] == null ? null : map['numThreadsPerWorker'] as int,
      numWorkers: map['numWorkers'] == null ? null : map['numWorkers'] as int,
      onHostMaintenance: map['onHostMaintenance'] == null ? null : map['onHostMaintenance'] as String,
      packages: map['packages'] == null ? null : pulumi.Input.decodeList<Package>(map['packages'], (value) => Package.fromMap((value as Map).cast<String, dynamic>())),
      poolArgs: map['poolArgs'] == null ? null : (map['poolArgs'] as Map).cast<String, String>(),
      sdkHarnessContainerImages: map['sdkHarnessContainerImages'] == null ? null : pulumi.Input.decodeList<SdkHarnessContainerImage>(map['sdkHarnessContainerImages'], (value) => SdkHarnessContainerImage.fromMap((value as Map).cast<String, dynamic>())),
      subnetwork: map['subnetwork'] == null ? null : map['subnetwork'] as String,
      taskrunnerSettings: map['taskrunnerSettings'] == null ? null : TaskRunnerSettings.fromMap((map['taskrunnerSettings'] as Map).cast<String, dynamic>()),
      teardownPolicy: map['teardownPolicy'] == null ? null : WorkerPoolTeardownPolicy.fromValue(map['teardownPolicy'] as String),
      workerHarnessContainerImage: map['workerHarnessContainerImage'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}

