// ignore_for_file: unused_element, unnecessary_cast


/// The soft delete policy for a container registry
class SoftDeletePolicy {
  /// The number of days after which a soft-deleted item is permanently deleted.
  final int? retentionDays;
  /// The value that indicates whether the policy is enabled or not.
  final String? status;

  /// Creates a new [SoftDeletePolicy].
  /// [retentionDays] The number of days after which a soft-deleted item is permanently deleted.
  /// [status] The value that indicates whether the policy is enabled or not.
  SoftDeletePolicy({
    this.retentionDays,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionDays': ?retentionDays,
      'status': ?status,
    };
  }

  factory SoftDeletePolicy.fromMap(Map<String, dynamic> map) {
    return SoftDeletePolicy(
      retentionDays: map['retentionDays'] == null ? null : map['retentionDays'] as int,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

