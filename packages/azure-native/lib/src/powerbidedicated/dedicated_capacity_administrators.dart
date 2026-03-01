// ignore_for_file: unused_element, unnecessary_cast


/// An array of administrator user identities
class DedicatedCapacityAdministrators {
  /// An array of administrator user identities.
  final List<String>? members;

  /// Creates a new [DedicatedCapacityAdministrators].
  /// [members] An array of administrator user identities.
  DedicatedCapacityAdministrators({
    this.members,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'members': ?members,
    };
  }

  factory DedicatedCapacityAdministrators.fromMap(Map<String, dynamic> map) {
    return DedicatedCapacityAdministrators(
      members: map['members'] == null ? null : (map['members'] as List).cast<String>(),
    );
  }
}

