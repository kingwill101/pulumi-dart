// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Buildpack properties payload
class BuildpackProperties {
  /// Id of the buildpack
  final pulumi.Input<String>? id;

  /// Creates a new [BuildpackProperties].
  /// [id] Id of the buildpack
  BuildpackProperties({this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id};
  }

  factory BuildpackProperties.fromMap(Map<String, dynamic> map) {
    return BuildpackProperties(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
