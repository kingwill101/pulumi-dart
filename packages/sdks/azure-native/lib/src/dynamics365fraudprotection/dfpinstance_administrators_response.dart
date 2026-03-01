// ignore_for_file: unused_element, unnecessary_cast


/// An array of administrator user identities
class DFPInstanceAdministratorsResponse {
  /// An array of administrator user identities.
  final List<String>? members;

  /// Creates a new [DFPInstanceAdministratorsResponse].
  /// [members] An array of administrator user identities.
  DFPInstanceAdministratorsResponse({
    this.members,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'members': ?members,
    };
  }

  factory DFPInstanceAdministratorsResponse.fromMap(Map<String, dynamic> map) {
    return DFPInstanceAdministratorsResponse(
      members: map['members'] == null ? null : (map['members'] as List).cast<String>(),
    );
  }
}

