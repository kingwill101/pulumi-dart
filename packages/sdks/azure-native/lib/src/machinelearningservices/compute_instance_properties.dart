// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_instance_ssh_settings.dart';
import 'compute_schedules.dart';
import 'custom_service.dart';
import 'personal_compute_instance_settings.dart';
import 'resource_id.dart';
import 'setup_scripts.dart';

/// Compute Instance properties
class ComputeInstanceProperties {
  /// Policy for sharing applications on this compute instance among users of parent workspace. If Personal, only the creator can access applications on this compute instance. When Shared, any workspace user can access applications on this instance depending on his/her assigned role.
  final pulumi.Input<String>? applicationSharingPolicy;
  /// The Compute Instance Authorization type. Available values are personal (default).
  final pulumi.Input<String>? computeInstanceAuthorizationType;
  /// List of Custom Services added to the compute.
  final pulumi.Input<List<CustomService>>? customServices;
  /// Enable or disable node public IP address provisioning. Possible values are: Possible values are: true - Indicates that the compute nodes will have public IPs provisioned. false - Indicates that the compute nodes will have a private endpoint and no public IPs.
  final pulumi.Input<bool>? enableNodePublicIp;
  /// Settings for a personal compute instance.
  final pulumi.Input<PersonalComputeInstanceSettings>? personalComputeInstanceSettings;
  /// The list of schedules to be applied on the computes.
  final pulumi.Input<ComputeSchedules>? schedules;
  /// Details of customized scripts to execute for setting up the cluster.
  final pulumi.Input<SetupScripts>? setupScripts;
  /// Specifies policy and settings for SSH access.
  final pulumi.Input<ComputeInstanceSshSettings>? sshSettings;
  /// Virtual network subnet resource ID the compute nodes belong to.
  final pulumi.Input<ResourceId>? subnet;
  /// Virtual Machine Size
  final pulumi.Input<String>? vmSize;

  /// Creates a new [ComputeInstanceProperties].
  /// [applicationSharingPolicy] Policy for sharing applications on this compute instance among users of parent workspace. If Personal, only the creator can access applications on this compute instance. When Shared, any workspace user can access applications on this instance depending on his/her assigned role.
  /// [computeInstanceAuthorizationType] The Compute Instance Authorization type. Available values are personal (default).
  /// [customServices] List of Custom Services added to the compute.
  /// [enableNodePublicIp] Enable or disable node public IP address provisioning. Possible values are: Possible values are: true - Indicates that the compute nodes will have public IPs provisioned. false - Indicates that the compute nodes will have a private endpoint and no public IPs.
  /// [personalComputeInstanceSettings] Settings for a personal compute instance.
  /// [schedules] The list of schedules to be applied on the computes.
  /// [setupScripts] Details of customized scripts to execute for setting up the cluster.
  /// [sshSettings] Specifies policy and settings for SSH access.
  /// [subnet] Virtual network subnet resource ID the compute nodes belong to.
  /// [vmSize] Virtual Machine Size
  ComputeInstanceProperties({
    this.applicationSharingPolicy,
    this.computeInstanceAuthorizationType,
    this.customServices,
    this.enableNodePublicIp,
    this.personalComputeInstanceSettings,
    this.schedules,
    this.setupScripts,
    this.sshSettings,
    this.subnet,
    this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationSharingPolicy': ?applicationSharingPolicy,
      'computeInstanceAuthorizationType': ?computeInstanceAuthorizationType,
      'customServices': ?pulumi.Input.mapOptionalInputValue<List<CustomService>, List<Map<String, dynamic>>>(customServices, (value) => pulumi.Input.encodeList<CustomService, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableNodePublicIp': ?enableNodePublicIp,
      'personalComputeInstanceSettings': ?pulumi.Input.mapOptionalInputValue<PersonalComputeInstanceSettings, Map<String, dynamic>>(personalComputeInstanceSettings, (value) => value.toMap()),
      'schedules': ?pulumi.Input.mapOptionalInputValue<ComputeSchedules, Map<String, dynamic>>(schedules, (value) => value.toMap()),
      'setupScripts': ?pulumi.Input.mapOptionalInputValue<SetupScripts, Map<String, dynamic>>(setupScripts, (value) => value.toMap()),
      'sshSettings': ?pulumi.Input.mapOptionalInputValue<ComputeInstanceSshSettings, Map<String, dynamic>>(sshSettings, (value) => value.toMap()),
      'subnet': ?pulumi.Input.mapOptionalInputValue<ResourceId, Map<String, dynamic>>(subnet, (value) => value.toMap()),
      'vmSize': ?vmSize,
    };
  }

  factory ComputeInstanceProperties.fromMap(Map<String, dynamic> map) {
    return ComputeInstanceProperties(
      applicationSharingPolicy: map['applicationSharingPolicy'] == null ? null : (map['applicationSharingPolicy'] as String).input(),
      computeInstanceAuthorizationType: map['computeInstanceAuthorizationType'] == null ? null : (map['computeInstanceAuthorizationType'] as String).input(),
      customServices: map['customServices'] == null ? null : (pulumi.Input.decodeList<CustomService>(map['customServices'], (value) => CustomService.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enableNodePublicIp: map['enableNodePublicIp'] == null ? null : (map['enableNodePublicIp'] as bool).input(),
      personalComputeInstanceSettings: map['personalComputeInstanceSettings'] == null ? null : (PersonalComputeInstanceSettings.fromMap((map['personalComputeInstanceSettings'] as Map).cast<String, dynamic>())).input(),
      schedules: map['schedules'] == null ? null : (ComputeSchedules.fromMap((map['schedules'] as Map).cast<String, dynamic>())).input(),
      setupScripts: map['setupScripts'] == null ? null : (SetupScripts.fromMap((map['setupScripts'] as Map).cast<String, dynamic>())).input(),
      sshSettings: map['sshSettings'] == null ? null : (ComputeInstanceSshSettings.fromMap((map['sshSettings'] as Map).cast<String, dynamic>())).input(),
      subnet: map['subnet'] == null ? null : (ResourceId.fromMap((map['subnet'] as Map).cast<String, dynamic>())).input(),
      vmSize: map['vmSize'] == null ? null : (map['vmSize'] as String).input(),
    );
  }
}

