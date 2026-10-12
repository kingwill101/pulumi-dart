// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_odb_get_autonomous_database_get_autonomous_database_args_doc}
/// Arguments for getAutonomousDatabase.
/// {@endtemplate}
/// {@macro pulumi_odb_get_autonomous_database_get_autonomous_database_args_doc}
class GetAutonomousDatabaseArgs {
  /// Unique Autonomous Database identifier.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> id;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetAutonomousDatabaseArgs].
  /// [id] Unique Autonomous Database identifier.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetAutonomousDatabaseArgs({
    required this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'region': ?region,
    };
  }

  factory GetAutonomousDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabaseArgs(
      id: pulumi.Input.fromValue(map['id'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
