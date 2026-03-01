// ignore_for_file: unused_element, unnecessary_cast


class GetActivationsActivation {
  /// The ID of the activation code.
  final String activationId;
  /// The time when the activation code was created.
  final String createTime;
  /// The number of instances that have been logged out.
  final int deregisteredCount;
  /// Description of the corresponding activation code.
  final String description;
  /// Indicates whether the activation code is disabled.
  final bool disabled;
  /// The ID of the Activation.
  final String id;
  /// The maximum number of times the activation code is used to register a managed instance.
  final int instanceCount;
  /// The default prefix of the instance name.
  final String instanceName;
  /// The IP address of the host that allows the activation code to be used.
  final String ipAddressRange;
  /// The number of instances that were registered.
  final int registeredCount;
  /// The validity period of the activation code. Unit: hours.
  final int timeToLiveInHours;

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
      activationId: map['activationId'] as String,
      createTime: map['createTime'] as String,
      deregisteredCount: map['deregisteredCount'] as int,
      description: map['description'] as String,
      disabled: map['disabled'] as bool,
      id: map['id'] as String,
      instanceCount: map['instanceCount'] as int,
      instanceName: map['instanceName'] as String,
      ipAddressRange: map['ipAddressRange'] as String,
      registeredCount: map['registeredCount'] as int,
      timeToLiveInHours: map['timeToLiveInHours'] as int,
    );
  }
}

