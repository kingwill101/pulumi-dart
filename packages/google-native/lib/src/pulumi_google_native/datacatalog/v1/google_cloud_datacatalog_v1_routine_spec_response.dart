// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_big_query_routine_spec_response.dart';
import 'google_cloud_datacatalog_v1_routine_spec_argument_response.dart';

/// Specification that applies to a routine. Valid only for entries with the `ROUTINE` type.
class GoogleCloudDatacatalogV1RoutineSpecResponse {
  /// Fields specific for BigQuery routines.
  final GoogleCloudDatacatalogV1BigQueryRoutineSpecResponse bigqueryRoutineSpec;

  /// The body of the routine.
  final String definitionBody;

  /// The language the routine is written in. The exact value depends on the source system. For BigQuery routines, possible values are: * `SQL` * `JAVASCRIPT`
  final String language;

  /// Return type of the argument. The exact value depends on the source system and the language.
  final String returnType;

  /// Arguments of the routine.
  final List<GoogleCloudDatacatalogV1RoutineSpecArgumentResponse>
      routineArguments;

  /// The type of the routine.
  final String routineType;

  GoogleCloudDatacatalogV1RoutineSpecResponse({
    required this.bigqueryRoutineSpec,
    required this.definitionBody,
    required this.language,
    required this.returnType,
    required this.routineArguments,
    required this.routineType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bigqueryRoutineSpec'] = bigqueryRoutineSpec.toMap();
    map['definitionBody'] = definitionBody;
    map['language'] = language;
    map['returnType'] = returnType;
    map['routineArguments'] = pulumi.Input.encodeList<
        GoogleCloudDatacatalogV1RoutineSpecArgumentResponse,
        Map<String, dynamic>>(routineArguments, (value) => value.toMap());
    map['routineType'] = routineType;
    return map;
  }

  factory GoogleCloudDatacatalogV1RoutineSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1RoutineSpecResponse(
      bigqueryRoutineSpec:
          GoogleCloudDatacatalogV1BigQueryRoutineSpecResponse.fromMap(
              (map['bigqueryRoutineSpec'] as Map).cast<String, dynamic>()),
      definitionBody: map['definitionBody'] as String,
      language: map['language'] as String,
      returnType: map['returnType'] as String,
      routineArguments: pulumi.Input.decodeList<
              GoogleCloudDatacatalogV1RoutineSpecArgumentResponse>(
          map['routineArguments'],
          (value) =>
              GoogleCloudDatacatalogV1RoutineSpecArgumentResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      routineType: map['routineType'] as String,
    );
  }
}
