// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'component_properties.dart';
import 'extended_location.dart';

/// {@template pulumi_iotoperationsorchestrator_solution_args_doc}
/// The set of arguments for Solution.
/// {@endtemplate}
/// {@macro pulumi_iotoperationsorchestrator_solution_args_doc}
class SolutionArgs {
  /// A list of components
  final pulumi.Input<List<ComponentProperties>?>? components;
  /// Edge location of the resource.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// Name of solution.
  final pulumi.Input<String?>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Version of the particular resource.
  final pulumi.Input<String?>? version;

  /// Creates a new [SolutionArgs].
  /// [components] A list of components
  /// [extendedLocation] Edge location of the resource.
  /// [location] The geo-location where the resource lives
  /// [name] Name of solution.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [version] Version of the particular resource.
  const SolutionArgs({
    this.components,
    required this.extendedLocation,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.tags,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'components': ?pulumi.Input.mapOptionalInputValue<List<ComponentProperties>, List<Map<String, dynamic>>>(components, (value) => pulumi.Input.encodeList<ComponentProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'version': ?version,
    };
  }

  factory SolutionArgs.fromMap(Map<String, dynamic> map) {
    return SolutionArgs(
      components: (() { final guardedValue = map['components']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ComponentProperties>(guardedValue, (value) => ComponentProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
      extendedLocation: pulumi.Input.fromValue(ExtendedLocation.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>())),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
