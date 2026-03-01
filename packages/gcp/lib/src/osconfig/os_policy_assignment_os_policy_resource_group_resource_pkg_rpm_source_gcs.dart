// ignore_for_file: unused_element, unnecessary_cast


class OsPolicyAssignmentOsPolicyResourceGroupResourcePkgRpmSourceGcs {
  /// Bucket of the Cloud Storage object.
  final String bucket;
  /// Generation number of the Cloud Storage object.
  final int? generation;
  /// Name of the Cloud Storage object.
  final String object;

  /// Creates a new [OsPolicyAssignmentOsPolicyResourceGroupResourcePkgRpmSourceGcs].
  /// [bucket] Bucket of the Cloud Storage object.
  /// [generation] Generation number of the Cloud Storage object.
  /// [object] Name of the Cloud Storage object.
  OsPolicyAssignmentOsPolicyResourceGroupResourcePkgRpmSourceGcs({
    required this.bucket,
    this.generation,
    required this.object,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'generation': ?generation,
      'object': object,
    };
  }

  factory OsPolicyAssignmentOsPolicyResourceGroupResourcePkgRpmSourceGcs.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupResourcePkgRpmSourceGcs(
      bucket: map['bucket'] as String,
      generation: map['generation'] == null ? null : map['generation'] as int,
      object: map['object'] as String,
    );
  }
}

