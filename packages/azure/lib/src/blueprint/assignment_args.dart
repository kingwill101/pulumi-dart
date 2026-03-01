// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_identity.dart';

/// {@template pulumi_blueprint_assignment_assignment_args_doc}
/// The set of arguments for Assignment.
/// {@endtemplate}
/// {@macro pulumi_blueprint_assignment_assignment_args_doc}
class AssignmentArgs {
  /// An `identity` block as defined below.
  final pulumi.Input<AssignmentIdentity> identity;
  /// The Azure location of the Assignment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// a list of up to 200 actions that are permitted to bypass the locks applied by the Blueprint.
  final pulumi.Input<List<String>>? lockExcludeActions;
  /// a list of up to 5 Principal IDs that are permitted to bypass the locks applied by the Blueprint.
  final pulumi.Input<List<String>>? lockExcludePrincipals;
  /// The locking mode of the Blueprint Assignment. One of `None` (Default), `AllResourcesReadOnly`, or `AllResourcesDoNotDelete`. Defaults to `None`.
  final pulumi.Input<String>? lockMode;
  /// The name of the Blueprint Assignment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// a JSON string to supply Blueprint Assignment parameter values.
  ///
  /// > **NOTE:** Improperly formatted JSON, or missing values required by a Blueprint will cause the assignment to fail.
  final pulumi.Input<String>? parameterValues;
  /// a JSON string to supply the Blueprint Resource Group information.
  ///
  /// > **NOTE:** Improperly formatted JSON, or missing values required by a Blueprint will cause the assignment to fail.
  final pulumi.Input<String>? resourceGroups;
  /// The Subscription ID the Blueprint Published Version is to be applied to. Changing this forces a new resource to be created.
  final pulumi.Input<String> targetSubscriptionId;
  /// The ID of the Published Version of the blueprint to be assigned.
  final pulumi.Input<String> versionId;

  /// Creates a new [AssignmentArgs].
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure location of the Assignment. Changing this forces a new resource to be created.
  /// [lockExcludeActions] a list of up to 200 actions that are permitted to bypass the locks applied by the Blueprint.
  /// [lockExcludePrincipals] a list of up to 5 Principal IDs that are permitted to bypass the locks applied by the Blueprint.
  /// [lockMode] The locking mode of the Blueprint Assignment. One of `None` (Default), `AllResourcesReadOnly`, or `AllResourcesDoNotDelete`. Defaults to `None`.
  /// [name] The name of the Blueprint Assignment. Changing this forces a new resource to be created.
  /// [parameterValues] a JSON string to supply Blueprint Assignment parameter values.
  /// [resourceGroups] a JSON string to supply the Blueprint Resource Group information.
  /// [targetSubscriptionId] The Subscription ID the Blueprint Published Version is to be applied to. Changing this forces a new resource to be created.
  /// [versionId] The ID of the Published Version of the blueprint to be assigned.
  AssignmentArgs({
    required AssignmentIdentity identity,
    String? location,
    List<String>? lockExcludeActions,
    List<String>? lockExcludePrincipals,
    String? lockMode,
    String? name,
    String? parameterValues,
    String? resourceGroups,
    required String targetSubscriptionId,
    required String versionId,
  }) :
      identity = pulumi.Input.asInput<AssignmentIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      lockExcludeActions = pulumi.Input.asOptionalInput<List<String>>(lockExcludeActions),
      lockExcludePrincipals = pulumi.Input.asOptionalInput<List<String>>(lockExcludePrincipals),
      lockMode = pulumi.Input.asOptionalInput<String>(lockMode),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameterValues = pulumi.Input.asOptionalInput<String>(parameterValues),
      resourceGroups = pulumi.Input.asOptionalInput<String>(resourceGroups),
      targetSubscriptionId = pulumi.Input.asInput<String>(targetSubscriptionId),
      versionId = pulumi.Input.asInput<String>(versionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': pulumi.Input.mapInputValue<AssignmentIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'lockExcludeActions': ?lockExcludeActions,
      'lockExcludePrincipals': ?lockExcludePrincipals,
      'lockMode': ?lockMode,
      'name': ?name,
      'parameterValues': ?parameterValues,
      'resourceGroups': ?resourceGroups,
      'targetSubscriptionId': targetSubscriptionId,
      'versionId': versionId,
    };
  }

  factory AssignmentArgs.fromMap(Map<String, dynamic> map) {
    return AssignmentArgs(
      identity: AssignmentIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      lockExcludeActions: map['lockExcludeActions'] == null ? null : (map['lockExcludeActions'] as List).cast<String>(),
      lockExcludePrincipals: map['lockExcludePrincipals'] == null ? null : (map['lockExcludePrincipals'] as List).cast<String>(),
      lockMode: map['lockMode'] == null ? null : map['lockMode'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      parameterValues: map['parameterValues'] == null ? null : map['parameterValues'] as String,
      resourceGroups: map['resourceGroups'] == null ? null : map['resourceGroups'] as String,
      targetSubscriptionId: map['targetSubscriptionId'] as String,
      versionId: map['versionId'] as String,
    );
  }
}

