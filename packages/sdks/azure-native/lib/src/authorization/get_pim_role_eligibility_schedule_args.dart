// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_get_pim_role_eligibility_schedule_args_doc}
/// Arguments for getPimRoleEligibilitySchedule.
/// {@endtemplate}
/// {@macro pulumi_authorization_get_pim_role_eligibility_schedule_args_doc}
class GetPimRoleEligibilityScheduleArgs {
  /// The name (guid) of the role eligibility schedule request to get.
  final pulumi.Input<String> roleEligibilityScheduleRequestName;

  /// The scope of the role eligibility schedule request.
  final pulumi.Input<String> scope;

  /// Creates a new [GetPimRoleEligibilityScheduleArgs].
  /// [roleEligibilityScheduleRequestName] The name (guid) of the role eligibility schedule request to get.
  /// [scope] The scope of the role eligibility schedule request.
  GetPimRoleEligibilityScheduleArgs({
    required this.roleEligibilityScheduleRequestName,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roleEligibilityScheduleRequestName': roleEligibilityScheduleRequestName,
      'scope': scope,
    };
  }

  factory GetPimRoleEligibilityScheduleArgs.fromMap(Map<String, dynamic> map) {
    return GetPimRoleEligibilityScheduleArgs(
      roleEligibilityScheduleRequestName: pulumi.Input.fromValue(
        map['roleEligibilityScheduleRequestName'] as String,
      ),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}
