// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity.dart';

/// {@template pulumi_azureresiliencemanagement_drill_args_doc}
/// The set of arguments for Drill.
/// {@endtemplate}
/// {@macro pulumi_azureresiliencemanagement_drill_args_doc}
class DrillArgs {
  /// The name of the Drill
  final pulumi.Input<String?>? drillName;
  /// The managed service identities assigned to this resource.
  final pulumi.Input<ManagedServiceIdentity?>? identity;
  /// The resource-specific properties for this resource.
  final pulumi.Input<dynamic>? properties;
  /// The name of the service group.
  final pulumi.Input<String> serviceGroupName;

  /// Creates a new [DrillArgs].
  /// [drillName] The name of the Drill
  /// [identity] The managed service identities assigned to this resource.
  /// [properties] The resource-specific properties for this resource.
  /// [serviceGroupName] The name of the service group.
  const DrillArgs({
    this.drillName,
    this.identity,
    this.properties,
    required this.serviceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'drillName': ?drillName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'properties': ?properties,
      'serviceGroupName': serviceGroupName,
    };
  }

  factory DrillArgs.fromMap(Map<String, dynamic> map) {
    return DrillArgs(
      drillName: (() { final guardedValue = map['drillName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      serviceGroupName: pulumi.Input.fromValue(map['serviceGroupName'] as String),
    );
  }
}
