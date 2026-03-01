// ignore_for_file: unused_element, unnecessary_cast


/// Contains information about the soft deletion policy of the gallery.
class SoftDeletePolicyResponse {
  /// Enables soft-deletion for resources in this gallery, allowing them to be recovered within retention time.
  final bool? isSoftDeleteEnabled;

  /// Creates a new [SoftDeletePolicyResponse].
  /// [isSoftDeleteEnabled] Enables soft-deletion for resources in this gallery, allowing them to be recovered within retention time.
  SoftDeletePolicyResponse({
    this.isSoftDeleteEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isSoftDeleteEnabled': ?isSoftDeleteEnabled,
    };
  }

  factory SoftDeletePolicyResponse.fromMap(Map<String, dynamic> map) {
    return SoftDeletePolicyResponse(
      isSoftDeleteEnabled: map['isSoftDeleteEnabled'] == null ? null : map['isSoftDeleteEnabled'] as bool,
    );
  }
}

