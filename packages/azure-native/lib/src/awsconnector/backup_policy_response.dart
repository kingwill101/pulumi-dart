// ignore_for_file: unused_element, unnecessary_cast


/// Definition of BackupPolicy
class BackupPolicyResponse {
  /// Set the backup policy status for the file system.  +   *ENABLED* - Turns automatic backups on for the file system.   +   *DISABLED* - Turns automatic backups off for the file system.
  final String? status;

  /// Creates a new [BackupPolicyResponse].
  /// [status] Set the backup policy status for the file system.  +   *ENABLED* - Turns automatic backups on for the file system.   +   *DISABLED* - Turns automatic backups off for the file system.
  BackupPolicyResponse({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory BackupPolicyResponse.fromMap(Map<String, dynamic> map) {
    return BackupPolicyResponse(
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

