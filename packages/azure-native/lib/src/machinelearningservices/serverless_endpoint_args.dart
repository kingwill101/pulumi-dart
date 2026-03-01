// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity.dart';
import 'serverless_endpoint_machinelearningservices.dart';
import 'sku.dart';

/// {@template pulumi_machinelearningservices_serverless_endpoint_args_doc}
/// The set of arguments for ServerlessEndpoint.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_serverless_endpoint_args_doc}
class ServerlessEndpointArgs {
  /// Managed service identity (system assigned and/or user assigned identities)
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type.
  final pulumi.Input<String>? kind;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Serverless Endpoint name.
  final pulumi.Input<String>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<ServerlessEndpointMachinelearningservices> serverlessEndpointProperties;
  /// Sku details required for ARM contract for Autoscaling.
  final pulumi.Input<Sku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ServerlessEndpointArgs].
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type.
  /// [location] The geo-location where the resource lives
  /// [name] Serverless Endpoint name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverlessEndpointProperties] [Required] Additional attributes of the entity.
  /// [sku] Sku details required for ARM contract for Autoscaling.
  /// [tags] Resource tags.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  ServerlessEndpointArgs({
    ManagedServiceIdentity? identity,
    String? kind,
    String? location,
    String? name,
    required String resourceGroupName,
    required ServerlessEndpointMachinelearningservices serverlessEndpointProperties,
    Sku? sku,
    Map<String, String>? tags,
    required String workspaceName,
  }) :
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverlessEndpointProperties = pulumi.Input.asInput<ServerlessEndpointMachinelearningservices>(serverlessEndpointProperties),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'serverlessEndpointProperties': serverlessEndpointProperties,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'workspaceName': workspaceName,
    };
  }

  factory ServerlessEndpointArgs.fromMap(Map<String, dynamic> map) {
    return ServerlessEndpointArgs(
      identity: map['identity'] == null ? null : ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      kind: map['kind'] == null ? null : map['kind'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serverlessEndpointProperties: map['serverlessEndpointProperties'] as ServerlessEndpointMachinelearningservices,
      sku: map['sku'] == null ? null : Sku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      workspaceName: map['workspaceName'] as String,
    );
  }
}

