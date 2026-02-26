// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../field_index_config/field_index_config.dart';
import '../field_ttl_config/field_ttl_config.dart';

/// The set of arguments for Field.
class FieldArgs {
  /// The id of the collection group to configure.
  final Input<String> collection;

  /// The Firestore database id. Defaults to `"(default)"`.
  final Input<String>? database;

  /// The id of the field to configure.
  final Input<String> field;

  /// The single field index configuration for this field.
  /// Creating an index configuration for this field will override any inherited configuration with the
  /// indexes specified. Configuring the index configuration with an empty block disables all indexes on
  /// the field.
  /// Structure is documented below.
  final Input<FieldIndexConfig>? indexConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The TTL configuration for this Field. If set to an empty block (i.e. <span pulumi-lang-nodejs="`ttlConfig " pulumi-lang-dotnet="`TtlConfig " pulumi-lang-go="`ttlConfig " pulumi-lang-python="`ttl_config " pulumi-lang-yaml="`ttlConfig " pulumi-lang-java="`ttlConfig ">`ttl_config </span>{}`), a TTL policy is configured based on the field. If unset, a TTL policy is not configured (or will be disabled upon updating the resource).
  /// Structure is documented below.
  final Input<FieldTtlConfig>? ttlConfig;

  FieldArgs({
    required this.collection,
    this.database,
    required this.field,
    this.indexConfig,
    this.project,
    this.ttlConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['collection'] = collection;
    final databaseValue = database;
    if (databaseValue != null) {
      map['database'] = databaseValue;
    }
    map['field'] = field;
    final indexConfigValue = indexConfig;
    if (indexConfigValue != null) {
      map['indexConfig'] =
          Input.mapOptionalInputValue<FieldIndexConfig, Map<String, dynamic>>(
              indexConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final ttlConfigValue = ttlConfig;
    if (ttlConfigValue != null) {
      map['ttlConfig'] =
          Input.mapOptionalInputValue<FieldTtlConfig, Map<String, dynamic>>(
              ttlConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory FieldArgs.fromMap(Map<String, dynamic> map) {
    return FieldArgs(
      collection: Input.asInput<String>(map['collection']),
      database: Input.asOptionalInput<String>(map['database']),
      field: Input.asInput<String>(map['field']),
      indexConfig: Input.asOptionalInput<FieldIndexConfig>(map['indexConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      ttlConfig: Input.asOptionalInput<FieldTtlConfig>(map['ttlConfig']),
    );
  }
}
