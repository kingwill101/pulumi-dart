// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The administration properties of the Fabric capacity resource
class CapacityAdministration {
  /// An array of administrator user identities.
  final pulumi.Input<List<String>> members;

  /// Creates a new [CapacityAdministration].
  /// [members] An array of administrator user identities.
  CapacityAdministration({
    required this.members,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'members': members,
    };
  }

  factory CapacityAdministration.fromMap(Map<String, dynamic> map) {
    return CapacityAdministration(
      members: pulumi.Input.fromValue((map['members'] as List).cast<String>()),
    );
  }
}

