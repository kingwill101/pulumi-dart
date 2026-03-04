// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OptInResourceDataCatalog {
  /// Identifier for the catalog resource.
  final pulumi.Input<String>? id;

  /// Creates a new [OptInResourceDataCatalog].
  /// [id] Identifier for the catalog resource.
  OptInResourceDataCatalog({this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id};
  }

  factory OptInResourceDataCatalog.fromMap(Map<String, dynamic> map) {
    return OptInResourceDataCatalog(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
