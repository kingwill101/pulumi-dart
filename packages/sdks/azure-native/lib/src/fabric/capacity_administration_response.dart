// ignore_for_file: unused_element, unnecessary_cast


/// The administration properties of the Fabric capacity resource
class CapacityAdministrationResponse {
  /// An array of administrator user identities.
  final List<String> members;

  /// Creates a new [CapacityAdministrationResponse].
  /// [members] An array of administrator user identities.
  CapacityAdministrationResponse({
    required this.members,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'members': members,
    };
  }

  factory CapacityAdministrationResponse.fromMap(Map<String, dynamic> map) {
    return CapacityAdministrationResponse(
      members: (map['members'] as List).cast<String>(),
    );
  }
}

