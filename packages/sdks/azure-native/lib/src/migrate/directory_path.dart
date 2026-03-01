// ignore_for_file: unused_element, unnecessary_cast


/// Second level entity for virtual directories.
class DirectoryPath {
  /// Gets or sets the physical path of the directory on the web server.
  final String? physical;
  /// Gets or sets the virtual path for the directory.
  final String? virtual;

  /// Creates a new [DirectoryPath].
  /// [physical] Gets or sets the physical path of the directory on the web server.
  /// [virtual] Gets or sets the virtual path for the directory.
  DirectoryPath({
    this.physical,
    this.virtual,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'physical': ?physical,
      'virtual': ?virtual,
    };
  }

  factory DirectoryPath.fromMap(Map<String, dynamic> map) {
    return DirectoryPath(
      physical: map['physical'] == null ? null : map['physical'] as String,
      virtual: map['virtual'] == null ? null : map['virtual'] as String,
    );
  }
}

