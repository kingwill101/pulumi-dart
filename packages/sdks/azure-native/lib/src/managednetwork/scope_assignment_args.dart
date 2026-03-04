// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetwork_scope_assignment_args_doc}
/// The set of arguments for ScopeAssignment.
/// {@endtemplate}
/// {@macro pulumi_managednetwork_scope_assignment_args_doc}
class ScopeAssignmentArgs {
  /// The managed network ID with scope will be assigned to.
  final pulumi.Input<String>? assignedManagedNetwork;

  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;

  /// The base resource of the scope assignment to create. The scope can be any REST resource instance. For example, use 'subscriptions/{subscription-id}' for a subscription, 'subscriptions/{subscription-id}/resourceGroups/{resource-group-name}' for a resource group, and 'subscriptions/{subscription-id}/resourceGroups/{resource-group-name}/providers/{resource-provider}/{resource-type}/{resource-name}' for a resource.
  final pulumi.Input<String> scope;

  /// The name of the scope assignment to create.
  final pulumi.Input<String>? scopeAssignmentName;

  /// Creates a new [ScopeAssignmentArgs].
  /// [assignedManagedNetwork] The managed network ID with scope will be assigned to.
  /// [location] The geo-location where the resource lives
  /// [scope] The base resource of the scope assignment to create. The scope can be any REST resource instance. For example, use 'subscriptions/{subscription-id}' for a subscription, 'subscriptions/{subscription-id}/resourceGroups/{resource-group-name}' for a resource group, and 'subscriptions/{subscription-id}/resourceGroups/{resource-group-name}/providers/{resource-provider}/{resource-type}/{resource-name}' for a resource.
  /// [scopeAssignmentName] The name of the scope assignment to create.
  ScopeAssignmentArgs({
    this.assignedManagedNetwork,
    this.location,
    required this.scope,
    this.scopeAssignmentName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedManagedNetwork': ?assignedManagedNetwork,
      'location': ?location,
      'scope': scope,
      'scopeAssignmentName': ?scopeAssignmentName,
    };
  }

  factory ScopeAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return ScopeAssignmentArgs(
      assignedManagedNetwork: (() {
        final guardedValue = map['assignedManagedNetwork'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      scopeAssignmentName: (() {
        final guardedValue = map['scopeAssignmentName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
