// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capability.dart';
import 'hierarchy.dart';

/// Context Properties
class ContextProperties {
  /// List of Capabilities
  final List<Capability> capabilities;
  /// List of Hierarchies
  final List<Hierarchy> hierarchies;

  /// Creates a new [ContextProperties].
  /// [capabilities] List of Capabilities
  /// [hierarchies] List of Hierarchies
  ContextProperties({
    required this.capabilities,
    required this.hierarchies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': pulumi.Input.encodeList<Capability, Map<String, dynamic>>(capabilities, (value) => value.toMap()),
      'hierarchies': pulumi.Input.encodeList<Hierarchy, Map<String, dynamic>>(hierarchies, (value) => value.toMap()),
    };
  }

  factory ContextProperties.fromMap(Map<String, dynamic> map) {
    return ContextProperties(
      capabilities: pulumi.Input.decodeList<Capability>(map['capabilities'], (value) => Capability.fromMap((value as Map).cast<String, dynamic>())),
      hierarchies: pulumi.Input.decodeList<Hierarchy>(map['hierarchies'], (value) => Hierarchy.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

