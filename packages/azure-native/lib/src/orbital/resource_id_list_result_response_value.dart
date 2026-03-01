// ignore_for_file: unused_element, unnecessary_cast


class ResourceIdListResultResponseValue {
  /// The Azure Resource ID.
  final String? id;

  /// Creates a new [ResourceIdListResultResponseValue].
  /// [id] The Azure Resource ID.
  ResourceIdListResultResponseValue({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ResourceIdListResultResponseValue.fromMap(Map<String, dynamic> map) {
    return ResourceIdListResultResponseValue(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

