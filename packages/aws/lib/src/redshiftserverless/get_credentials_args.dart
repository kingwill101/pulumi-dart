// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshiftserverless_get_credentials_get_credentials_args_doc}
/// Arguments for getCredentials.
/// {@endtemplate}
/// {@macro pulumi_redshiftserverless_get_credentials_get_credentials_args_doc}
class GetCredentialsArgs {
  /// The name of the database to get temporary authorization to log on to.
  final pulumi.Input<String>? dbName;

  /// The number of seconds until the returned temporary password expires. The minimum is 900 seconds, and the maximum is 3600 seconds.
  final pulumi.Input<int>? durationSeconds;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The name of the workgroup associated with the database.
  final pulumi.Input<String> workgroupName;

  /// Creates a new [GetCredentialsArgs].
  /// [dbName] The name of the database to get temporary authorization to log on to.
  /// [durationSeconds] The number of seconds until the returned temporary password expires. The minimum is 900 seconds, and the maximum is 3600 seconds.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [workgroupName] The name of the workgroup associated with the database.
  GetCredentialsArgs({
    String? dbName,
    int? durationSeconds,
    String? region,
    required String workgroupName,
  })  : dbName = pulumi.Input.asOptionalInput<String>(dbName),
        durationSeconds = pulumi.Input.asOptionalInput<int>(durationSeconds),
        region = pulumi.Input.asOptionalInput<String>(region),
        workgroupName = pulumi.Input.asInput<String>(workgroupName);

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
      dbName: map['dbName'] == null ? null : map['dbName'] as String,
      durationSeconds:
          map['durationSeconds'] == null ? null : map['durationSeconds'] as int,
      region: map['region'] == null ? null : map['region'] as String,
      workgroupName: map['workgroupName'] as String,
    );
  }
}
