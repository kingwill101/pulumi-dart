// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StorageSpacesExtendedLocation {
  /// The extended location name.
  final pulumi.Input<String>? name;

  /// The extended location type.
  final pulumi.Input<String>? type;

  /// Creates a new [StorageSpacesExtendedLocation].
  /// [name] The extended location name.
  /// [type] The extended location type.
  StorageSpacesExtendedLocation({this.name, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'type': ?type};
  }

  factory StorageSpacesExtendedLocation.fromMap(Map<String, dynamic> map) {
    return StorageSpacesExtendedLocation(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
