// ignore_for_file: unused_element, unnecessary_cast


/// A2A container mapping input.
class A2AContainerMappingInput {
  /// A value indicating whether the auto update is enabled.
  final String? agentAutoUpdateStatus;
  /// The automation account arm id.
  final String? automationAccountArmId;
  /// A value indicating the type authentication to use for automation Account.
  final String? automationAccountAuthenticationType;
  /// The class type.
  /// Expected value is 'A2A'.
  final String instanceType;

  /// Creates a new [A2AContainerMappingInput].
  /// [agentAutoUpdateStatus] A value indicating whether the auto update is enabled.
  /// [automationAccountArmId] The automation account arm id.
  /// [automationAccountAuthenticationType] A value indicating the type authentication to use for automation Account.
  /// [instanceType] The class type.
  A2AContainerMappingInput({
    this.agentAutoUpdateStatus,
    this.automationAccountArmId,
    this.automationAccountAuthenticationType,
    required this.instanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentAutoUpdateStatus': ?agentAutoUpdateStatus,
      'automationAccountArmId': ?automationAccountArmId,
      'automationAccountAuthenticationType': ?automationAccountAuthenticationType,
      'instanceType': instanceType,
    };
  }

  factory A2AContainerMappingInput.fromMap(Map<String, dynamic> map) {
    return A2AContainerMappingInput(
      agentAutoUpdateStatus: map['agentAutoUpdateStatus'] == null ? null : map['agentAutoUpdateStatus'] as String,
      automationAccountArmId: map['automationAccountArmId'] == null ? null : map['automationAccountArmId'] as String,
      automationAccountAuthenticationType: map['automationAccountAuthenticationType'] == null ? null : map['automationAccountAuthenticationType'] as String,
      instanceType: map['instanceType'] as String,
    );
  }
}

