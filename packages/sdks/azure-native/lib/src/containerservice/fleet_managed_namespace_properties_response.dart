// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_managed_namespace_status_response.dart';
import 'managed_namespace_properties_response.dart';
import 'propagation_policy_response.dart';

/// The properties of a fleet managed namespace.
class FleetManagedNamespacePropertiesResponse {
  /// Action if the managed namespace with the same name already exists. Default is Never.
  final pulumi.Input<String> adoptionPolicy;
  /// Delete options of a fleet managed namespace. Default is Keep.
  final pulumi.Input<String> deletePolicy;
  /// The namespace properties for the fleet managed namespace.
  final pulumi.Input<ManagedNamespacePropertiesResponse>? managedNamespaceProperties;
  /// The Azure Portal FQDN of the Fleet hub.
  final pulumi.Input<String> portalFqdn;
  /// The profile of the propagation to create the namespace.
  final pulumi.Input<PropagationPolicyResponse>? propagationPolicy;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// Status information of the last operation for fleet managed namespace.
  final pulumi.Input<FleetManagedNamespaceStatusResponse> status;

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
      'managedNamespaceProperties': ?pulumi.Input.mapOptionalInputValue<ManagedNamespacePropertiesResponse, Map<String, dynamic>>(managedNamespaceProperties, (value) => value.toMap()),
      'portalFqdn': portalFqdn,
      'propagationPolicy': ?pulumi.Input.mapOptionalInputValue<PropagationPolicyResponse, Map<String, dynamic>>(propagationPolicy, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'status': pulumi.Input.mapInputValue<FleetManagedNamespaceStatusResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory FleetManagedNamespacePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return FleetManagedNamespacePropertiesResponse(
      adoptionPolicy: pulumi.Input.fromValue(map['adoptionPolicy'] as String),
      deletePolicy: pulumi.Input.fromValue(map['deletePolicy'] as String),
      managedNamespaceProperties: (() { final guardedValue = map['managedNamespaceProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedNamespacePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      portalFqdn: pulumi.Input.fromValue(map['portalFqdn'] as String),
      propagationPolicy: (() { final guardedValue = map['propagationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PropagationPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      status: pulumi.Input.fromValue(FleetManagedNamespaceStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>())),
    );
  }
}

