// ignore_for_file: unused_element, unnecessary_cast


class ManagedPolicyAttachmentsExclusiveTimeouts {
  /// A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  final String? create;
  /// A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  final String? update;

  /// Creates a new [ManagedPolicyAttachmentsExclusiveTimeouts].
  /// [create] A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  /// [update] A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds), "m" (minutes), "h" (hours).
  ManagedPolicyAttachmentsExclusiveTimeouts({
    this.create,
    this.update,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'create': ?create,
      'update': ?update,
    };
  }

  factory ManagedPolicyAttachmentsExclusiveTimeouts.fromMap(Map<String, dynamic> map) {
    return ManagedPolicyAttachmentsExclusiveTimeouts(
      create: map['create'] == null ? null : map['create'] as String,
      update: map['update'] == null ? null : map['update'] as String,
    );
  }
}

