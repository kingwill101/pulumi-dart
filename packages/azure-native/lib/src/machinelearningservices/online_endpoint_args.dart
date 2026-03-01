// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity.dart';
import 'online_endpoint_machinelearningservices.dart';
import 'sku.dart';

/// {@template pulumi_machinelearningservices_online_endpoint_args_doc}
/// The set of arguments for OnlineEndpoint.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_online_endpoint_args_doc}
class OnlineEndpointArgs {
  /// Online Endpoint name.
  final pulumi.Input<String>? endpointName;
  /// Managed service identity (system assigned and/or user assigned identities)
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type.
  final pulumi.Input<String>? kind;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<OnlineEndpointMachinelearningservices> onlineEndpointProperties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Sku details required for ARM contract for Autoscaling.
  final pulumi.Input<Sku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [OnlineEndpointArgs].
  /// [endpointName] Online Endpoint name.
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type.
  /// [location] The geo-location where the resource lives
  /// [onlineEndpointProperties] [Required] Additional attributes of the entity.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] Sku details required for ARM contract for Autoscaling.
  /// [tags] Resource tags.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  OnlineEndpointArgs({
    String? endpointName,
    ManagedServiceIdentity? identity,
    String? kind,
    String? location,
    required OnlineEndpointMachinelearningservices onlineEndpointProperties,
    required String resourceGroupName,
    Sku? sku,
    Map<String, String>? tags,
    required String workspaceName,
  }) :
      endpointName = pulumi.Input.asOptionalInput<String>(endpointName),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      onlineEndpointProperties = pulumi.Input.asInput<OnlineEndpointMachinelearningservices>(onlineEndpointProperties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': ?endpointName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'onlineEndpointProperties': onlineEndpointProperties,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'workspaceName': workspaceName,
    };
  }

  factory OnlineEndpointArgs.fromMap(Map<String, dynamic> map) {
    return OnlineEndpointArgs(
      endpointName: map['endpointName'] == null ? null : map['endpointName'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      kind: map['kind'] == null ? null : map['kind'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      onlineEndpointProperties: map['onlineEndpointProperties'] as OnlineEndpointMachinelearningservices,
      resourceGroupName: map['resourceGroupName'] as String,
      sku: map['sku'] == null ? null : Sku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      workspaceName: map['workspaceName'] as String,
    );
  }
}

