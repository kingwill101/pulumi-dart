// ignore_for_file: unused_element, unnecessary_cast


/// Contains information about the soft deletion policy of the gallery.
class SoftDeletePolicy {
  /// Enables soft-deletion for resources in this gallery, allowing them to be recovered within retention time.
  final bool? isSoftDeleteEnabled;

  /// Creates a new [SoftDeletePolicy].
  /// [isSoftDeleteEnabled] Enables soft-deletion for resources in this gallery, allowing them to be recovered within retention time.
  SoftDeletePolicy({
    this.isSoftDeleteEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isSoftDeleteEnabled': ?isSoftDeleteEnabled,
    };
  }

  factory SoftDeletePolicy.fromMap(Map<String, dynamic> map) {
    return SoftDeletePolicy(
      isSoftDeleteEnabled: map['isSoftDeleteEnabled'] == null ? null : map['isSoftDeleteEnabled'] as bool,
    );
  }
}

