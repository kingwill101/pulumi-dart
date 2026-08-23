// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FilesSynchronizationConfigurationExpirationDataRule {
  /// Number of days after last access before expiring data.
  final pulumi.Input<int> daysAfterLastAccess;

  /// Creates a new [FilesSynchronizationConfigurationExpirationDataRule].
  /// [daysAfterLastAccess] Number of days after last access before expiring data.
  const FilesSynchronizationConfigurationExpirationDataRule({
    required this.daysAfterLastAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysAfterLastAccess': daysAfterLastAccess,
    };
  }

  factory FilesSynchronizationConfigurationExpirationDataRule.fromMap(Map<String, dynamic> map) {
    return FilesSynchronizationConfigurationExpirationDataRule(
      daysAfterLastAccess: pulumi.Input.fromValue(map['daysAfterLastAccess'] as int),
    );
  }
}
