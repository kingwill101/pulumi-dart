// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetActivationsActivation {
  /// The ID of the activation code.
  final pulumi.Input<String> activationId;
  /// The time when the activation code was created.
  final pulumi.Input<String> createTime;
  /// The number of instances that have been logged out.
  final pulumi.Input<int> deregisteredCount;
  /// Description of the corresponding activation code.
  final pulumi.Input<String> description;
  /// Indicates whether the activation code is disabled.
  final pulumi.Input<bool> disabled;
  /// The ID of the Activation.
  final pulumi.Input<String> id;
  /// The maximum number of times the activation code is used to register a managed instance.
  final pulumi.Input<int> instanceCount;
  /// The default prefix of the instance name.
  final pulumi.Input<String> instanceName;
  /// The IP address of the host that allows the activation code to be used.
  final pulumi.Input<String> ipAddressRange;
  /// The number of instances that were registered.
  final pulumi.Input<int> registeredCount;
  /// The validity period of the activation code. Unit: hours.
  final pulumi.Input<int> timeToLiveInHours;

  /// Creates a new [GetActivationsActivation].
  /// [activationId] The ID of the activation code.
  /// [createTime] The time when the activation code was created.
  /// [deregisteredCount] The number of instances that have been logged out.
  /// [description] Description of the corresponding activation code.
  /// [disabled] Indicates whether the activation code is disabled.
  /// [id] The ID of the Activation.
  /// [instanceCount] The maximum number of times the activation code is used to register a managed instance.
  /// [instanceName] The default prefix of the instance name.
  /// [ipAddressRange] The IP address of the host that allows the activation code to be used.
  /// [registeredCount] The number of instances that were registered.
  /// [timeToLiveInHours] The validity period of the activation code. Unit: hours.
  GetActivationsActivation({
    required this.activationId,
    required this.createTime,
    required this.deregisteredCount,
    required this.description,
    required this.disabled,
    required this.id,
    required this.instanceCount,
    required this.instanceName,
    required this.ipAddressRange,
    required this.registeredCount,
    required this.timeToLiveInHours,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationId': activationId,
      'createTime': createTime,
      'deregisteredCount': deregisteredCount,
      'description': description,
      'disabled': disabled,
      'id': id,
      'instanceCount': instanceCount,
      'instanceName': instanceName,
      'ipAddressRange': ipAddressRange,
      'registeredCount': registeredCount,
      'timeToLiveInHours': timeToLiveInHours,
    };
  }

  factory GetActivationsActivation.fromMap(Map<String, dynamic> map) {
    return GetActivationsActivation(
      activationId: pulumi.Input.fromValue(map['activationId'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      deregisteredCount: pulumi.Input.fromValue(map['deregisteredCount'] as int),
      description: pulumi.Input.fromValue(map['description'] as String),
      disabled: pulumi.Input.fromValue(map['disabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceCount: pulumi.Input.fromValue(map['instanceCount'] as int),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      ipAddressRange: pulumi.Input.fromValue(map['ipAddressRange'] as String),
      registeredCount: pulumi.Input.fromValue(map['registeredCount'] as int),
      timeToLiveInHours: pulumi.Input.fromValue(map['timeToLiveInHours'] as int),
    );
  }
}

