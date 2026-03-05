// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_guard_duty_detector_args_doc}
/// Arguments for getGuardDutyDetector.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_guard_duty_detector_args_doc}
class GetGuardDutyDetectorArgs {
  /// Name of GuardDutyDetector
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetGuardDutyDetectorArgs].
  /// [name] Name of GuardDutyDetector
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetGuardDutyDetectorArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetGuardDutyDetectorArgs.fromMap(Map<String, dynamic> map) {
    return GetGuardDutyDetectorArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

