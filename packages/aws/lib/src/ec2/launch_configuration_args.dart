// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'launch_configuration_ebs_block_device.dart';
import 'launch_configuration_ephemeral_block_device.dart';
import 'launch_configuration_metadata_options.dart';
import 'launch_configuration_root_block_device.dart';

/// {@template pulumi_ec2_launch_configuration_launch_configuration_args_doc}
/// The set of arguments for LaunchConfiguration.
/// {@endtemplate}
/// {@macro pulumi_ec2_launch_configuration_launch_configuration_args_doc}
class LaunchConfigurationArgs {
  /// Associate a public ip address with an instance in a VPC.
  final pulumi.Input<bool>? associatePublicIpAddress;

  /// Additional EBS block devices to attach to the instance. See Block Devices below for details.
  final pulumi.Input<List<LaunchConfigurationEbsBlockDevice>>? ebsBlockDevices;

  /// If true, the launched EC2 instance will be EBS-optimized.
  final pulumi.Input<bool>? ebsOptimized;

  /// Enables/disables detailed monitoring. This is enabled by default.
  final pulumi.Input<bool>? enableMonitoring;

  /// Customize Ephemeral (also known as "Instance Store") volumes on the instance. See Block Devices below for details.
  final pulumi.Input<List<LaunchConfigurationEphemeralBlockDevice>>?
      ephemeralBlockDevices;

  /// The name attribute of the IAM instance profile to associate with launched instances.
  final pulumi.Input<String>? iamInstanceProfile;

  /// The EC2 image ID to launch.
  final pulumi.Input<String> imageId;

  /// The size of instance to launch.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> instanceType;

  /// The key name that should be used for the instance.
  final pulumi.Input<String>? keyName;

  /// The metadata options for the instance.
  final pulumi.Input<LaunchConfigurationMetadataOptions>? metadataOptions;

  /// The name of the launch configuration. If you leave this blank, this provider will auto-generate a unique name. Conflicts with `name_prefix`.
  final pulumi.Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;

  /// The tenancy of the instance. Valid values are `default` or `dedicated`, see [AWS's Create Launch Configuration](http://docs.aws.amazon.com/AutoScaling/latest/APIReference/API_CreateLaunchConfiguration.html) for more details.
  final pulumi.Input<String>? placementTenancy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Customize details about the root block device of the instance. See Block Devices below for details.
  final pulumi.Input<LaunchConfigurationRootBlockDevice>? rootBlockDevice;

  /// A list of associated security group IDS.
  final pulumi.Input<List<String>>? securityGroups;

  /// The maximum price to use for reserving spot instances.
  final pulumi.Input<String>? spotPrice;

  /// The user data to provide when launching the instance. Do not pass gzip-compressed data via this argument; see `user_data_base64` instead.
  final pulumi.Input<String>? userData;

  /// Can be used instead of `user_data` to pass base64-encoded binary data directly. Use this instead of `user_data` whenever the value is not a valid UTF-8 string. For example, gzip-encoded user data must be base64-encoded and passed via this argument to avoid corruption.
  final pulumi.Input<String>? userDataBase64;

  /// Creates a new [LaunchConfigurationArgs].
  /// [associatePublicIpAddress] Associate a public ip address with an instance in a VPC.
  /// [ebsBlockDevices] Additional EBS block devices to attach to the instance. See Block Devices below for details.
  /// [ebsOptimized] If true, the launched EC2 instance will be EBS-optimized.
  /// [enableMonitoring] Enables/disables detailed monitoring. This is enabled by default.
  /// [ephemeralBlockDevices] Customize Ephemeral (also known as "Instance Store") volumes on the instance. See Block Devices below for details.
  /// [iamInstanceProfile] The name attribute of the IAM instance profile to associate with launched instances.
  /// [imageId] The EC2 image ID to launch.
  /// [instanceType] The size of instance to launch.
  /// [keyName] The key name that should be used for the instance.
  /// [metadataOptions] The metadata options for the instance.
  /// [name] The name of the launch configuration. If you leave this blank, this provider will auto-generate a unique name. Conflicts with `name_prefix`.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [placementTenancy] The tenancy of the instance. Valid values are `default` or `dedicated`, see [AWS's Create Launch Configuration](http://docs.aws.amazon.com/AutoScaling/latest/APIReference/API_CreateLaunchConfiguration.html) for more details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rootBlockDevice] Customize details about the root block device of the instance. See Block Devices below for details.
  /// [securityGroups] A list of associated security group IDS.
  /// [spotPrice] The maximum price to use for reserving spot instances.
  /// [userData] The user data to provide when launching the instance. Do not pass gzip-compressed data via this argument; see `user_data_base64` instead.
  /// [userDataBase64] Can be used instead of `user_data` to pass base64-encoded binary data directly. Use this instead of `user_data` whenever the value is not a valid UTF-8 string. For example, gzip-encoded user data must be base64-encoded and passed via this argument to avoid corruption.
  LaunchConfigurationArgs({
    bool? associatePublicIpAddress,
    List<LaunchConfigurationEbsBlockDevice>? ebsBlockDevices,
    bool? ebsOptimized,
    bool? enableMonitoring,
    List<LaunchConfigurationEphemeralBlockDevice>? ephemeralBlockDevices,
    String? iamInstanceProfile,
    required String imageId,
    required String instanceType,
    String? keyName,
    LaunchConfigurationMetadataOptions? metadataOptions,
    String? name,
    String? namePrefix,
    String? placementTenancy,
    String? region,
    LaunchConfigurationRootBlockDevice? rootBlockDevice,
    List<String>? securityGroups,
    String? spotPrice,
    String? userData,
    String? userDataBase64,
  })  : associatePublicIpAddress =
            pulumi.Input.asOptionalInput<bool>(associatePublicIpAddress),
        ebsBlockDevices = pulumi.Input.asOptionalInput<
            List<LaunchConfigurationEbsBlockDevice>>(ebsBlockDevices),
        ebsOptimized = pulumi.Input.asOptionalInput<bool>(ebsOptimized),
        enableMonitoring = pulumi.Input.asOptionalInput<bool>(enableMonitoring),
        ephemeralBlockDevices = pulumi.Input.asOptionalInput<
                List<LaunchConfigurationEphemeralBlockDevice>>(
            ephemeralBlockDevices),
        iamInstanceProfile =
            pulumi.Input.asOptionalInput<String>(iamInstanceProfile),
        imageId = pulumi.Input.asInput<String>(imageId),
        instanceType = pulumi.Input.asInput<String>(instanceType),
        keyName = pulumi.Input.asOptionalInput<String>(keyName),
        metadataOptions =
            pulumi.Input.asOptionalInput<LaunchConfigurationMetadataOptions>(
                metadataOptions),
        name = pulumi.Input.asOptionalInput<String>(name),
        namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
        placementTenancy =
            pulumi.Input.asOptionalInput<String>(placementTenancy),
        region = pulumi.Input.asOptionalInput<String>(region),
        rootBlockDevice =
            pulumi.Input.asOptionalInput<LaunchConfigurationRootBlockDevice>(
                rootBlockDevice),
        securityGroups =
            pulumi.Input.asOptionalInput<List<String>>(securityGroups),
        spotPrice = pulumi.Input.asOptionalInput<String>(spotPrice),
        userData = pulumi.Input.asOptionalInput<String>(userData),
        userDataBase64 = pulumi.Input.asOptionalInput<String>(userDataBase64);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final associatePublicIpAddressValue = associatePublicIpAddress;
    if (associatePublicIpAddressValue != null) {
      map['associatePublicIpAddress'] = associatePublicIpAddressValue;
    }
    final ebsBlockDevicesValue = ebsBlockDevices;
    if (ebsBlockDevicesValue != null) {
      map['ebsBlockDevices'] = pulumi.Input.mapOptionalInputValue<
              List<LaunchConfigurationEbsBlockDevice>,
              List<Map<String, dynamic>>>(
          ebsBlockDevicesValue,
          (value) => pulumi.Input.encodeList<LaunchConfigurationEbsBlockDevice,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final ebsOptimizedValue = ebsOptimized;
    if (ebsOptimizedValue != null) {
      map['ebsOptimized'] = ebsOptimizedValue;
    }
    final enableMonitoringValue = enableMonitoring;
    if (enableMonitoringValue != null) {
      map['enableMonitoring'] = enableMonitoringValue;
    }
    final ephemeralBlockDevicesValue = ephemeralBlockDevices;
    if (ephemeralBlockDevicesValue != null) {
      map['ephemeralBlockDevices'] = pulumi.Input.mapOptionalInputValue<
              List<LaunchConfigurationEphemeralBlockDevice>,
              List<Map<String, dynamic>>>(
          ephemeralBlockDevicesValue,
          (value) => pulumi.Input.encodeList<
              LaunchConfigurationEphemeralBlockDevice,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final iamInstanceProfileValue = iamInstanceProfile;
    if (iamInstanceProfileValue != null) {
      map['iamInstanceProfile'] = iamInstanceProfileValue;
    }
    map['imageId'] = imageId;
    map['instanceType'] = instanceType;
    final keyNameValue = keyName;
    if (keyNameValue != null) {
      map['keyName'] = keyNameValue;
    }
    final metadataOptionsValue = metadataOptions;
    if (metadataOptionsValue != null) {
      map['metadataOptions'] = pulumi.Input.mapOptionalInputValue<
          LaunchConfigurationMetadataOptions,
          Map<String, dynamic>>(metadataOptionsValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final placementTenancyValue = placementTenancy;
    if (placementTenancyValue != null) {
      map['placementTenancy'] = placementTenancyValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final rootBlockDeviceValue = rootBlockDevice;
    if (rootBlockDeviceValue != null) {
      map['rootBlockDevice'] = pulumi.Input.mapOptionalInputValue<
          LaunchConfigurationRootBlockDevice,
          Map<String, dynamic>>(rootBlockDeviceValue, (value) => value.toMap());
    }
    final securityGroupsValue = securityGroups;
    if (securityGroupsValue != null) {
      map['securityGroups'] = securityGroupsValue;
    }
    final spotPriceValue = spotPrice;
    if (spotPriceValue != null) {
      map['spotPrice'] = spotPriceValue;
    }
    final userDataValue = userData;
    if (userDataValue != null) {
      map['userData'] = userDataValue;
    }
    final userDataBase64Value = userDataBase64;
    if (userDataBase64Value != null) {
      map['userDataBase64'] = userDataBase64Value;
    }
    return map;
  }

  factory LaunchConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return LaunchConfigurationArgs(
      associatePublicIpAddress: map['associatePublicIpAddress'] == null
          ? null
          : map['associatePublicIpAddress'] as bool,
      ebsBlockDevices: map['ebsBlockDevices'] == null
          ? null
          : pulumi.Input.decodeList<LaunchConfigurationEbsBlockDevice>(
              map['ebsBlockDevices'],
              (value) => LaunchConfigurationEbsBlockDevice.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ebsOptimized:
          map['ebsOptimized'] == null ? null : map['ebsOptimized'] as bool,
      enableMonitoring: map['enableMonitoring'] == null
          ? null
          : map['enableMonitoring'] as bool,
      ephemeralBlockDevices: map['ephemeralBlockDevices'] == null
          ? null
          : pulumi.Input.decodeList<LaunchConfigurationEphemeralBlockDevice>(
              map['ephemeralBlockDevices'],
              (value) => LaunchConfigurationEphemeralBlockDevice.fromMap(
                  (value as Map).cast<String, dynamic>())),
      iamInstanceProfile: map['iamInstanceProfile'] == null
          ? null
          : map['iamInstanceProfile'] as String,
      imageId: map['imageId'] as String,
      instanceType: map['instanceType'] as String,
      keyName: map['keyName'] == null ? null : map['keyName'] as String,
      metadataOptions: map['metadataOptions'] == null
          ? null
          : LaunchConfigurationMetadataOptions.fromMap(
              (map['metadataOptions'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      namePrefix:
          map['namePrefix'] == null ? null : map['namePrefix'] as String,
      placementTenancy: map['placementTenancy'] == null
          ? null
          : map['placementTenancy'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      rootBlockDevice: map['rootBlockDevice'] == null
          ? null
          : LaunchConfigurationRootBlockDevice.fromMap(
              (map['rootBlockDevice'] as Map).cast<String, dynamic>()),
      securityGroups: map['securityGroups'] == null
          ? null
          : (map['securityGroups'] as List).cast<String>(),
      spotPrice: map['spotPrice'] == null ? null : map['spotPrice'] as String,
      userData: map['userData'] == null ? null : map['userData'] as String,
      userDataBase64: map['userDataBase64'] == null
          ? null
          : map['userDataBase64'] as String,
    );
  }
}
