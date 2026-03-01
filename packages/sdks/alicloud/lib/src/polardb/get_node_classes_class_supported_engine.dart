// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_node_classes_class_supported_engine_available_resource.dart';

class GetNodeClassesClassSupportedEngine {
  /// A list of PolarDB node available classes.
  final List<GetNodeClassesClassSupportedEngineAvailableResource> availableResources;
  /// In the zone, the database type supports classes in the following available_resources.
  final String engine;

  /// Creates a new [GetNodeClassesClassSupportedEngine].
  /// [availableResources] A list of PolarDB node available classes.
  /// [engine] In the zone, the database type supports classes in the following available_resources.
  GetNodeClassesClassSupportedEngine({
    required this.availableResources,
    required this.engine,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableResources': pulumi.Input.encodeList<GetNodeClassesClassSupportedEngineAvailableResource, Map<String, dynamic>>(availableResources, (value) => value.toMap()),
      'engine': engine,
    };
  }

  factory GetNodeClassesClassSupportedEngine.fromMap(Map<String, dynamic> map) {
    return GetNodeClassesClassSupportedEngine(
      availableResources: pulumi.Input.decodeList<GetNodeClassesClassSupportedEngineAvailableResource>(map['availableResources'], (value) => GetNodeClassesClassSupportedEngineAvailableResource.fromMap((value as Map).cast<String, dynamic>())),
      engine: map['engine'] as String,
    );
  }
}

