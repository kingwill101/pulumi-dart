// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'component_properties.dart';
import 'extended_location.dart';
import 'reconciliation_policy.dart';
import 'topologies_properties.dart';

/// {@template pulumi_iotoperationsorchestrator_target_args_doc}
/// The set of arguments for Target.
/// {@endtemplate}
/// {@macro pulumi_iotoperationsorchestrator_target_args_doc}
class TargetArgs {
  /// A list of components.
  final pulumi.Input<List<ComponentProperties>>? components;
  /// Edge location of the resource.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of target.
  final pulumi.Input<String>? name;
  /// Reconciliation Policy.
  final pulumi.Input<ReconciliationPolicy>? reconciliationPolicy;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Deployment scope (such as Kubernetes namespace).
  final pulumi.Input<String>? scope;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Defines the device topology for a target or instance.
  final pulumi.Input<List<TopologiesProperties>>? topologies;
  /// Version of the particular resource.
  final pulumi.Input<String>? version;

  /// Creates a new [TargetArgs].
  /// [components] A list of components.
  /// [extendedLocation] Edge location of the resource.
  /// [location] The geo-location where the resource lives
  /// [name] Name of target.
  /// [reconciliationPolicy] Reconciliation Policy.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scope] Deployment scope (such as Kubernetes namespace).
  /// [tags] Resource tags.
  /// [topologies] Defines the device topology for a target or instance.
  /// [version] Version of the particular resource.
  TargetArgs({
    List<ComponentProperties>? components,
    required ExtendedLocation extendedLocation,
    String? location,
    String? name,
    ReconciliationPolicy? reconciliationPolicy,
    required String resourceGroupName,
    String? scope,
    Map<String, String>? tags,
    List<TopologiesProperties>? topologies,
    String? version,
  }) :
      components = pulumi.Input.asOptionalInput<List<ComponentProperties>>(components),
      extendedLocation = pulumi.Input.asInput<ExtendedLocation>(extendedLocation),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      reconciliationPolicy = pulumi.Input.asOptionalInput<ReconciliationPolicy>(reconciliationPolicy),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scope = pulumi.Input.asOptionalInput<String>(scope),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      topologies = pulumi.Input.asOptionalInput<List<TopologiesProperties>>(topologies),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'components': ?pulumi.Input.mapOptionalInputValue<List<ComponentProperties>, List<Map<String, dynamic>>>(components, (value) => pulumi.Input.encodeList<ComponentProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'reconciliationPolicy': ?pulumi.Input.mapOptionalInputValue<ReconciliationPolicy, Map<String, dynamic>>(reconciliationPolicy, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'scope': ?scope,
      'tags': ?tags,
      'topologies': ?pulumi.Input.mapOptionalInputValue<List<TopologiesProperties>, List<Map<String, dynamic>>>(topologies, (value) => pulumi.Input.encodeList<TopologiesProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'version': ?version,
    };
  }

  factory TargetArgs.fromMap(Map<String, dynamic> map) {
    return TargetArgs(
      components: map['components'] == null ? null : pulumi.Input.decodeList<ComponentProperties>(map['components'], (value) => ComponentProperties.fromMap((value as Map).cast<String, dynamic>())),
      extendedLocation: ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      reconciliationPolicy: map['reconciliationPolicy'] == null ? null : ReconciliationPolicy.fromMap((map['reconciliationPolicy'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      topologies: map['topologies'] == null ? null : pulumi.Input.decodeList<TopologiesProperties>(map['topologies'], (value) => TopologiesProperties.fromMap((value as Map).cast<String, dynamic>())),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

