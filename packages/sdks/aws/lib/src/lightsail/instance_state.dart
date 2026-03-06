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
  const InstanceState({
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
      addOn: (() { final guardedValue = map['addOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceAddOn.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      blueprintId: (() { final guardedValue = map['blueprintId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bundleId: (() { final guardedValue = map['bundleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuCount: (() { final guardedValue = map['cpuCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddressType: (() { final guardedValue = map['ipAddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6Addresses: (() { final guardedValue = map['ipv6Addresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      isStaticIp: (() { final guardedValue = map['isStaticIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keyPairName: (() { final guardedValue = map['keyPairName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIpAddress: (() { final guardedValue = map['privateIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIpAddress: (() { final guardedValue = map['publicIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ramSize: (() { final guardedValue = map['ramSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      userData: (() { final guardedValue = map['userData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

