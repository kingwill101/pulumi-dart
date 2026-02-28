// ignore_for_file: unused_element, unnecessary_cast

class OsPolicyAssignmentOsPolicyResourceGroupResourcePkgMsiSourceGcs {
  /// Bucket of the Cloud Storage object.
  final String bucket;

  /// Generation number of the Cloud Storage object.
  final int? generation;

  /// Name of the Cloud Storage object.
  final String object;

  /// Creates a new [OsPolicyAssignmentOsPolicyResourceGroupResourcePkgMsiSourceGcs].
  /// [bucket] Bucket of the Cloud Storage object.
  /// [generation] Generation number of the Cloud Storage object.
  /// [object] Name of the Cloud Storage object.
  OsPolicyAssignmentOsPolicyResourceGroupResourcePkgMsiSourceGcs({
    required this.bucket,
    this.generation,
    required this.object,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final generationValue = generation;
    if (generationValue != null) {
      map['generation'] = generationValue;
    }
    map['object'] = object;
    return map;
  }

  factory OsPolicyAssignmentOsPolicyResourceGroupResourcePkgMsiSourceGcs.fromMap(
      Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupResourcePkgMsiSourceGcs(
      bucket: map['bucket'] as String,
      generation: map['generation'] == null ? null : map['generation'] as int,
      object: map['object'] as String,
    );
  }
}
