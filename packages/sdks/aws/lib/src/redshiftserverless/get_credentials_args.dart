// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshiftserverless_get_credentials_get_credentials_args_doc}
/// Arguments for getCredentials.
/// {@endtemplate}
/// {@macro pulumi_redshiftserverless_get_credentials_get_credentials_args_doc}
class GetCredentialsArgs {
  /// The name of the database to get temporary authorization to log on to.
  final pulumi.Input<String?>? dbName;
  /// The number of seconds until the returned temporary password expires. The minimum is 900 seconds, and the maximum is 3600 seconds.
  final pulumi.Input<int?>? durationSeconds;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The name of the workgroup associated with the database.
  final pulumi.Input<String> workgroupName;

  /// Creates a new [GetCredentialsArgs].
  /// [dbName] The name of the database to get temporary authorization to log on to.
  /// [durationSeconds] The number of seconds until the returned temporary password expires. The minimum is 900 seconds, and the maximum is 3600 seconds.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [workgroupName] The name of the workgroup associated with the database.
  const GetCredentialsArgs({
    this.dbName,
    this.durationSeconds,
    this.region,
    required this.workgroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbName': ?dbName,
      'durationSeconds': ?durationSeconds,
      'region': ?region,
      'workgroupName': workgroupName,
    };
  }

  factory GetCredentialsArgs.fromMap(Map<String, dynamic> map) {
    return GetCredentialsArgs(
      dbName: (() { final guardedValue = map['dbName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      durationSeconds: (() { final guardedValue = map['durationSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workgroupName: pulumi.Input.fromValue(map['workgroupName'] as String),
    );
  }
}
