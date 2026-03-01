// ignore_for_file: unused_element, unnecessary_cast


/// Details of the ContainerGroupProfile.
class ContainerGroupProfile {
  /// Specifies container group profile id of standby container groups.
  final String id;
  /// Specifies revision of container group profile.
  final double? revision;

  /// Creates a new [ContainerGroupProfile].
  /// [id] Specifies container group profile id of standby container groups.
  /// [revision] Specifies revision of container group profile.
  ContainerGroupProfile({
    required this.id,
    this.revision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'revision': ?revision,
    };
  }

  factory ContainerGroupProfile.fromMap(Map<String, dynamic> map) {
    return ContainerGroupProfile(
      id: map['id'] as String,
      revision: map['revision'] == null ? null : map['revision'] as double,
    );
  }
}

