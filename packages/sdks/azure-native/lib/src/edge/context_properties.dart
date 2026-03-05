// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capability.dart';
import 'hierarchy.dart';

/// Context Properties
class ContextProperties {
  /// List of Capabilities
  final pulumi.Input<List<Capability>> capabilities;
  /// List of Hierarchies
  final pulumi.Input<List<Hierarchy>> hierarchies;

  /// Creates a new [ContextProperties].
  /// [capabilities] List of Capabilities
  /// [hierarchies] List of Hierarchies
  ContextProperties({
    required this.capabilities,
    required this.hierarchies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': pulumi.Input.mapInputValue<List<Capability>, List<Map<String, dynamic>>>(capabilities, (value) => pulumi.Input.encodeList<Capability, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hierarchies': pulumi.Input.mapInputValue<List<Hierarchy>, List<Map<String, dynamic>>>(hierarchies, (value) => pulumi.Input.encodeList<Hierarchy, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ContextProperties.fromMap(Map<String, dynamic> map) {
    return ContextProperties(
      capabilities: pulumi.Input.fromValue(pulumi.Input.decodeList<Capability>(map['capabilities']!, (value) => Capability.fromMap((value as Map).cast<String, dynamic>()))),
      hierarchies: pulumi.Input.fromValue(pulumi.Input.decodeList<Hierarchy>(map['hierarchies']!, (value) => Hierarchy.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

