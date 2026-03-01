// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_configuration.dart';
import 'configuration_datastore.dart';

/// {@template pulumi_database_configuration_configuration_args_doc}
/// The set of arguments for Configuration.
/// {@endtemplate}
/// {@macro pulumi_database_configuration_configuration_args_doc}
class ConfigurationArgs {
  /// An array of configuration parameter name and value. Can be specified multiple times. The configuration object structure is documented below.
  final pulumi.Input<List<ConfigurationConfiguration>>? configurations;
  /// An array of database engine type and version. The datastore
  /// object structure is documented below. Changing this creates resource.
  final pulumi.Input<ConfigurationDatastore> datastore;
  /// Description of the resource.
  final pulumi.Input<String> description;
  /// A unique name for the resource.
  final pulumi.Input<String>? name;
  /// The region in which to create the db instance. Changing this
  /// creates a new instance.
  final pulumi.Input<String>? region;

  /// Creates a new [ConfigurationArgs].
  /// [configurations] An array of configuration parameter name and value. Can be specified multiple times. The configuration object structure is documented below.
  /// [datastore] An array of database engine type and version. The datastore
  /// [description] Description of the resource.
  /// [name] A unique name for the resource.
  /// [region] The region in which to create the db instance. Changing this
  ConfigurationArgs({
    List<ConfigurationConfiguration>? configurations,
    required ConfigurationDatastore datastore,
    required String description,
    String? name,
    String? region,
  }) :
      configurations = pulumi.Input.asOptionalInput<List<ConfigurationConfiguration>>(configurations),
      datastore = pulumi.Input.asInput<ConfigurationDatastore>(datastore),
      description = pulumi.Input.asInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurations': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationConfiguration>, List<Map<String, dynamic>>>(configurations, (value) => pulumi.Input.encodeList<ConfigurationConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'datastore': pulumi.Input.mapInputValue<ConfigurationDatastore, Map<String, dynamic>>(datastore, (value) => value.toMap()),
      'description': description,
      'name': ?name,
      'region': ?region,
    };
  }

  factory ConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationArgs(
      configurations: map['configurations'] == null ? null : pulumi.Input.decodeList<ConfigurationConfiguration>(map['configurations'], (value) => ConfigurationConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      datastore: ConfigurationDatastore.fromMap((map['datastore'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

