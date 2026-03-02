// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackupPolicyBackupPolicy {
  /// A status of the backup policy. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> status;

  /// Creates a new [BackupPolicyBackupPolicy].
  /// [status] A status of the backup policy. Valid values: `ENABLED`, `DISABLED`.
  BackupPolicyBackupPolicy({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
    };
  }

  factory BackupPolicyBackupPolicy.fromMap(Map<String, dynamic> map) {
    return BackupPolicyBackupPolicy(
      status: (map['status'] as String).input(),
    );
  }
}

