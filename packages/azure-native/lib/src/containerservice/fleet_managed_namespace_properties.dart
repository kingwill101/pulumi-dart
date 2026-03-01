// ignore_for_file: unused_element, unnecessary_cast

import 'managed_namespace_properties.dart';
import 'propagation_policy.dart';

/// The properties of a fleet managed namespace.
class FleetManagedNamespaceProperties {
  /// Action if the managed namespace with the same name already exists. Default is Never.
  final String adoptionPolicy;
  /// Delete options of a fleet managed namespace. Default is Keep.
  final String deletePolicy;
  /// The namespace properties for the fleet managed namespace.
  final ManagedNamespaceProperties? managedNamespaceProperties;
  /// The profile of the propagation to create the namespace.
  final PropagationPolicy? propagationPolicy;

  /// Creates a new [FleetManagedNamespaceProperties].
  /// [adoptionPolicy] Action if the managed namespace with the same name already exists. Default is Never.
  /// [deletePolicy] Delete options of a fleet managed namespace. Default is Keep.
  /// [managedNamespaceProperties] The namespace properties for the fleet managed namespace.
  /// [propagationPolicy] The profile of the propagation to create the namespace.
  FleetManagedNamespaceProperties({
    required this.adoptionPolicy,
    required this.deletePolicy,
    this.managedNamespaceProperties,
    this.propagationPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adoptionPolicy': adoptionPolicy,
      'deletePolicy': deletePolicy,
      'managedNamespaceProperties': ?managedNamespaceProperties == null ? null : managedNamespaceProperties!.toMap(),
      'propagationPolicy': ?propagationPolicy == null ? null : propagationPolicy!.toMap(),
    };
  }

  factory FleetManagedNamespaceProperties.fromMap(Map<String, dynamic> map) {
    return FleetManagedNamespaceProperties(
      adoptionPolicy: map['adoptionPolicy'] as String,
      deletePolicy: map['deletePolicy'] as String,
      managedNamespaceProperties: map['managedNamespaceProperties'] == null ? null : ManagedNamespaceProperties.fromMap((map['managedNamespaceProperties'] as Map).cast<String, dynamic>()),
      propagationPolicy: map['propagationPolicy'] == null ? null : PropagationPolicy.fromMap((map['propagationPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}

