// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'messaging.dart';
import 'system_assigned_service_identity.dart';

/// {@template pulumi_deviceregistry_namespace_args_doc}
/// The set of arguments for Namespace.
/// {@endtemplate}
/// {@macro pulumi_deviceregistry_namespace_args_doc}
class NamespaceArgs {
  /// The managed service identities assigned to this resource.
  final pulumi.Input<SystemAssignedServiceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Assigned and unassigned messaging endpoints.
  final pulumi.Input<Messaging>? messaging;
  /// The name of the namespace.
  final pulumi.Input<String>? namespaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NamespaceArgs].
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [messaging] Assigned and unassigned messaging endpoints.
  /// [namespaceName] The name of the namespace.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  NamespaceArgs({
    pulumi.Output<SystemAssignedServiceIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<Messaging>? messaging,
    pulumi.Output<String>? namespaceName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      identity = pulumi.Input.asOptionalInput<SystemAssignedServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      messaging = pulumi.Input.asOptionalInput<Messaging>(messaging),
      namespaceName = pulumi.Input.asOptionalInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<SystemAssignedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'messaging': ?pulumi.Input.mapOptionalInputValue<Messaging, Map<String, dynamic>>(messaging, (value) => value.toMap()),
      'namespaceName': ?namespaceName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NamespaceArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceArgs(
      identity: map['identity'] == null ? null : pulumi.Output.create<SystemAssignedServiceIdentity>(SystemAssignedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      messaging: map['messaging'] == null ? null : pulumi.Output.create<Messaging>(Messaging.fromMap((map['messaging'] as Map).cast<String, dynamic>())),
      namespaceName: map['namespaceName'] == null ? null : pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

