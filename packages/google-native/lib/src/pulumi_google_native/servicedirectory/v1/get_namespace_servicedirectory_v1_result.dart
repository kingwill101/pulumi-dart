// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getNamespace.
class GetNamespaceServicedirectoryV1Result {
  /// Optional. Resource labels associated with this namespace. No more than 64 user labels can be associated with a given resource. Label keys and values can be no longer than 63 characters.
  final Map<String, String> labels;

  /// Immutable. The resource name for the namespace in the format `projects/*/locations/*/namespaces/*`.
  final String name;

  /// The globally unique identifier of the namespace in the UUID4 format.
  final String uid;

  GetNamespaceServicedirectoryV1Result({
    required this.labels,
    required this.name,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['labels'] = labels;
    map['name'] = name;
    map['uid'] = uid;
    return map;
  }

  factory GetNamespaceServicedirectoryV1Result.fromMap(
      Map<String, dynamic> map) {
    return GetNamespaceServicedirectoryV1Result(
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      uid: map['uid'] as String,
    );
  }
}
