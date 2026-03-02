// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A reference to an Azure resource.
class ResourceReferenceResponse {
  /// The fully qualified Azure resource id.
  final pulumi.Input<String>? id;

  /// Creates a new [ResourceReferenceResponse].
  /// [id] The fully qualified Azure resource id.
  ResourceReferenceResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ResourceReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ResourceReferenceResponse(
      id: map['id'] == null ? null : (map['id'] as String).input(),
    );
  }
}

