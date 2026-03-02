// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Activation resources.
class ActivationState {
  /// The description of the activation code. The description can be 1 to 100 characters in length and cannot start with `http://` or `https://`.
  final pulumi.Input<String>? description;
  /// The maximum number of times that the activation code can be used to register managed instances. Valid values: `1` to `1000`. Default value: `10`.
  final pulumi.Input<int>? instanceCount;
  /// The default instance name prefix. The instance name prefix must be 1 to 50 characters in length. It must start with a letter and cannot start with `http://` or `https://`. The instance name prefix can contain only letters, digits, periods (.), underscores (_), hyphens (-), and colons (:).
  /// - If you use the activation code created by the CreateActivation operation to register managed instances, the instances are assigned sequential names that are prefixed by the value of this parameter. You can also specify a new instance name to override the assigned sequential name when you register a managed instance.
  /// - If you specify InstanceName when you register a managed instance, an instance name in the format of `<InstanceName>-<Number>` is generated. The number of digits in the <Number> value is determined by that in the InstanceCount value. Example: 001. If you do not specify InstanceName, the hostname (Hostname) is used as the instance name.
  final pulumi.Input<String>? instanceName;
  /// The IP addresses of hosts that are allowed to use the activation code. The value can be IPv4 addresses, IPv6 addresses, or CIDR blocks.
  final pulumi.Input<String>? ipAddressRange;
  /// The validity period of the activation code. The activation code cannot be used to register new instances after the validity period expires. Unit: hours. Valid values: `1` to `24`. Default value: `4`.
  final pulumi.Input<int>? timeToLiveInHours;

  /// Creates a new [ActivationState].
  /// [description] The description of the activation code. The description can be 1 to 100 characters in length and cannot start with `http://` or `https://`.
  /// [instanceCount] The maximum number of times that the activation code can be used to register managed instances. Valid values: `1` to `1000`. Default value: `10`.
  /// [instanceName] The default instance name prefix. The instance name prefix must be 1 to 50 characters in length. It must start with a letter and cannot start with `http://` or `https://`. The instance name prefix can contain only letters, digits, periods (.), underscores (_), hyphens (-), and colons (:).
  /// [ipAddressRange] The IP addresses of hosts that are allowed to use the activation code. The value can be IPv4 addresses, IPv6 addresses, or CIDR blocks.
  /// [timeToLiveInHours] The validity period of the activation code. The activation code cannot be used to register new instances after the validity period expires. Unit: hours. Valid values: `1` to `24`. Default value: `4`.
  ActivationState({
    this.description,
    this.instanceCount,
    this.instanceName,
    this.ipAddressRange,
    this.timeToLiveInHours,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'instanceCount': ?instanceCount,
      'instanceName': ?instanceName,
      'ipAddressRange': ?ipAddressRange,
      'timeToLiveInHours': ?timeToLiveInHours,
    };
  }

  factory ActivationState.fromMap(Map<String, dynamic> map) {
    return ActivationState(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      instanceCount: map['instanceCount'] == null ? null : (map['instanceCount'] as int).input(),
      instanceName: map['instanceName'] == null ? null : (map['instanceName'] as String).input(),
      ipAddressRange: map['ipAddressRange'] == null ? null : (map['ipAddressRange'] as String).input(),
      timeToLiveInHours: map['timeToLiveInHours'] == null ? null : (map['timeToLiveInHours'] as int).input(),
    );
  }
}

