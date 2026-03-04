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
    this.identity,
    this.location,
    this.messaging,
    this.namespaceName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            SystemAssignedServiceIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'location': ?location,
      'messaging':
          ?pulumi.Input.mapOptionalInputValue<Messaging, Map<String, dynamic>>(
            messaging,
            (value) => value.toMap(),
          ),
      'namespaceName': ?namespaceName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NamespaceArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceArgs(
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SystemAssignedServiceIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      messaging: (() {
        final guardedValue = map['messaging'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Messaging.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      namespaceName: (() {
        final guardedValue = map['namespaceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
