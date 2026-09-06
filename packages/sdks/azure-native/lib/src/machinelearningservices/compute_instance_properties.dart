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
  final pulumi.Input<dynamic>? applicationSharingPolicy;
  /// The Compute Instance Authorization type. Available values are personal (default).
  final pulumi.Input<dynamic>? computeInstanceAuthorizationType;
  /// List of Custom Services added to the compute.
  final pulumi.Input<List<CustomService>?>? customServices;
  /// Enable or disable node public IP address provisioning. Possible values are: Possible values are: true - Indicates that the compute nodes will have public IPs provisioned. false - Indicates that the compute nodes will have a private endpoint and no public IPs.
  final pulumi.Input<bool?>? enableNodePublicIp;
  /// Enable SSO (single sign on). Possible values are: true, false.
  final pulumi.Input<bool?>? enableSSO;
  /// Stops compute instance after user defined period of inactivity. Time is defined in ISO8601 format. Minimum is 15 min, maximum is 3 days.
  final pulumi.Input<String?>? idleTimeBeforeShutdown;
  /// Settings for a personal compute instance.
  final pulumi.Input<PersonalComputeInstanceSettings?>? personalComputeInstanceSettings;
  /// The list of schedules to be applied on the computes.
  final pulumi.Input<ComputeSchedules?>? schedules;
  /// Details of customized scripts to execute for setting up the cluster.
  final pulumi.Input<SetupScripts?>? setupScripts;
  /// Specifies policy and settings for SSH access.
  final pulumi.Input<ComputeInstanceSshSettings?>? sshSettings;
  /// Virtual network subnet resource ID the compute nodes belong to.
  final pulumi.Input<ResourceId?>? subnet;
  /// Virtual Machine Size
  final pulumi.Input<String?>? vmSize;

  /// Creates a new [ComputeInstanceProperties].
  /// [applicationSharingPolicy] Policy for sharing applications on this compute instance among users of parent workspace. If Personal, only the creator can access applications on this compute instance. When Shared, any workspace user can access applications on this instance depending on his/her assigned role.
  /// [computeInstanceAuthorizationType] The Compute Instance Authorization type. Available values are personal (default).
  /// [customServices] List of Custom Services added to the compute.
  /// [enableNodePublicIp] Enable or disable node public IP address provisioning. Possible values are: Possible values are: true - Indicates that the compute nodes will have public IPs provisioned. false - Indicates that the compute nodes will have a private endpoint and no public IPs.
  /// [enableSSO] Enable SSO (single sign on). Possible values are: true, false.
  /// [idleTimeBeforeShutdown] Stops compute instance after user defined period of inactivity. Time is defined in ISO8601 format. Minimum is 15 min, maximum is 3 days.
  /// [personalComputeInstanceSettings] Settings for a personal compute instance.
  /// [schedules] The list of schedules to be applied on the computes.
  /// [setupScripts] Details of customized scripts to execute for setting up the cluster.
  /// [sshSettings] Specifies policy and settings for SSH access.
  /// [subnet] Virtual network subnet resource ID the compute nodes belong to.
  /// [vmSize] Virtual Machine Size
  ComputeInstanceProperties({
    pulumi.Input<dynamic>? applicationSharingPolicy,
    pulumi.Input<dynamic>? computeInstanceAuthorizationType,
    this.customServices,
    this.enableNodePublicIp,
    pulumi.Input<bool?>? enableSSO,
    this.idleTimeBeforeShutdown,
    this.personalComputeInstanceSettings,
    this.schedules,
    this.setupScripts,
    this.sshSettings,
    this.subnet,
    this.vmSize,
  }) : applicationSharingPolicy = applicationSharingPolicy ?? pulumi.Input.fromValue('Shared'), computeInstanceAuthorizationType = computeInstanceAuthorizationType ?? pulumi.Input.fromValue('personal'), enableSSO = enableSSO ?? pulumi.Input.fromValue(true);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationSharingPolicy': ?applicationSharingPolicy,
      'computeInstanceAuthorizationType': ?computeInstanceAuthorizationType,
      'customServices': ?pulumi.Input.mapOptionalInputValue<List<CustomService>, List<Map<String, dynamic>>>(customServices, (value) => pulumi.Input.encodeList<CustomService, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableNodePublicIp': ?enableNodePublicIp,
      'enableSSO': ?enableSSO,
      'idleTimeBeforeShutdown': ?idleTimeBeforeShutdown,
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
      applicationSharingPolicy: (() { final guardedValue = map['applicationSharingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      computeInstanceAuthorizationType: (() { final guardedValue = map['computeInstanceAuthorizationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      customServices: (() { final guardedValue = map['customServices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomService>(guardedValue, (value) => CustomService.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enableNodePublicIp: (() { final guardedValue = map['enableNodePublicIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableSSO: (() { final guardedValue = map['enableSSO']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      idleTimeBeforeShutdown: (() { final guardedValue = map['idleTimeBeforeShutdown']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      personalComputeInstanceSettings: (() { final guardedValue = map['personalComputeInstanceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PersonalComputeInstanceSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      schedules: (() { final guardedValue = map['schedules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ComputeSchedules.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      setupScripts: (() { final guardedValue = map['setupScripts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SetupScripts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sshSettings: (() { final guardedValue = map['sshSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ComputeInstanceSshSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceId.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vmSize: (() { final guardedValue = map['vmSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
