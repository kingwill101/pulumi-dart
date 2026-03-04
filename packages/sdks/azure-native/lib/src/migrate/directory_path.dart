// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Second level entity for virtual directories.
class DirectoryPath {
  /// Gets or sets the physical path of the directory on the web server.
  final pulumi.Input<String>? physical;

  /// Gets or sets the virtual path for the directory.
  final pulumi.Input<String>? virtual;

  /// Creates a new [DirectoryPath].
  /// [physical] Gets or sets the physical path of the directory on the web server.
  /// [virtual] Gets or sets the virtual path for the directory.
  DirectoryPath({this.physical, this.virtual});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'physical': ?physical, 'virtual': ?virtual};
  }

  factory DirectoryPath.fromMap(Map<String, dynamic> map) {
    return DirectoryPath(
      physical: (() {
        final guardedValue = map['physical'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      virtual: (() {
        final guardedValue = map['virtual'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
