// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The administration properties of the Fabric capacity resource
class CapacityAdministrationResponse {
  /// An array of administrator user identities.
  final pulumi.Input<List<String>> members;

  /// Creates a new [CapacityAdministrationResponse].
  /// [members] An array of administrator user identities.
  CapacityAdministrationResponse({required this.members});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'members': members};
  }

  factory CapacityAdministrationResponse.fromMap(Map<String, dynamic> map) {
    return CapacityAdministrationResponse(
      members: pulumi.Input.fromValue((map['members'] as List).cast<String>()),
    );
  }
}
