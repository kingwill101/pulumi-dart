// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCredentials.
class GetCredentialsArgs {
  /// The name of the database to get temporary authorization to log on to.
  final pulumi.Input<String>? dbName;

  /// The number of seconds until the returned temporary password expires. The minimum is 900 seconds, and the maximum is 3600 seconds.
  final pulumi.Input<int>? durationSeconds;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The name of the workgroup associated with the database.
  final pulumi.Input<String> workgroupName;

  GetCredentialsArgs({
    this.dbName,
    this.durationSeconds,
    this.region,
    required this.workgroupName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dbNameValue = dbName;
    if (dbNameValue != null) {
      map['dbName'] = dbNameValue;
    }
    final durationSecondsValue = durationSeconds;
    if (durationSecondsValue != null) {
      map['durationSeconds'] = durationSecondsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['workgroupName'] = workgroupName;
    return map;
  }

  factory GetCredentialsArgs.fromMap(Map<String, dynamic> map) {
    return GetCredentialsArgs(
      dbName: pulumi.Input.asOptionalInput<String>(map['dbName']),
      durationSeconds:
          pulumi.Input.asOptionalInput<int>(map['durationSeconds']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      workgroupName: pulumi.Input.asInput<String>(map['workgroupName']),
    );
  }
}
