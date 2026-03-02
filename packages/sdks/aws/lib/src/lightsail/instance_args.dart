// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_add_on.dart';

/// {@template pulumi_lightsail_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_lightsail_instance_instance_args_doc}
class InstanceArgs {
  /// Add-on configuration for the instance. See below.
  final pulumi.Input<InstanceAddOn>? addOn;
  /// Availability Zone in which to create your instance. A list of available zones can be obtained using the AWS CLI command: [`aws lightsail get-regions --include-availability-zones`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/lightsail/get-regions.html).
  final pulumi.Input<String> availabilityZone;
  /// ID for a virtual private server image. A list of available blueprint IDs can be obtained using the AWS CLI command: [`aws lightsail get-blueprints`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/lightsail/get-blueprints.html).
  final pulumi.Input<String> blueprintId;
  /// Bundle of specification information. A list of available bundle IDs can be obtained using the AWS CLI command: [`aws lightsail get-bundles`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/lightsail/get-bundles.html).
  final pulumi.Input<String> bundleId;
  /// IP address type of the Lightsail Instance. Valid values: `dualstack`, `ipv4`, `ipv6`. Default: `dualstack`.
  final pulumi.Input<String>? ipAddressType;
  /// Name of your key pair. Created in the Lightsail console (cannot use `aws.ec2.KeyPair` at this time).
  final pulumi.Input<String>? keyPairName;
  /// Name of the Lightsail Instance. Names must be unique within each AWS Region in your Lightsail account.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Single lined launch script as a string to configure server with additional user data.
  final pulumi.Input<String>? userData;

  /// Creates a new [InstanceArgs].
  /// [addOn] Add-on configuration for the instance. See below.
  /// [availabilityZone] Availability Zone in which to create your instance. A list of available zones can be obtained using the AWS CLI command: [`aws lightsail get-regions --include-availability-zones`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/lightsail/get-regions.html).
  /// [blueprintId] ID for a virtual private server image. A list of available blueprint IDs can be obtained using the AWS CLI command: [`aws lightsail get-blueprints`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/lightsail/get-blueprints.html).
  /// [bundleId] Bundle of specification information. A list of available bundle IDs can be obtained using the AWS CLI command: [`aws lightsail get-bundles`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/lightsail/get-bundles.html).
  /// [ipAddressType] IP address type of the Lightsail Instance. Valid values: `dualstack`, `ipv4`, `ipv6`. Default: `dualstack`.
  /// [keyPairName] Name of your key pair. Created in the Lightsail console (cannot use `aws.ec2.KeyPair` at this time).
  /// [name] Name of the Lightsail Instance. Names must be unique within each AWS Region in your Lightsail account.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [userData] Single lined launch script as a string to configure server with additional user data.
  InstanceArgs({
    this.addOn,
    required this.availabilityZone,
    required this.blueprintId,
    required this.bundleId,
    this.ipAddressType,
    this.keyPairName,
    this.name,
    this.region,
    this.tags,
    this.userData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addOn': ?pulumi.Input.mapOptionalInputValue<InstanceAddOn, Map<String, dynamic>>(addOn, (value) => value.toMap()),
      'availabilityZone': availabilityZone,
      'blueprintId': blueprintId,
      'bundleId': bundleId,
      'ipAddressType': ?ipAddressType,
      'keyPairName': ?keyPairName,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'userData': ?userData,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      addOn: map['addOn'] == null ? null : (InstanceAddOn.fromMap((map['addOn'] as Map).cast<String, dynamic>())).input(),
      availabilityZone: (map['availabilityZone'] as String).input(),
      blueprintId: (map['blueprintId'] as String).input(),
      bundleId: (map['bundleId'] as String).input(),
      ipAddressType: map['ipAddressType'] == null ? null : (map['ipAddressType'] as String).input(),
      keyPairName: map['keyPairName'] == null ? null : (map['keyPairName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      userData: map['userData'] == null ? null : (map['userData'] as String).input(),
    );
  }
}

