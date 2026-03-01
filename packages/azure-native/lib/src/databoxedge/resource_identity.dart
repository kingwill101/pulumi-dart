// ignore_for_file: unused_element, unnecessary_cast


/// Msi identity details of the resource
class ResourceIdentity {
  /// Identity type
  final String? type;

  /// Creates a new [ResourceIdentity].
  /// [type] Identity type
  ResourceIdentity({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory ResourceIdentity.fromMap(Map<String, dynamic> map) {
    return ResourceIdentity(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

