// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Capability, to match in Solution Templates and Targets
class Capability {
  /// Description of Capability
  final pulumi.Input<String> description;
  /// Name of Capability
  final pulumi.Input<String> name;
  /// State of resource
  final pulumi.Input<String>? state;

  /// Creates a new [Capability].
  /// [description] Description of Capability
  /// [name] Name of Capability
  /// [state] State of resource
  Capability({
    required this.description,
    required this.name,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'name': name,
      'state': ?state,
    };
  }

  factory Capability.fromMap(Map<String, dynamic> map) {
    return Capability(
      description: pulumi.Input.fromValue(map['description'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

