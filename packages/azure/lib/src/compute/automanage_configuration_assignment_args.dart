// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_automanage_configuration_assignment_automanage_configuration_assignment_args_doc}
/// The set of arguments for AutomanageConfigurationAssignment.
/// {@endtemplate}
/// {@macro pulumi_compute_automanage_configuration_assignment_automanage_configuration_assignment_args_doc}
class AutomanageConfigurationAssignmentArgs {
  /// The ARM resource ID of the Automanage Configuration to assign to the Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String> configurationId;
  /// The ARM resource ID of the Virtual Machine to assign the Automanage Configuration to. Changing this forces a new resource to be created.
  final pulumi.Input<String> virtualMachineId;

  /// Creates a new [AutomanageConfigurationAssignmentArgs].
  /// [configurationId] The ARM resource ID of the Automanage Configuration to assign to the Virtual Machine. Changing this forces a new resource to be created.
  /// [virtualMachineId] The ARM resource ID of the Virtual Machine to assign the Automanage Configuration to. Changing this forces a new resource to be created.
  AutomanageConfigurationAssignmentArgs({
    required String configurationId,
    required String virtualMachineId,
  }) :
      configurationId = pulumi.Input.asInput<String>(configurationId),
      virtualMachineId = pulumi.Input.asInput<String>(virtualMachineId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationId': configurationId,
      'virtualMachineId': virtualMachineId,
    };
  }

  factory AutomanageConfigurationAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return AutomanageConfigurationAssignmentArgs(
      configurationId: map['configurationId'] as String,
      virtualMachineId: map['virtualMachineId'] as String,
    );
  }
}

