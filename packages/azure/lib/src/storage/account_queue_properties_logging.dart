// ignore_for_file: unused_element, unnecessary_cast


class AccountQueuePropertiesLogging {
  /// Indicates whether all delete requests should be logged.
  final bool delete;
  /// Indicates whether all read requests should be logged.
  final bool read;
  /// Specifies the number of days that logs will be retained.
  final int? retentionPolicyDays;
  /// The version of storage analytics to configure.
  final String version;
  /// Indicates whether all write requests should be logged.
  final bool write;

  /// Creates a new [AccountQueuePropertiesLogging].
  /// [delete] Indicates whether all delete requests should be logged.
  /// [read] Indicates whether all read requests should be logged.
  /// [retentionPolicyDays] Specifies the number of days that logs will be retained.
  /// [version] The version of storage analytics to configure.
  /// [write] Indicates whether all write requests should be logged.
  AccountQueuePropertiesLogging({
    required this.delete,
    required this.read,
    this.retentionPolicyDays,
    required this.version,
    required this.write,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delete': delete,
      'read': read,
      'retentionPolicyDays': ?retentionPolicyDays,
      'version': version,
      'write': write,
    };
  }

  factory AccountQueuePropertiesLogging.fromMap(Map<String, dynamic> map) {
    return AccountQueuePropertiesLogging(
      delete: map['delete'] as bool,
      read: map['read'] as bool,
      retentionPolicyDays: map['retentionPolicyDays'] == null ? null : map['retentionPolicyDays'] as int,
      version: map['version'] as String,
      write: map['write'] as bool,
    );
  }
}

