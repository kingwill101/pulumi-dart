// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_id.dart';
import 'scale_settings.dart';
import 'user_account_credentials.dart';
import 'virtual_machine_image.dart';

/// AML Compute properties
class AmlComputeProperties {
  /// Enable or disable node public IP address provisioning. Possible values are: Possible values are: true - Indicates that the compute nodes will have public IPs provisioned. false - Indicates that the compute nodes will have a private endpoint and no public IPs.
  final pulumi.Input<bool>? enableNodePublicIp;
  /// Network is isolated or not
  final pulumi.Input<bool>? isolatedNetwork;
  /// Compute OS Type
  final pulumi.Input<String>? osType;
  /// A property bag containing additional properties.
  final pulumi.Input<dynamic>? propertyBag;
  /// State of the public SSH port. Possible values are: Disabled - Indicates that the public ssh port is closed on all nodes of the cluster. Enabled - Indicates that the public ssh port is open on all nodes of the cluster. NotSpecified - Indicates that the public ssh port is closed on all nodes of the cluster if VNet is defined, else is open all public nodes. It can be default only during cluster creation time, after creation it will be either enabled or disabled.
  final pulumi.Input<String>? remoteLoginPortPublicAccess;
  /// Scale settings for AML Compute
  final pulumi.Input<ScaleSettings>? scaleSettings;
  /// Virtual network subnet resource ID the compute nodes belong to.
  final pulumi.Input<ResourceId>? subnet;
  /// Credentials for an administrator user account that will be created on each compute node.
  final pulumi.Input<UserAccountCredentials>? userAccountCredentials;
  /// Virtual Machine image for AML Compute - windows only
  final pulumi.Input<VirtualMachineImage>? virtualMachineImage;
  /// Virtual Machine priority
  final pulumi.Input<String>? vmPriority;
  /// Virtual Machine Size
  final pulumi.Input<String>? vmSize;

  /// Creates a new [AmlComputeProperties].
  /// [enableNodePublicIp] Enable or disable node public IP address provisioning. Possible values are: Possible values are: true - Indicates that the compute nodes will have public IPs provisioned. false - Indicates that the compute nodes will have a private endpoint and no public IPs.
  /// [isolatedNetwork] Network is isolated or not
  /// [osType] Compute OS Type
  /// [propertyBag] A property bag containing additional properties.
  /// [remoteLoginPortPublicAccess] State of the public SSH port. Possible values are: Disabled - Indicates that the public ssh port is closed on all nodes of the cluster. Enabled - Indicates that the public ssh port is open on all nodes of the cluster. NotSpecified - Indicates that the public ssh port is closed on all nodes of the cluster if VNet is defined, else is open all public nodes. It can be default only during cluster creation time, after creation it will be either enabled or disabled.
  /// [scaleSettings] Scale settings for AML Compute
  /// [subnet] Virtual network subnet resource ID the compute nodes belong to.
  /// [userAccountCredentials] Credentials for an administrator user account that will be created on each compute node.
  /// [virtualMachineImage] Virtual Machine image for AML Compute - windows only
  /// [vmPriority] Virtual Machine priority
  /// [vmSize] Virtual Machine Size
  AmlComputeProperties({
    this.enableNodePublicIp,
    this.isolatedNetwork,
    this.osType,
    this.propertyBag,
    this.remoteLoginPortPublicAccess,
    this.scaleSettings,
    this.subnet,
    this.userAccountCredentials,
    this.virtualMachineImage,
    this.vmPriority,
    this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableNodePublicIp': ?enableNodePublicIp,
      'isolatedNetwork': ?isolatedNetwork,
      'osType': ?osType,
      'propertyBag': ?propertyBag,
      'remoteLoginPortPublicAccess': ?remoteLoginPortPublicAccess,
      'scaleSettings': ?pulumi.Input.mapOptionalInputValue<ScaleSettings, Map<String, dynamic>>(scaleSettings, (value) => value.toMap()),
      'subnet': ?pulumi.Input.mapOptionalInputValue<ResourceId, Map<String, dynamic>>(subnet, (value) => value.toMap()),
      'userAccountCredentials': ?pulumi.Input.mapOptionalInputValue<UserAccountCredentials, Map<String, dynamic>>(userAccountCredentials, (value) => value.toMap()),
      'virtualMachineImage': ?pulumi.Input.mapOptionalInputValue<VirtualMachineImage, Map<String, dynamic>>(virtualMachineImage, (value) => value.toMap()),
      'vmPriority': ?vmPriority,
      'vmSize': ?vmSize,
    };
  }

  factory AmlComputeProperties.fromMap(Map<String, dynamic> map) {
    return AmlComputeProperties(
      enableNodePublicIp: map['enableNodePublicIp'] == null ? null : (map['enableNodePublicIp'] as bool).input(),
      isolatedNetwork: map['isolatedNetwork'] == null ? null : (map['isolatedNetwork'] as bool).input(),
      osType: map['osType'] == null ? null : (map['osType'] as String).input(),
      propertyBag: map['propertyBag'] == null ? null : (map['propertyBag']).input(),
      remoteLoginPortPublicAccess: map['remoteLoginPortPublicAccess'] == null ? null : (map['remoteLoginPortPublicAccess'] as String).input(),
      scaleSettings: map['scaleSettings'] == null ? null : (ScaleSettings.fromMap((map['scaleSettings'] as Map).cast<String, dynamic>())).input(),
      subnet: map['subnet'] == null ? null : (ResourceId.fromMap((map['subnet'] as Map).cast<String, dynamic>())).input(),
      userAccountCredentials: map['userAccountCredentials'] == null ? null : (UserAccountCredentials.fromMap((map['userAccountCredentials'] as Map).cast<String, dynamic>())).input(),
      virtualMachineImage: map['virtualMachineImage'] == null ? null : (VirtualMachineImage.fromMap((map['virtualMachineImage'] as Map).cast<String, dynamic>())).input(),
      vmPriority: map['vmPriority'] == null ? null : (map['vmPriority'] as String).input(),
      vmSize: map['vmSize'] == null ? null : (map['vmSize'] as String).input(),
    );
  }
}

