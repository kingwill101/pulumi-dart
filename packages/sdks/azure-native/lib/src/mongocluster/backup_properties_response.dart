// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The backup properties of the cluster. This includes the earliest restore time and retention settings.
class BackupPropertiesResponse {
  /// Earliest restore timestamp in UTC ISO8601 format.
  final pulumi.Input<String> earliestRestoreTime;

  /// Creates a new [BackupPropertiesResponse].
  /// [earliestRestoreTime] Earliest restore timestamp in UTC ISO8601 format.
  BackupPropertiesResponse({
    required this.earliestRestoreTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'earliestRestoreTime': earliestRestoreTime,
    };
  }

  factory BackupPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BackupPropertiesResponse(
      earliestRestoreTime: (map['earliestRestoreTime'] as String).input(),
    );
  }
}

