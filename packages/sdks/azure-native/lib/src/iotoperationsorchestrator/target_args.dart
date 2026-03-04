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
    this.components,
    required this.extendedLocation,
    this.location,
    this.name,
    this.reconciliationPolicy,
    required this.resourceGroupName,
    this.scope,
    this.tags,
    this.topologies,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'components':
          ?pulumi.Input.mapOptionalInputValue<
            List<ComponentProperties>,
            List<Map<String, dynamic>>
          >(
            components,
            (value) =>
                pulumi.Input.encodeList<
                  ComponentProperties,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'extendedLocation':
          pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(
            extendedLocation,
            (value) => value.toMap(),
          ),
      'location': ?location,
      'name': ?name,
      'reconciliationPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            ReconciliationPolicy,
            Map<String, dynamic>
          >(reconciliationPolicy, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'scope': ?scope,
      'tags': ?tags,
      'topologies':
          ?pulumi.Input.mapOptionalInputValue<
            List<TopologiesProperties>,
            List<Map<String, dynamic>>
          >(
            topologies,
            (value) =>
                pulumi.Input.encodeList<
                  TopologiesProperties,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'version': ?version,
    };
  }

  factory TargetArgs.fromMap(Map<String, dynamic> map) {
    return TargetArgs(
      components: (() {
        final guardedValue = map['components'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ComponentProperties>(
            guardedValue,
            (value) => ComponentProperties.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      extendedLocation: pulumi.Input.fromValue(
        ExtendedLocation.fromMap(
          (map['extendedLocation']! as Map).cast<String, dynamic>(),
        ),
      ),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      reconciliationPolicy: (() {
        final guardedValue = map['reconciliationPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ReconciliationPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      scope: (() {
        final guardedValue = map['scope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      topologies: (() {
        final guardedValue = map['topologies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<TopologiesProperties>(
            guardedValue,
            (value) => TopologiesProperties.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
