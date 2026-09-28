// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_provider_settings.dart';

/// Input properties used for looking up and filtering DataProvider resources.
class DataProviderState {
  /// ARN of the data provider.
  final pulumi.Input<String?>? arn;
  /// Creation time of the data provider in RFC3339 format.
  final pulumi.Input<String?>? creationTime;
  /// Description of the data provider.
  final pulumi.Input<String?>? description;
  /// Database engine for the data provider. Valid values: `aurora`, `aurora-postgresql`, `db2`, `db2-zos`, `docdb`, `mariadb`, `mongodb`, `mysql`, `oracle`, `postgres`, `redshift`, `sqlserver`, and `sybase`. Use `aurora` for Amazon Aurora MySQL-Compatible Edition.
  final pulumi.Input<String?>? engine;
  /// Name of the data provider. AWS generates a name when omitted.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Database connection settings. Configure exactly one block matching `engine`. See `settings` Block below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<DataProviderSettings?>? settings;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Whether to create a virtual data provider, which does not require a connection to a database. Defaults to `false`.
  final pulumi.Input<bool?>? virtual;

  /// Creates a new [DataProviderState].
  /// [arn] ARN of the data provider.
  /// [creationTime] Creation time of the data provider in RFC3339 format.
  /// [description] Description of the data provider.
  /// [engine] Database engine for the data provider. Valid values: `aurora`, `aurora-postgresql`, `db2`, `db2-zos`, `docdb`, `mariadb`, `mongodb`, `mysql`, `oracle`, `postgres`, `redshift`, `sqlserver`, and `sybase`. Use `aurora` for Amazon Aurora MySQL-Compatible Edition.
  /// [name] Name of the data provider. AWS generates a name when omitted.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [settings] Database connection settings. Configure exactly one block matching `engine`. See `settings` Block below.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [virtual] Whether to create a virtual data provider, which does not require a connection to a database. Defaults to `false`.
  const DataProviderState({
    this.arn,
    this.creationTime,
    this.description,
    this.engine,
    this.name,
    this.region,
    this.settings,
    this.tags,
    this.tagsAll,
    this.virtual,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'creationTime': ?creationTime,
      'description': ?description,
      'engine': ?engine,
      'name': ?name,
      'region': ?region,
      'settings': ?pulumi.Input.mapOptionalInputValue<DataProviderSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'virtual': ?virtual,
    };
  }

  factory DataProviderState.fromMap(Map<String, dynamic> map) {
    return DataProviderState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataProviderSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtual: (() { final guardedValue = map['virtual']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
