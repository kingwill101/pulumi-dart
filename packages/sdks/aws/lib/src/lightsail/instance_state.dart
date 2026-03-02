// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_add_on.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// Add-on configuration for the instance. See below.
  final pulumi.Input<InstanceAddOn>? addOn;
  /// ARN of the Lightsail instance (matches `id`).
  final pulumi.Input<String>? arn;
  /// Availability Zone in which to create your instance. A list of available zones can be obtained using the AWS CLI command: [`aws lightsail get-regions --include-availability-zones`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/lightsail/get-regions.html).
  final pulumi.Input<String>? availabilityZone;
  /// ID for a virtual private server image. A list of available blueprint IDs can be obtained using the AWS CLI command: [`aws lightsail get-blueprints`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/lightsail/get-blueprints.html).
  final pulumi.Input<String>? blueprintId;
  /// Bundle of specification information. A list of available bundle IDs can be obtained using the AWS CLI command: [`aws lightsail get-bundles`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/lightsail/get-bundles.html).
  final pulumi.Input<String>? bundleId;
  /// Number of vCPUs the instance has.
  final pulumi.Input<int>? cpuCount;
  /// Timestamp when the instance was created.
  final pulumi.Input<String>? createdAt;
  /// IP address type of the Lightsail Instance. Valid values: `dualstack`, `ipv4`, `ipv6`. Default: `dualstack`.
  final pulumi.Input<String>? ipAddressType;
  /// List of IPv6 addresses for the Lightsail instance.
  final pulumi.Input<List<String>>? ipv6Addresses;
  /// Whether this instance has a static IP assigned to it.
  final pulumi.Input<bool>? isStaticIp;
  /// Name of your key pair. Created in the Lightsail console (cannot use `aws.ec2.KeyPair` at this time).
  final pulumi.Input<String>? keyPairName;
  /// Name of the Lightsail Instance. Names must be unique within each AWS Region in your Lightsail account.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Private IP address of the instance.
  final pulumi.Input<String>? privateIpAddress;
  /// Public IP address of the instance.
  final pulumi.Input<String>? publicIpAddress;
  /// Amount of RAM in GB on the instance (e.g., 1.0).
  final pulumi.Input<double>? ramSize;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Single lined launch script as a string to configure server with additional user data.
  final pulumi.Input<String>? userData;
  /// User name for connecting to the instance (e.g., ec2-user).
  final pulumi.Input<String>? username;

  /// Creates a new [InstanceState].
  /// [addOn] Add-on configuration for the instance. See below.
  /// [arn] ARN of the Lightsail instance (matches `id`).
  /// [availabilityZone] Availability Zone in which to create your instance. A list of available zones can be obtained using the AWS CLI command: [`aws lightsail get-regions --include-availability-zones`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/lightsail/get-regions.html).
  /// [blueprintId] ID for a virtual private server image. A list of available blueprint IDs can be obtained using the AWS CLI command: [`aws lightsail get-blueprints`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/lightsail/get-blueprints.html).
  /// [bundleId] Bundle of specification information. A list of available bundle IDs can be obtained using the AWS CLI command: [`aws lightsail get-bundles`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/lightsail/get-bundles.html).
  /// [cpuCount] Number of vCPUs the instance has.
  /// [createdAt] Timestamp when the instance was created.
  /// [ipAddressType] IP address type of the Lightsail Instance. Valid values: `dualstack`, `ipv4`, `ipv6`. Default: `dualstack`.
  /// [ipv6Addresses] List of IPv6 addresses for the Lightsail instance.
  /// [isStaticIp] Whether this instance has a static IP assigned to it.
  /// [keyPairName] Name of your key pair. Created in the Lightsail console (cannot use `aws.ec2.KeyPair` at this time).
  /// [name] Name of the Lightsail Instance. Names must be unique within each AWS Region in your Lightsail account.
  /// [privateIpAddress] Private IP address of the instance.
  /// [publicIpAddress] Public IP address of the instance.
  /// [ramSize] Amount of RAM in GB on the instance (e.g., 1.0).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [userData] Single lined launch script as a string to configure server with additional user data.
  /// [username] User name for connecting to the instance (e.g., ec2-user).
  InstanceState({
    this.addOn,
    this.arn,
    this.availabilityZone,
    this.blueprintId,
    this.bundleId,
    this.cpuCount,
    this.createdAt,
    this.ipAddressType,
    this.ipv6Addresses,
    this.isStaticIp,
    this.keyPairName,
    this.name,
    this.privateIpAddress,
    this.publicIpAddress,
    this.ramSize,
    this.region,
    this.tags,
    this.tagsAll,
    this.userData,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addOn': ?pulumi.Input.mapOptionalInputValue<InstanceAddOn, Map<String, dynamic>>(addOn, (value) => value.toMap()),
      'arn': ?arn,
      'availabilityZone': ?availabilityZone,
      'blueprintId': ?blueprintId,
      'bundleId': ?bundleId,
      'cpuCount': ?cpuCount,
      'createdAt': ?createdAt,
      'ipAddressType': ?ipAddressType,
      'ipv6Addresses': ?ipv6Addresses,
      'isStaticIp': ?isStaticIp,
      'keyPairName': ?keyPairName,
      'name': ?name,
      'privateIpAddress': ?privateIpAddress,
      'publicIpAddress': ?publicIpAddress,
      'ramSize': ?ramSize,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'userData': ?userData,
      'username': ?username,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      addOn: map['addOn'] == null ? null : ((InstanceAddOn.fromMap((map['addOn']! as Map).cast<String, dynamic>())).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      availabilityZone: map['availabilityZone'] == null ? null : ((map['availabilityZone'] as String).input()).input(),
      blueprintId: map['blueprintId'] == null ? null : ((map['blueprintId'] as String).input()).input(),
      bundleId: map['bundleId'] == null ? null : ((map['bundleId'] as String).input()).input(),
      cpuCount: map['cpuCount'] == null ? null : ((map['cpuCount'] as int).input()).input(),
      createdAt: map['createdAt'] == null ? null : ((map['createdAt'] as String).input()).input(),
      ipAddressType: map['ipAddressType'] == null ? null : ((map['ipAddressType'] as String).input()).input(),
      ipv6Addresses: map['ipv6Addresses'] == null ? null : (((map['ipv6Addresses'] as List).cast<String>()).input()).input(),
      isStaticIp: map['isStaticIp'] == null ? null : ((map['isStaticIp'] as bool).input()).input(),
      keyPairName: map['keyPairName'] == null ? null : ((map['keyPairName'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      privateIpAddress: map['privateIpAddress'] == null ? null : ((map['privateIpAddress'] as String).input()).input(),
      publicIpAddress: map['publicIpAddress'] == null ? null : ((map['publicIpAddress'] as String).input()).input(),
      ramSize: map['ramSize'] == null ? null : ((map['ramSize'] as double).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      userData: map['userData'] == null ? null : ((map['userData'] as String).input()).input(),
      username: map['username'] == null ? null : ((map['username'] as String).input()).input(),
    );
  }
}

