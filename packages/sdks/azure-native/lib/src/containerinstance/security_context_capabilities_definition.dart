// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The capabilities to add or drop from a container.
class SecurityContextCapabilitiesDefinition {
  /// The capabilities to add to the container.
  final pulumi.Input<List<String>>? add;
  /// The capabilities to drop from the container.
  final pulumi.Input<List<String>>? drop;

  /// Creates a new [SecurityContextCapabilitiesDefinition].
  /// [add] The capabilities to add to the container.
  /// [drop] The capabilities to drop from the container.
  SecurityContextCapabilitiesDefinition({
    this.add,
    this.drop,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'add': ?add,
      'drop': ?drop,
    };
  }

  factory SecurityContextCapabilitiesDefinition.fromMap(Map<String, dynamic> map) {
    return SecurityContextCapabilitiesDefinition(
      add: map['add'] == null ? null : ((map['add']! as List).cast<String>()).input(),
      drop: map['drop'] == null ? null : ((map['drop']! as List).cast<String>()).input(),
    );
  }
}

