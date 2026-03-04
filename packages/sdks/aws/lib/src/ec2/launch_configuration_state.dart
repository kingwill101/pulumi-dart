// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'launch_configuration_ebs_block_device.dart';
import 'launch_configuration_ephemeral_block_device.dart';
import 'launch_configuration_metadata_options.dart';
import 'launch_configuration_root_block_device.dart';

/// Input properties used for looking up and filtering LaunchConfiguration resources.
class LaunchConfigurationState {
  /// The Amazon Resource Name of the launch configuration.
  final pulumi.Input<String>? arn;

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
  final pulumi.Input<String>? imageId;

  /// The size of instance to launch.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? instanceType;

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

  /// Creates a new [LaunchConfigurationState].
  /// [arn] The Amazon Resource Name of the launch configuration.
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
  LaunchConfigurationState({
    this.arn,
    this.associatePublicIpAddress,
    this.ebsBlockDevices,
    this.ebsOptimized,
    this.enableMonitoring,
    this.ephemeralBlockDevices,
    this.iamInstanceProfile,
    this.imageId,
    this.instanceType,
    this.keyName,
    this.metadataOptions,
    this.name,
    this.namePrefix,
    this.placementTenancy,
    this.region,
    this.rootBlockDevice,
    this.securityGroups,
    this.spotPrice,
    this.userData,
    this.userDataBase64,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'associatePublicIpAddress': ?associatePublicIpAddress,
      'ebsBlockDevices':
          ?pulumi.Input.mapOptionalInputValue<
            List<LaunchConfigurationEbsBlockDevice>,
            List<Map<String, dynamic>>
          >(
            ebsBlockDevices,
            (value) =>
                pulumi.Input.encodeList<
                  LaunchConfigurationEbsBlockDevice,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ebsOptimized': ?ebsOptimized,
      'enableMonitoring': ?enableMonitoring,
      'ephemeralBlockDevices':
          ?pulumi.Input.mapOptionalInputValue<
            List<LaunchConfigurationEphemeralBlockDevice>,
            List<Map<String, dynamic>>
          >(
            ephemeralBlockDevices,
            (value) =>
                pulumi.Input.encodeList<
                  LaunchConfigurationEphemeralBlockDevice,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'iamInstanceProfile': ?iamInstanceProfile,
      'imageId': ?imageId,
      'instanceType': ?instanceType,
      'keyName': ?keyName,
      'metadataOptions':
          ?pulumi.Input.mapOptionalInputValue<
            LaunchConfigurationMetadataOptions,
            Map<String, dynamic>
          >(metadataOptions, (value) => value.toMap()),
      'name': ?name,
      'namePrefix': ?namePrefix,
      'placementTenancy': ?placementTenancy,
      'region': ?region,
      'rootBlockDevice':
          ?pulumi.Input.mapOptionalInputValue<
            LaunchConfigurationRootBlockDevice,
            Map<String, dynamic>
          >(rootBlockDevice, (value) => value.toMap()),
      'securityGroups': ?securityGroups,
      'spotPrice': ?spotPrice,
      'userData': ?userData,
      'userDataBase64': ?userDataBase64,
    };
  }

  factory LaunchConfigurationState.fromMap(Map<String, dynamic> map) {
    return LaunchConfigurationState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      associatePublicIpAddress: (() {
        final guardedValue = map['associatePublicIpAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ebsBlockDevices: (() {
        final guardedValue = map['ebsBlockDevices'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<LaunchConfigurationEbsBlockDevice>(
            guardedValue,
            (value) => LaunchConfigurationEbsBlockDevice.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ebsOptimized: (() {
        final guardedValue = map['ebsOptimized'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableMonitoring: (() {
        final guardedValue = map['enableMonitoring'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ephemeralBlockDevices: (() {
        final guardedValue = map['ephemeralBlockDevices'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<LaunchConfigurationEphemeralBlockDevice>(
            guardedValue,
            (value) => LaunchConfigurationEphemeralBlockDevice.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      iamInstanceProfile: (() {
        final guardedValue = map['iamInstanceProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      imageId: (() {
        final guardedValue = map['imageId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceType: (() {
        final guardedValue = map['instanceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyName: (() {
        final guardedValue = map['keyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metadataOptions: (() {
        final guardedValue = map['metadataOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LaunchConfigurationMetadataOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namePrefix: (() {
        final guardedValue = map['namePrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      placementTenancy: (() {
        final guardedValue = map['placementTenancy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rootBlockDevice: (() {
        final guardedValue = map['rootBlockDevice'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LaunchConfigurationRootBlockDevice.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      securityGroups: (() {
        final guardedValue = map['securityGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      spotPrice: (() {
        final guardedValue = map['spotPrice'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userData: (() {
        final guardedValue = map['userData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userDataBase64: (() {
        final guardedValue = map['userDataBase64'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
