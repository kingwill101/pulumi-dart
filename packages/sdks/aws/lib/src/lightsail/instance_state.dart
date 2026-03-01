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
    pulumi.Output<InstanceAddOn>? addOn,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<String>? blueprintId,
    pulumi.Output<String>? bundleId,
    pulumi.Output<int>? cpuCount,
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? ipAddressType,
    pulumi.Output<List<String>>? ipv6Addresses,
    pulumi.Output<bool>? isStaticIp,
    pulumi.Output<String>? keyPairName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? privateIpAddress,
    pulumi.Output<String>? publicIpAddress,
    pulumi.Output<double>? ramSize,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? userData,
    pulumi.Output<String>? username,
  }) :
      addOn = pulumi.Input.asOptionalInput<InstanceAddOn>(addOn),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      blueprintId = pulumi.Input.asOptionalInput<String>(blueprintId),
      bundleId = pulumi.Input.asOptionalInput<String>(bundleId),
      cpuCount = pulumi.Input.asOptionalInput<int>(cpuCount),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      ipAddressType = pulumi.Input.asOptionalInput<String>(ipAddressType),
      ipv6Addresses = pulumi.Input.asOptionalInput<List<String>>(ipv6Addresses),
      isStaticIp = pulumi.Input.asOptionalInput<bool>(isStaticIp),
      keyPairName = pulumi.Input.asOptionalInput<String>(keyPairName),
      name = pulumi.Input.asOptionalInput<String>(name),
      privateIpAddress = pulumi.Input.asOptionalInput<String>(privateIpAddress),
      publicIpAddress = pulumi.Input.asOptionalInput<String>(publicIpAddress),
      ramSize = pulumi.Input.asOptionalInput<double>(ramSize),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      userData = pulumi.Input.asOptionalInput<String>(userData),
      username = pulumi.Input.asOptionalInput<String>(username);

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
      addOn: map['addOn'] == null ? null : pulumi.Output.create<InstanceAddOn>(InstanceAddOn.fromMap((map['addOn'] as Map).cast<String, dynamic>())),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      blueprintId: map['blueprintId'] == null ? null : pulumi.Output.create<String>(map['blueprintId'] as String),
      bundleId: map['bundleId'] == null ? null : pulumi.Output.create<String>(map['bundleId'] as String),
      cpuCount: map['cpuCount'] == null ? null : pulumi.Output.create<int>(map['cpuCount'] as int),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      ipAddressType: map['ipAddressType'] == null ? null : pulumi.Output.create<String>(map['ipAddressType'] as String),
      ipv6Addresses: map['ipv6Addresses'] == null ? null : pulumi.Output.create<List<String>>((map['ipv6Addresses'] as List).cast<String>()),
      isStaticIp: map['isStaticIp'] == null ? null : pulumi.Output.create<bool>(map['isStaticIp'] as bool),
      keyPairName: map['keyPairName'] == null ? null : pulumi.Output.create<String>(map['keyPairName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      privateIpAddress: map['privateIpAddress'] == null ? null : pulumi.Output.create<String>(map['privateIpAddress'] as String),
      publicIpAddress: map['publicIpAddress'] == null ? null : pulumi.Output.create<String>(map['publicIpAddress'] as String),
      ramSize: map['ramSize'] == null ? null : pulumi.Output.create<double>(map['ramSize'] as double),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      userData: map['userData'] == null ? null : pulumi.Output.create<String>(map['userData'] as String),
      username: map['username'] == null ? null : pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

