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
  final pulumi.Input<List<ComponentProperties>>? components;
  /// Edge location of the resource.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of solution.
  final pulumi.Input<String>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Version of the particular resource.
  final pulumi.Input<String>? version;

  /// Creates a new [SolutionArgs].
  /// [components] A list of components
  /// [extendedLocation] Edge location of the resource.
  /// [location] The geo-location where the resource lives
  /// [name] Name of solution.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [version] Version of the particular resource.
  SolutionArgs({
    pulumi.Output<List<ComponentProperties>>? components,
    required pulumi.Output<ExtendedLocation> extendedLocation,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? version,
  }) :
      components = pulumi.Input.asOptionalInput<List<ComponentProperties>>(components),
      extendedLocation = pulumi.Input.asInput<ExtendedLocation>(extendedLocation),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      version = pulumi.Input.asOptionalInput<String>(version);

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
      components: map['components'] == null ? null : pulumi.Output.create<List<ComponentProperties>>(pulumi.Input.decodeList<ComponentProperties>(map['components'], (value) => ComponentProperties.fromMap((value as Map).cast<String, dynamic>()))),
      extendedLocation: pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

