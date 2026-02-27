// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_big_query_routine_spec.dart';
import 'google_cloud_datacatalog_v1_routine_spec_argument.dart';
import 'google_cloud_datacatalog_v1_routine_spec_routine_type.dart';

/// Specification that applies to a routine. Valid only for entries with the `ROUTINE` type.
class GoogleCloudDatacatalogV1RoutineSpec {
  /// Fields specific for BigQuery routines.
  final GoogleCloudDatacatalogV1BigQueryRoutineSpec? bigqueryRoutineSpec;

  /// The body of the routine.
  final String? definitionBody;

  /// The language the routine is written in. The exact value depends on the source system. For BigQuery routines, possible values are: * `SQL` * `JAVASCRIPT`
  final String? language;

  /// Return type of the argument. The exact value depends on the source system and the language.
  final String? returnType;

  /// Arguments of the routine.
  final List<GoogleCloudDatacatalogV1RoutineSpecArgument>? routineArguments;

  /// The type of the routine.
  final GoogleCloudDatacatalogV1RoutineSpecRoutineType? routineType;

  GoogleCloudDatacatalogV1RoutineSpec({
    this.bigqueryRoutineSpec,
    this.definitionBody,
    this.language,
    this.returnType,
    this.routineArguments,
    this.routineType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bigqueryRoutineSpecValue = bigqueryRoutineSpec;
    if (bigqueryRoutineSpecValue != null) {
      map['bigqueryRoutineSpec'] = bigqueryRoutineSpecValue.toMap();
    }
    final definitionBodyValue = definitionBody;
    if (definitionBodyValue != null) {
      map['definitionBody'] = definitionBodyValue;
    }
    final languageValue = language;
    if (languageValue != null) {
      map['language'] = languageValue;
    }
    final returnTypeValue = returnType;
    if (returnTypeValue != null) {
      map['returnType'] = returnTypeValue;
    }
    final routineArgumentsValue = routineArguments;
    if (routineArgumentsValue != null) {
      map['routineArguments'] = pulumi.Input.encodeList<
              GoogleCloudDatacatalogV1RoutineSpecArgument,
              Map<String, dynamic>>(
          routineArgumentsValue, (value) => value.toMap());
    }
    final routineTypeValue = routineType;
    if (routineTypeValue != null) {
      map['routineType'] = routineTypeValue.value;
    }
    return map;
  }

  factory GoogleCloudDatacatalogV1RoutineSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1RoutineSpec(
      bigqueryRoutineSpec: map['bigqueryRoutineSpec'] == null
          ? null
          : GoogleCloudDatacatalogV1BigQueryRoutineSpec.fromMap(
              (map['bigqueryRoutineSpec'] as Map).cast<String, dynamic>()),
      definitionBody: map['definitionBody'] == null
          ? null
          : map['definitionBody'] as String,
      language: map['language'] == null ? null : map['language'] as String,
      returnType:
          map['returnType'] == null ? null : map['returnType'] as String,
      routineArguments: map['routineArguments'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudDatacatalogV1RoutineSpecArgument>(
              map['routineArguments'],
              (value) => GoogleCloudDatacatalogV1RoutineSpecArgument.fromMap(
                  (value as Map).cast<String, dynamic>())),
      routineType: map['routineType'] == null
          ? null
          : GoogleCloudDatacatalogV1RoutineSpecRoutineType.fromValue(
              map['routineType'] as String),
    );
  }
}
