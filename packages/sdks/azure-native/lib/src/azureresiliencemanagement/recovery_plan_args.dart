// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity.dart';
import 'recovery_plan_properties.dart';

/// {@template pulumi_azureresiliencemanagement_recovery_plan_args_doc}
/// The set of arguments for RecoveryPlan.
/// {@endtemplate}
/// {@macro pulumi_azureresiliencemanagement_recovery_plan_args_doc}
class RecoveryPlanArgs {
  /// The managed service identities assigned to this resource.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The resource-specific properties for this resource.
  final pulumi.Input<RecoveryPlanProperties>? properties;
  /// The name of the recovery orchestration plan.
  final pulumi.Input<String>? recoveryPlanName;
  /// The name of the service group.
  final pulumi.Input<String> serviceGroupName;

  /// Creates a new [RecoveryPlanArgs].
  /// [identity] The managed service identities assigned to this resource.
  /// [properties] The resource-specific properties for this resource.
  /// [recoveryPlanName] The name of the recovery orchestration plan.
  /// [serviceGroupName] The name of the service group.
  const RecoveryPlanArgs({
    this.identity,
    this.properties,
    this.recoveryPlanName,
    required this.serviceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'properties': ?pulumi.Input.mapOptionalInputValue<RecoveryPlanProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'recoveryPlanName': ?recoveryPlanName,
      'serviceGroupName': serviceGroupName,
    };
  }

  factory RecoveryPlanArgs.fromMap(Map<String, dynamic> map) {
    return RecoveryPlanArgs(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RecoveryPlanProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      recoveryPlanName: (() { final guardedValue = map['recoveryPlanName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceGroupName: pulumi.Input.fromValue(map['serviceGroupName'] as String),
    );
  }
}
