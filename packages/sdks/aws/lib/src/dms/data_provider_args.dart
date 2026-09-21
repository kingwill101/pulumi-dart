// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_provider_settings.dart';

/// {@template pulumi_dms_data_provider_data_provider_args_doc}
/// The set of arguments for DataProvider.
/// {@endtemplate}
/// {@macro pulumi_dms_data_provider_data_provider_args_doc}
class DataProviderArgs {
  /// Description of the data provider.
  final pulumi.Input<String?>? description;
  /// Database engine for the data provider. Valid values: `aurora`, `aurora-postgresql`, `db2`, `db2-zos`, `docdb`, `mariadb`, `mongodb`, `mysql`, `oracle`, `postgres`, `redshift`, `sqlserver`, and `sybase`. Use `aurora` for Amazon Aurora MySQL-Compatible Edition.
  final pulumi.Input<String> engine;
  /// Name of the data provider. AWS generates a name when omitted.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Database connection settings. Configure exactly one block matching `engine`. See `settings` Block below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<DataProviderSettings> settings;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Whether to create a virtual data provider, which does not require a connection to a database. Defaults to `false`.
  final pulumi.Input<bool?>? virtual;

  /// Creates a new [DataProviderArgs].
  /// [description] Description of the data provider.
  /// [engine] Database engine for the data provider. Valid values: `aurora`, `aurora-postgresql`, `db2`, `db2-zos`, `docdb`, `mariadb`, `mongodb`, `mysql`, `oracle`, `postgres`, `redshift`, `sqlserver`, and `sybase`. Use `aurora` for Amazon Aurora MySQL-Compatible Edition.
  /// [name] Name of the data provider. AWS generates a name when omitted.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [settings] Database connection settings. Configure exactly one block matching `engine`. See `settings` Block below.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [virtual] Whether to create a virtual data provider, which does not require a connection to a database. Defaults to `false`.
  const DataProviderArgs({
    this.description,
    required this.engine,
    this.name,
    this.region,
    required this.settings,
    this.tags,
    this.virtual,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'engine': engine,
      'name': ?name,
      'region': ?region,
      'settings': pulumi.Input.mapInputValue<DataProviderSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'tags': ?tags,
      'virtual': ?virtual,
    };
  }

  factory DataProviderArgs.fromMap(Map<String, dynamic> map) {
    return DataProviderArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engine: pulumi.Input.fromValue(map['engine'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: pulumi.Input.fromValue(DataProviderSettings.fromMap((map['settings']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtual: (() { final guardedValue = map['virtual']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
