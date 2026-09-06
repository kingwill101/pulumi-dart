// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_namespace_properties.dart';
import 'propagation_policy.dart';

/// The properties of a fleet managed namespace.
class FleetManagedNamespaceProperties {
  /// Action if the managed namespace with the same name already exists. Default is Never.
  final pulumi.Input<dynamic> adoptionPolicy;
  /// Delete options of a fleet managed namespace. Default is Keep.
  final pulumi.Input<dynamic> deletePolicy;
  /// The namespace properties for the fleet managed namespace.
  final pulumi.Input<ManagedNamespaceProperties?>? managedNamespaceProperties;
  /// The profile of the propagation to create the namespace.
  final pulumi.Input<PropagationPolicy?>? propagationPolicy;

  /// Creates a new [FleetManagedNamespaceProperties].
  /// [adoptionPolicy] Action if the managed namespace with the same name already exists. Default is Never.
  /// [deletePolicy] Delete options of a fleet managed namespace. Default is Keep.
  /// [managedNamespaceProperties] The namespace properties for the fleet managed namespace.
  /// [propagationPolicy] The profile of the propagation to create the namespace.
  const FleetManagedNamespaceProperties({
    required this.adoptionPolicy,
    required this.deletePolicy,
    this.managedNamespaceProperties,
    this.propagationPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adoptionPolicy': adoptionPolicy,
      'deletePolicy': deletePolicy,
      'managedNamespaceProperties': ?pulumi.Input.mapOptionalInputValue<ManagedNamespaceProperties, Map<String, dynamic>>(managedNamespaceProperties, (value) => value.toMap()),
      'propagationPolicy': ?pulumi.Input.mapOptionalInputValue<PropagationPolicy, Map<String, dynamic>>(propagationPolicy, (value) => value.toMap()),
    };
  }

  factory FleetManagedNamespaceProperties.fromMap(Map<String, dynamic> map) {
    return FleetManagedNamespaceProperties(
      adoptionPolicy: pulumi.Input.fromValue(map['adoptionPolicy']),
      deletePolicy: pulumi.Input.fromValue(map['deletePolicy']),
      managedNamespaceProperties: (() { final guardedValue = map['managedNamespaceProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedNamespaceProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      propagationPolicy: (() { final guardedValue = map['propagationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PropagationPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
