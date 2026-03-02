// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_hsm_sku.dart';
import 'managed_service_identity.dart';
import 'mhsmprivate_link_service_connection_state.dart';

/// {@template pulumi_keyvault_mhsmprivate_endpoint_connection_args_doc}
/// The set of arguments for MHSMPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_keyvault_mhsmprivate_endpoint_connection_args_doc}
class MHSMPrivateEndpointConnectionArgs {
  /// Managed service identity (system assigned and/or user assigned identities)
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The supported Azure location where the managed HSM Pool should be created.
  final pulumi.Input<String>? location;
  /// Name of the managed HSM Pool
  final pulumi.Input<String> name;
  /// Name of the private endpoint connection associated with the managed hsm pool.
  final pulumi.Input<String>? privateEndpointConnectionName;
  /// Approval state of the private link connection.
  final pulumi.Input<MHSMPrivateLinkServiceConnectionState>? privateLinkServiceConnectionState;
  /// Name of the resource group that contains the managed HSM pool.
  final pulumi.Input<String> resourceGroupName;
  /// SKU details
  final pulumi.Input<ManagedHsmSku>? sku;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [MHSMPrivateEndpointConnectionArgs].
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [location] The supported Azure location where the managed HSM Pool should be created.
  /// [name] Name of the managed HSM Pool
  /// [privateEndpointConnectionName] Name of the private endpoint connection associated with the managed hsm pool.
  /// [privateLinkServiceConnectionState] Approval state of the private link connection.
  /// [resourceGroupName] Name of the resource group that contains the managed HSM pool.
  /// [sku] SKU details
  /// [tags] Resource tags
  MHSMPrivateEndpointConnectionArgs({
    this.identity,
    this.location,
    required this.name,
    this.privateEndpointConnectionName,
    this.privateLinkServiceConnectionState,
    required this.resourceGroupName,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': name,
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<MHSMPrivateLinkServiceConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<ManagedHsmSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory MHSMPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return MHSMPrivateEndpointConnectionArgs(
      identity: map['identity'] == null ? null : (ManagedServiceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: (map['name'] as String).input(),
      privateEndpointConnectionName: map['privateEndpointConnectionName'] == null ? null : (map['privateEndpointConnectionName']! as String).input(),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : (MHSMPrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: map['sku'] == null ? null : (ManagedHsmSku.fromMap((map['sku']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

