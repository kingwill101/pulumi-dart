// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'reconciliation_policy.dart';
import 'target_selector_properties.dart';

/// {@template pulumi_iotoperationsorchestrator_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_iotoperationsorchestrator_instance_args_doc}
class InstanceArgs {
  /// Edge location of the resource.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of Instance.
  final pulumi.Input<String>? name;
  /// Reconciliation Policy.
  final pulumi.Input<ReconciliationPolicy>? reconciliationPolicy;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Deployment scope (such as Kubernetes namespace).
  final pulumi.Input<String>? scope;
  /// Name of the solution.
  final pulumi.Input<String>? solution;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Defines the Target the Instance will deploy to.
  final pulumi.Input<TargetSelectorProperties>? target;
  /// Version of the particular resource.
  final pulumi.Input<String>? version;

  /// Creates a new [InstanceArgs].
  /// [extendedLocation] Edge location of the resource.
  /// [location] The geo-location where the resource lives
  /// [name] Name of Instance.
  /// [reconciliationPolicy] Reconciliation Policy.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scope] Deployment scope (such as Kubernetes namespace).
  /// [solution] Name of the solution.
  /// [tags] Resource tags.
  /// [target] Defines the Target the Instance will deploy to.
  /// [version] Version of the particular resource.
  InstanceArgs({
    required ExtendedLocation extendedLocation,
    String? location,
    String? name,
    ReconciliationPolicy? reconciliationPolicy,
    required String resourceGroupName,
    String? scope,
    String? solution,
    Map<String, String>? tags,
    TargetSelectorProperties? target,
    String? version,
  }) :
      extendedLocation = pulumi.Input.asInput<ExtendedLocation>(extendedLocation),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      reconciliationPolicy = pulumi.Input.asOptionalInput<ReconciliationPolicy>(reconciliationPolicy),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scope = pulumi.Input.asOptionalInput<String>(scope),
      solution = pulumi.Input.asOptionalInput<String>(solution),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      target = pulumi.Input.asOptionalInput<TargetSelectorProperties>(target),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'reconciliationPolicy': ?pulumi.Input.mapOptionalInputValue<ReconciliationPolicy, Map<String, dynamic>>(reconciliationPolicy, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'scope': ?scope,
      'solution': ?solution,
      'tags': ?tags,
      'target': ?pulumi.Input.mapOptionalInputValue<TargetSelectorProperties, Map<String, dynamic>>(target, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      extendedLocation: ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      reconciliationPolicy: map['reconciliationPolicy'] == null ? null : ReconciliationPolicy.fromMap((map['reconciliationPolicy'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
      solution: map['solution'] == null ? null : map['solution'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      target: map['target'] == null ? null : TargetSelectorProperties.fromMap((map['target'] as Map).cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

