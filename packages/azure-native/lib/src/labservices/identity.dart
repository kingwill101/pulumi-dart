// ignore_for_file: unused_element, unnecessary_cast

import 'resource_identity_type.dart';

/// Identity for the resource.
class Identity {
  /// The identity type.
  final ResourceIdentityType? type;

  /// Creates a new [Identity].
  /// [type] The identity type.
  Identity({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type == null ? null : type!.value,
    };
  }

  factory Identity.fromMap(Map<String, dynamic> map) {
    return Identity(
      type: map['type'] == null ? null : ResourceIdentityType.fromValue(map['type'] as String),
    );
  }
}

