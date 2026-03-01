// ignore_for_file: unused_element, unnecessary_cast

import 'fleet_managed_namespace_status_response.dart';
import 'managed_namespace_properties_response.dart';
import 'propagation_policy_response.dart';

/// The properties of a fleet managed namespace.
class FleetManagedNamespacePropertiesResponse {
  /// Action if the managed namespace with the same name already exists. Default is Never.
  final String adoptionPolicy;
  /// Delete options of a fleet managed namespace. Default is Keep.
  final String deletePolicy;
  /// The namespace properties for the fleet managed namespace.
  final ManagedNamespacePropertiesResponse? managedNamespaceProperties;
  /// The Azure Portal FQDN of the Fleet hub.
  final String portalFqdn;
  /// The profile of the propagation to create the namespace.
  final PropagationPolicyResponse? propagationPolicy;
  /// The status of the last operation.
  final String provisioningState;
  /// Status information of the last operation for fleet managed namespace.
  final FleetManagedNamespaceStatusResponse status;

  /// Creates a new [FleetManagedNamespacePropertiesResponse].
  /// [adoptionPolicy] Action if the managed namespace with the same name already exists. Default is Never.
  /// [deletePolicy] Delete options of a fleet managed namespace. Default is Keep.
  /// [managedNamespaceProperties] The namespace properties for the fleet managed namespace.
  /// [portalFqdn] The Azure Portal FQDN of the Fleet hub.
  /// [propagationPolicy] The profile of the propagation to create the namespace.
  /// [provisioningState] The status of the last operation.
  /// [status] Status information of the last operation for fleet managed namespace.
  FleetManagedNamespacePropertiesResponse({
    required this.adoptionPolicy,
    required this.deletePolicy,
    this.managedNamespaceProperties,
    required this.portalFqdn,
    this.propagationPolicy,
    required this.provisioningState,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adoptionPolicy': adoptionPolicy,
      'deletePolicy': deletePolicy,
      'managedNamespaceProperties': ?managedNamespaceProperties == null ? null : managedNamespaceProperties!.toMap(),
      'portalFqdn': portalFqdn,
      'propagationPolicy': ?propagationPolicy == null ? null : propagationPolicy!.toMap(),
      'provisioningState': provisioningState,
      'status': status.toMap(),
    };
  }

  factory FleetManagedNamespacePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return FleetManagedNamespacePropertiesResponse(
      adoptionPolicy: map['adoptionPolicy'] as String,
      deletePolicy: map['deletePolicy'] as String,
      managedNamespaceProperties: map['managedNamespaceProperties'] == null ? null : ManagedNamespacePropertiesResponse.fromMap((map['managedNamespaceProperties'] as Map).cast<String, dynamic>()),
      portalFqdn: map['portalFqdn'] as String,
      propagationPolicy: map['propagationPolicy'] == null ? null : PropagationPolicyResponse.fromMap((map['propagationPolicy'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      status: FleetManagedNamespaceStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

