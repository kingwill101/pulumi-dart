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
  final pulumi.Input<String>? applicationSharingPolicy;
  /// Describes available applications and their endpoints on this ComputeInstance.
  final pulumi.Input<List<ComputeInstanceApplicationResponse>> applications;
  /// The Compute Instance Authorization type. Available values are personal (default).
  final pulumi.Input<String>? computeInstanceAuthorizationType;
  /// Describes all connectivity endpoints available for this ComputeInstance.
  final pulumi.Input<ComputeInstanceConnectivityEndpointsResponse> connectivityEndpoints;
  /// Describes informations of containers on this ComputeInstance.
  final pulumi.Input<List<ComputeInstanceContainerResponse>> containers;
  /// Describes information on user who created this ComputeInstance.
  final pulumi.Input<ComputeInstanceCreatedByResponse> createdBy;
  /// List of Custom Services added to the compute.
  final pulumi.Input<List<CustomServiceResponse>>? customServices;
  /// Describes informations of dataDisks on this ComputeInstance.
  final pulumi.Input<List<ComputeInstanceDataDiskResponse>> dataDisks;
  /// Describes informations of dataMounts on this ComputeInstance.
  final pulumi.Input<List<ComputeInstanceDataMountResponse>> dataMounts;
  /// Enable or disable node public IP address provisioning. Possible values are: Possible values are: true - Indicates that the compute nodes will have public IPs provisioned. false - Indicates that the compute nodes will have a private endpoint and no public IPs.
  final pulumi.Input<bool>? enableNodePublicIp;
  /// Enable SSO (single sign on). Possible values are: true, false.
  final pulumi.Input<bool>? enableSSO;
  /// Collection of errors encountered on this ComputeInstance.
  final pulumi.Input<List<ErrorResponseResponse>> errors;
  /// Stops compute instance after user defined period of inactivity. Time is defined in ISO8601 format. Minimum is 15 min, maximum is 3 days.
  final pulumi.Input<String>? idleTimeBeforeShutdown;
  /// The last operation on ComputeInstance.
  final pulumi.Input<ComputeInstanceLastOperationResponse> lastOperation;
  /// Returns metadata about the operating system image for this compute instance.
  final pulumi.Input<ImageMetadataResponse> osImageMetadata;
  /// Settings for a personal compute instance.
  final pulumi.Input<PersonalComputeInstanceSettingsResponse>? personalComputeInstanceSettings;
  /// The list of schedules to be applied on the computes.
  final pulumi.Input<ComputeSchedulesResponse>? schedules;
  /// Details of customized scripts to execute for setting up the cluster.
  final pulumi.Input<SetupScriptsResponse>? setupScripts;
  /// Specifies policy and settings for SSH access.
  final pulumi.Input<ComputeInstanceSshSettingsResponse>? sshSettings;
  /// The current state of this ComputeInstance.
  final pulumi.Input<String> state;
  /// Virtual network subnet resource ID the compute nodes belong to.
  final pulumi.Input<ResourceIdResponse>? subnet;
  /// ComputeInstance version.
  final pulumi.Input<ComputeInstanceVersionResponse> versions;
  /// Virtual Machine Size
  final pulumi.Input<String>? vmSize;

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
  /// [enableSSO] Enable SSO (single sign on). Possible values are: true, false.
  /// [errors] Collection of errors encountered on this ComputeInstance.
  /// [idleTimeBeforeShutdown] Stops compute instance after user defined period of inactivity. Time is defined in ISO8601 format. Minimum is 15 min, maximum is 3 days.
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
  const ComputeInstancePropertiesResponse({
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
    this.enableSSO,
    required this.errors,
    this.idleTimeBeforeShutdown,
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
      'applications': pulumi.Input.mapInputValue<List<ComputeInstanceApplicationResponse>, List<Map<String, dynamic>>>(applications, (value) => pulumi.Input.encodeList<ComputeInstanceApplicationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'computeInstanceAuthorizationType': ?computeInstanceAuthorizationType,
      'connectivityEndpoints': pulumi.Input.mapInputValue<ComputeInstanceConnectivityEndpointsResponse, Map<String, dynamic>>(connectivityEndpoints, (value) => value.toMap()),
      'containers': pulumi.Input.mapInputValue<List<ComputeInstanceContainerResponse>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<ComputeInstanceContainerResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdBy': pulumi.Input.mapInputValue<ComputeInstanceCreatedByResponse, Map<String, dynamic>>(createdBy, (value) => value.toMap()),
      'customServices': ?pulumi.Input.mapOptionalInputValue<List<CustomServiceResponse>, List<Map<String, dynamic>>>(customServices, (value) => pulumi.Input.encodeList<CustomServiceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataDisks': pulumi.Input.mapInputValue<List<ComputeInstanceDataDiskResponse>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<ComputeInstanceDataDiskResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataMounts': pulumi.Input.mapInputValue<List<ComputeInstanceDataMountResponse>, List<Map<String, dynamic>>>(dataMounts, (value) => pulumi.Input.encodeList<ComputeInstanceDataMountResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableNodePublicIp': ?enableNodePublicIp,
      'enableSSO': ?enableSSO,
      'errors': pulumi.Input.mapInputValue<List<ErrorResponseResponse>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<ErrorResponseResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'idleTimeBeforeShutdown': ?idleTimeBeforeShutdown,
      'lastOperation': pulumi.Input.mapInputValue<ComputeInstanceLastOperationResponse, Map<String, dynamic>>(lastOperation, (value) => value.toMap()),
      'osImageMetadata': pulumi.Input.mapInputValue<ImageMetadataResponse, Map<String, dynamic>>(osImageMetadata, (value) => value.toMap()),
      'personalComputeInstanceSettings': ?pulumi.Input.mapOptionalInputValue<PersonalComputeInstanceSettingsResponse, Map<String, dynamic>>(personalComputeInstanceSettings, (value) => value.toMap()),
      'schedules': ?pulumi.Input.mapOptionalInputValue<ComputeSchedulesResponse, Map<String, dynamic>>(schedules, (value) => value.toMap()),
      'setupScripts': ?pulumi.Input.mapOptionalInputValue<SetupScriptsResponse, Map<String, dynamic>>(setupScripts, (value) => value.toMap()),
      'sshSettings': ?pulumi.Input.mapOptionalInputValue<ComputeInstanceSshSettingsResponse, Map<String, dynamic>>(sshSettings, (value) => value.toMap()),
      'state': state,
      'subnet': ?pulumi.Input.mapOptionalInputValue<ResourceIdResponse, Map<String, dynamic>>(subnet, (value) => value.toMap()),
      'versions': pulumi.Input.mapInputValue<ComputeInstanceVersionResponse, Map<String, dynamic>>(versions, (value) => value.toMap()),
      'vmSize': ?vmSize,
    };
  }

  factory ComputeInstancePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ComputeInstancePropertiesResponse(
      applicationSharingPolicy: (() { final guardedValue = map['applicationSharingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applications: pulumi.Input.fromValue(pulumi.Input.decodeList<ComputeInstanceApplicationResponse>(map['applications']!, (value) => ComputeInstanceApplicationResponse.fromMap((value as Map).cast<String, dynamic>()))),
      computeInstanceAuthorizationType: (() { final guardedValue = map['computeInstanceAuthorizationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectivityEndpoints: pulumi.Input.fromValue(ComputeInstanceConnectivityEndpointsResponse.fromMap((map['connectivityEndpoints']! as Map).cast<String, dynamic>())),
      containers: pulumi.Input.fromValue(pulumi.Input.decodeList<ComputeInstanceContainerResponse>(map['containers']!, (value) => ComputeInstanceContainerResponse.fromMap((value as Map).cast<String, dynamic>()))),
      createdBy: pulumi.Input.fromValue(ComputeInstanceCreatedByResponse.fromMap((map['createdBy']! as Map).cast<String, dynamic>())),
      customServices: (() { final guardedValue = map['customServices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomServiceResponse>(guardedValue, (value) => CustomServiceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dataDisks: pulumi.Input.fromValue(pulumi.Input.decodeList<ComputeInstanceDataDiskResponse>(map['dataDisks']!, (value) => ComputeInstanceDataDiskResponse.fromMap((value as Map).cast<String, dynamic>()))),
      dataMounts: pulumi.Input.fromValue(pulumi.Input.decodeList<ComputeInstanceDataMountResponse>(map['dataMounts']!, (value) => ComputeInstanceDataMountResponse.fromMap((value as Map).cast<String, dynamic>()))),
      enableNodePublicIp: (() { final guardedValue = map['enableNodePublicIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableSSO: (() { final guardedValue = map['enableSSO']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      errors: pulumi.Input.fromValue(pulumi.Input.decodeList<ErrorResponseResponse>(map['errors']!, (value) => ErrorResponseResponse.fromMap((value as Map).cast<String, dynamic>()))),
      idleTimeBeforeShutdown: (() { final guardedValue = map['idleTimeBeforeShutdown']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastOperation: pulumi.Input.fromValue(ComputeInstanceLastOperationResponse.fromMap((map['lastOperation']! as Map).cast<String, dynamic>())),
      osImageMetadata: pulumi.Input.fromValue(ImageMetadataResponse.fromMap((map['osImageMetadata']! as Map).cast<String, dynamic>())),
      personalComputeInstanceSettings: (() { final guardedValue = map['personalComputeInstanceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PersonalComputeInstanceSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schedules: (() { final guardedValue = map['schedules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ComputeSchedulesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      setupScripts: (() { final guardedValue = map['setupScripts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SetupScriptsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sshSettings: (() { final guardedValue = map['sshSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ComputeInstanceSshSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: pulumi.Input.fromValue(map['state'] as String),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceIdResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      versions: pulumi.Input.fromValue(ComputeInstanceVersionResponse.fromMap((map['versions']! as Map).cast<String, dynamic>())),
      vmSize: (() { final guardedValue = map['vmSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
