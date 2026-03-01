// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_instance_application_response.dart';
import 'compute_instance_connectivity_endpoints_response.dart';
import 'compute_instance_container_response.dart';
import 'compute_instance_created_by_response.dart';
import 'compute_instance_data_disk_response.dart';
import 'compute_instance_data_mount_response.dart';
import 'compute_instance_last_operation_response.dart';
import 'compute_instance_ssh_settings_response.dart';
import 'compute_instance_version_response.dart';
import 'compute_schedules_response.dart';
import 'custom_service_response.dart';
import 'error_response_response.dart';
import 'image_metadata_response.dart';
import 'personal_compute_instance_settings_response.dart';
import 'resource_id_response.dart';
import 'setup_scripts_response.dart';

/// Compute Instance properties
class ComputeInstancePropertiesResponse {
  /// Policy for sharing applications on this compute instance among users of parent workspace. If Personal, only the creator can access applications on this compute instance. When Shared, any workspace user can access applications on this instance depending on his/her assigned role.
  final String? applicationSharingPolicy;
  /// Describes available applications and their endpoints on this ComputeInstance.
  final List<ComputeInstanceApplicationResponse> applications;
  /// The Compute Instance Authorization type. Available values are personal (default).
  final String? computeInstanceAuthorizationType;
  /// Describes all connectivity endpoints available for this ComputeInstance.
  final ComputeInstanceConnectivityEndpointsResponse connectivityEndpoints;
  /// Describes informations of containers on this ComputeInstance.
  final List<ComputeInstanceContainerResponse> containers;
  /// Describes information on user who created this ComputeInstance.
  final ComputeInstanceCreatedByResponse createdBy;
  /// List of Custom Services added to the compute.
  final List<CustomServiceResponse>? customServices;
  /// Describes informations of dataDisks on this ComputeInstance.
  final List<ComputeInstanceDataDiskResponse> dataDisks;
  /// Describes informations of dataMounts on this ComputeInstance.
  final List<ComputeInstanceDataMountResponse> dataMounts;
  /// Enable or disable node public IP address provisioning. Possible values are: Possible values are: true - Indicates that the compute nodes will have public IPs provisioned. false - Indicates that the compute nodes will have a private endpoint and no public IPs.
  final bool? enableNodePublicIp;
  /// Collection of errors encountered on this ComputeInstance.
  final List<ErrorResponseResponse> errors;
  /// The last operation on ComputeInstance.
  final ComputeInstanceLastOperationResponse lastOperation;
  /// Returns metadata about the operating system image for this compute instance.
  final ImageMetadataResponse osImageMetadata;
  /// Settings for a personal compute instance.
  final PersonalComputeInstanceSettingsResponse? personalComputeInstanceSettings;
  /// The list of schedules to be applied on the computes.
  final ComputeSchedulesResponse? schedules;
  /// Details of customized scripts to execute for setting up the cluster.
  final SetupScriptsResponse? setupScripts;
  /// Specifies policy and settings for SSH access.
  final ComputeInstanceSshSettingsResponse? sshSettings;
  /// The current state of this ComputeInstance.
  final String state;
  /// Virtual network subnet resource ID the compute nodes belong to.
  final ResourceIdResponse? subnet;
  /// ComputeInstance version.
  final ComputeInstanceVersionResponse versions;
  /// Virtual Machine Size
  final String? vmSize;

  /// Creates a new [ComputeInstancePropertiesResponse].
  /// [applicationSharingPolicy] Policy for sharing applications on this compute instance among users of parent workspace. If Personal, only the creator can access applications on this compute instance. When Shared, any workspace user can access applications on this instance depending on his/her assigned role.
  /// [applications] Describes available applications and their endpoints on this ComputeInstance.
  /// [computeInstanceAuthorizationType] The Compute Instance Authorization type. Available values are personal (default).
  /// [connectivityEndpoints] Describes all connectivity endpoints available for this ComputeInstance.
  /// [containers] Describes informations of containers on this ComputeInstance.
  /// [createdBy] Describes information on user who created this ComputeInstance.
  /// [customServices] List of Custom Services added to the compute.
  /// [dataDisks] Describes informations of dataDisks on this ComputeInstance.
  /// [dataMounts] Describes informations of dataMounts on this ComputeInstance.
  /// [enableNodePublicIp] Enable or disable node public IP address provisioning. Possible values are: Possible values are: true - Indicates that the compute nodes will have public IPs provisioned. false - Indicates that the compute nodes will have a private endpoint and no public IPs.
  /// [errors] Collection of errors encountered on this ComputeInstance.
  /// [lastOperation] The last operation on ComputeInstance.
  /// [osImageMetadata] Returns metadata about the operating system image for this compute instance.
  /// [personalComputeInstanceSettings] Settings for a personal compute instance.
  /// [schedules] The list of schedules to be applied on the computes.
  /// [setupScripts] Details of customized scripts to execute for setting up the cluster.
  /// [sshSettings] Specifies policy and settings for SSH access.
  /// [state] The current state of this ComputeInstance.
  /// [subnet] Virtual network subnet resource ID the compute nodes belong to.
  /// [versions] ComputeInstance version.
  /// [vmSize] Virtual Machine Size
  ComputeInstancePropertiesResponse({
    this.applicationSharingPolicy,
    required this.applications,
    this.computeInstanceAuthorizationType,
    required this.connectivityEndpoints,
    required this.containers,
    required this.createdBy,
    this.customServices,
    required this.dataDisks,
    required this.dataMounts,
    this.enableNodePublicIp,
    required this.errors,
    required this.lastOperation,
    required this.osImageMetadata,
    this.personalComputeInstanceSettings,
    this.schedules,
    this.setupScripts,
    this.sshSettings,
    required this.state,
    this.subnet,
    required this.versions,
    this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationSharingPolicy': ?applicationSharingPolicy,
      'applications': pulumi.Input.encodeList<ComputeInstanceApplicationResponse, Map<String, dynamic>>(applications, (value) => value.toMap()),
      'computeInstanceAuthorizationType': ?computeInstanceAuthorizationType,
      'connectivityEndpoints': connectivityEndpoints.toMap(),
      'containers': pulumi.Input.encodeList<ComputeInstanceContainerResponse, Map<String, dynamic>>(containers, (value) => value.toMap()),
      'createdBy': createdBy.toMap(),
      'customServices': ?customServices == null ? null : pulumi.Input.encodeList<CustomServiceResponse, Map<String, dynamic>>(customServices!, (value) => value.toMap()),
      'dataDisks': pulumi.Input.encodeList<ComputeInstanceDataDiskResponse, Map<String, dynamic>>(dataDisks, (value) => value.toMap()),
      'dataMounts': pulumi.Input.encodeList<ComputeInstanceDataMountResponse, Map<String, dynamic>>(dataMounts, (value) => value.toMap()),
      'enableNodePublicIp': ?enableNodePublicIp,
      'errors': pulumi.Input.encodeList<ErrorResponseResponse, Map<String, dynamic>>(errors, (value) => value.toMap()),
      'lastOperation': lastOperation.toMap(),
      'osImageMetadata': osImageMetadata.toMap(),
      'personalComputeInstanceSettings': ?personalComputeInstanceSettings == null ? null : personalComputeInstanceSettings!.toMap(),
      'schedules': ?schedules == null ? null : schedules!.toMap(),
      'setupScripts': ?setupScripts == null ? null : setupScripts!.toMap(),
      'sshSettings': ?sshSettings == null ? null : sshSettings!.toMap(),
      'state': state,
      'subnet': ?subnet == null ? null : subnet!.toMap(),
      'versions': versions.toMap(),
      'vmSize': ?vmSize,
    };
  }

  factory ComputeInstancePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ComputeInstancePropertiesResponse(
      applicationSharingPolicy: map['applicationSharingPolicy'] == null ? null : map['applicationSharingPolicy'] as String,
      applications: pulumi.Input.decodeList<ComputeInstanceApplicationResponse>(map['applications'], (value) => ComputeInstanceApplicationResponse.fromMap((value as Map).cast<String, dynamic>())),
      computeInstanceAuthorizationType: map['computeInstanceAuthorizationType'] == null ? null : map['computeInstanceAuthorizationType'] as String,
      connectivityEndpoints: ComputeInstanceConnectivityEndpointsResponse.fromMap((map['connectivityEndpoints'] as Map).cast<String, dynamic>()),
      containers: pulumi.Input.decodeList<ComputeInstanceContainerResponse>(map['containers'], (value) => ComputeInstanceContainerResponse.fromMap((value as Map).cast<String, dynamic>())),
      createdBy: ComputeInstanceCreatedByResponse.fromMap((map['createdBy'] as Map).cast<String, dynamic>()),
      customServices: map['customServices'] == null ? null : pulumi.Input.decodeList<CustomServiceResponse>(map['customServices'], (value) => CustomServiceResponse.fromMap((value as Map).cast<String, dynamic>())),
      dataDisks: pulumi.Input.decodeList<ComputeInstanceDataDiskResponse>(map['dataDisks'], (value) => ComputeInstanceDataDiskResponse.fromMap((value as Map).cast<String, dynamic>())),
      dataMounts: pulumi.Input.decodeList<ComputeInstanceDataMountResponse>(map['dataMounts'], (value) => ComputeInstanceDataMountResponse.fromMap((value as Map).cast<String, dynamic>())),
      enableNodePublicIp: map['enableNodePublicIp'] == null ? null : map['enableNodePublicIp'] as bool,
      errors: pulumi.Input.decodeList<ErrorResponseResponse>(map['errors'], (value) => ErrorResponseResponse.fromMap((value as Map).cast<String, dynamic>())),
      lastOperation: ComputeInstanceLastOperationResponse.fromMap((map['lastOperation'] as Map).cast<String, dynamic>()),
      osImageMetadata: ImageMetadataResponse.fromMap((map['osImageMetadata'] as Map).cast<String, dynamic>()),
      personalComputeInstanceSettings: map['personalComputeInstanceSettings'] == null ? null : PersonalComputeInstanceSettingsResponse.fromMap((map['personalComputeInstanceSettings'] as Map).cast<String, dynamic>()),
      schedules: map['schedules'] == null ? null : ComputeSchedulesResponse.fromMap((map['schedules'] as Map).cast<String, dynamic>()),
      setupScripts: map['setupScripts'] == null ? null : SetupScriptsResponse.fromMap((map['setupScripts'] as Map).cast<String, dynamic>()),
      sshSettings: map['sshSettings'] == null ? null : ComputeInstanceSshSettingsResponse.fromMap((map['sshSettings'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      subnet: map['subnet'] == null ? null : ResourceIdResponse.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
      versions: ComputeInstanceVersionResponse.fromMap((map['versions'] as Map).cast<String, dynamic>()),
      vmSize: map['vmSize'] == null ? null : map['vmSize'] as String,
    );
  }
}

