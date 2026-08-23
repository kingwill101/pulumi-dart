// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The definition of a linked resource.
class LinkedResourceResponse {
  /// The ARM id of the linked resource.
  final pulumi.Input<String>? id;
  /// The location of the linked resource.
  final pulumi.Input<String>? location;

  /// Creates a new [LinkedResourceResponse].
  /// [id] The ARM id of the linked resource.
  /// [location] The location of the linked resource.
  const LinkedResourceResponse({
    this.id,
    this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
    };
  }

  factory LinkedResourceResponse.fromMap(Map<String, dynamic> map) {
    return LinkedResourceResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
