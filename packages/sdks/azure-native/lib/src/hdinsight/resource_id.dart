// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The azure resource id.
class ResourceId {
  /// The azure resource id.
  final pulumi.Input<String>? id;

  /// Creates a new [ResourceId].
  /// [id] The azure resource id.
  ResourceId({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ResourceId.fromMap(Map<String, dynamic> map) {
    return ResourceId(
      id: map['id'] == null ? null : (map['id']! as String).input(),
    );
  }
}

