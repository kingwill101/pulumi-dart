// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_finspace_kx_database_kx_database_args_doc}
/// The set of arguments for KxDatabase.
/// {@endtemplate}
/// {@macro pulumi_finspace_kx_database_kx_database_args_doc}
class KxDatabaseArgs {
  /// Description of the KX database.
  final pulumi.Input<String>? description;

  /// Unique identifier for the KX environment.
  final pulumi.Input<String> environmentId;

  /// Name of the KX database.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [KxDatabaseArgs].
  /// [description] Description of the KX database.
  /// [environmentId] Unique identifier for the KX environment.
  /// [name] Name of the KX database.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  KxDatabaseArgs({
    this.description,
    required this.environmentId,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'environmentId': environmentId,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory KxDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return KxDatabaseArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
