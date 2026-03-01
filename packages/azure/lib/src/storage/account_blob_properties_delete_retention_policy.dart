// ignore_for_file: unused_element, unnecessary_cast


class AccountBlobPropertiesDeleteRetentionPolicy {
  /// Specifies the number of days that the blob should be retained, between `1` and `365` days. Defaults to `7`.
  final int? days;
  /// Indicates whether permanent deletion of the soft deleted blob versions and snapshots is allowed. Defaults to `false`.
  ///
  /// > **Note:** `permanent_delete_enabled` cannot be set to true if a `restore_policy` block is defined.
  final bool? permanentDeleteEnabled;

  /// Creates a new [AccountBlobPropertiesDeleteRetentionPolicy].
  /// [days] Specifies the number of days that the blob should be retained, between `1` and `365` days. Defaults to `7`.
  /// [permanentDeleteEnabled] Indicates whether permanent deletion of the soft deleted blob versions and snapshots is allowed. Defaults to `false`.
  AccountBlobPropertiesDeleteRetentionPolicy({
    this.days,
    this.permanentDeleteEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
      'permanentDeleteEnabled': ?permanentDeleteEnabled,
    };
  }

  factory AccountBlobPropertiesDeleteRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return AccountBlobPropertiesDeleteRetentionPolicy(
      days: map['days'] == null ? null : map['days'] as int,
      permanentDeleteEnabled: map['permanentDeleteEnabled'] == null ? null : map['permanentDeleteEnabled'] as bool,
    );
  }
}

