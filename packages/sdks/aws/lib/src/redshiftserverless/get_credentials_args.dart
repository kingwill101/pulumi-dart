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
    pulumi.Output<String>? dbName,
    pulumi.Output<int>? durationSeconds,
    pulumi.Output<String>? region,
    required pulumi.Output<String> workgroupName,
  }) :
      dbName = pulumi.Input.asOptionalInput<String>(dbName),
      durationSeconds = pulumi.Input.asOptionalInput<int>(durationSeconds),
      region = pulumi.Input.asOptionalInput<String>(region),
      workgroupName = pulumi.Input.asInput<String>(workgroupName);

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
      dbName: map['dbName'] == null ? null : pulumi.Output.create<String>(map['dbName'] as String),
      durationSeconds: map['durationSeconds'] == null ? null : pulumi.Output.create<int>(map['durationSeconds'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      workgroupName: pulumi.Output.create<String>(map['workgroupName'] as String),
    );
  }
}

