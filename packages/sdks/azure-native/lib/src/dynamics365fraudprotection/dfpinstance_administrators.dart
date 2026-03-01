// ignore_for_file: unused_element, unnecessary_cast


/// An array of administrator user identities
class DFPInstanceAdministrators {
  /// An array of administrator user identities.
  final List<String>? members;

  /// Creates a new [DFPInstanceAdministrators].
  /// [members] An array of administrator user identities.
  DFPInstanceAdministrators({
    this.members,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'members': ?members,
    };
  }

  factory DFPInstanceAdministrators.fromMap(Map<String, dynamic> map) {
    return DFPInstanceAdministrators(
      members: map['members'] == null ? null : (map['members'] as List).cast<String>(),
    );
  }
}

