// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'argument.dart';
import 'remote_function_options.dart';
import 'routine_data_governance_type.dart';
import 'routine_determinism_level.dart';
import 'routine_language.dart';
import 'routine_reference.dart';
import 'routine_routine_type.dart';
import 'routine_security_mode.dart';
import 'spark_options.dart';
import 'standard_sql_data_type.dart';
import 'standard_sql_table_type.dart';

/// The set of arguments for Routine.
class RoutineArgs {
  /// Optional.
  final Input<List<Argument>>? arguments;

  /// Optional. If set to `DATA_MASKING`, the function is validated and made available as a masking function. For more information, see [Create custom masking routines](https://cloud.google.com/bigquery/docs/user-defined-functions#custom-mask).
  final Input<RoutineDataGovernanceType>? dataGovernanceType;
  final Input<String> datasetId;

  /// The body of the routine. For functions, this is the expression in the AS clause. If language=SQL, it is the substring inside (but excluding) the parentheses. For example, for the function created with the following statement: `CREATE FUNCTION JoinLines(x string, y string) as (concat(x, "\n", y))` The definition_body is `concat(x, "\n", y)` (\n is not replaced with linebreak). If language=JAVASCRIPT, it is the evaluated string in the AS clause. For example, for the function created with the following statement: `CREATE FUNCTION f() RETURNS STRING LANGUAGE js AS 'return "\n";\n'` The definition_body is `return "\n";\n` Note that both \n are replaced with linebreaks.
  final Input<String> definitionBody;

  /// Optional. The description of the routine, if defined.
  final Input<String>? description;

  /// Optional. The determinism level of the JavaScript UDF, if defined.
  final Input<RoutineDeterminismLevel>? determinismLevel;

  /// Optional. If language = "JAVASCRIPT", this field stores the path of the imported JAVASCRIPT libraries.
  final Input<List<String>>? importedLibraries;

  /// Optional. Defaults to "SQL" if remote_function_options field is absent, not set otherwise.
  final Input<RoutineLanguage>? language;
  final Input<String>? project;

  /// Optional. Remote function specific options.
  final Input<RemoteFunctionOptions>? remoteFunctionOptions;

  /// Optional. Can be set only if routine_type = "TABLE_VALUED_FUNCTION". If absent, the return table type is inferred from definition_body at query time in each query that references this routine. If present, then the columns in the evaluated table result will be cast to match the column types specified in return table type, at query time.
  final Input<StandardSqlTableType>? returnTableType;

  /// Optional if language = "SQL"; required otherwise. Cannot be set if routine_type = "TABLE_VALUED_FUNCTION". If absent, the return type is inferred from definition_body at query time in each query that references this routine. If present, then the evaluated result will be cast to the specified returned type at query time. For example, for the functions created with the following statements: * `CREATE FUNCTION Add(x FLOAT64, y FLOAT64) RETURNS FLOAT64 AS (x + y);` * `CREATE FUNCTION Increment(x FLOAT64) AS (Add(x, 1));` * `CREATE FUNCTION Decrement(x FLOAT64) RETURNS FLOAT64 AS (Add(x, -1));` The return_type is `{type_kind: "FLOAT64"}` for `Add` and `Decrement`, and is absent for `Increment` (inferred as FLOAT64 at query time). Suppose the function `Add` is replaced by `CREATE OR REPLACE FUNCTION Add(x INT64, y INT64) AS (x + y);` Then the inferred return type of `Increment` is automatically changed to INT64 at query time, while the return type of `Decrement` remains FLOAT64.
  final Input<StandardSqlDataType>? returnType;

  /// Reference describing the ID of this routine.
  final Input<RoutineReference> routineReference;

  /// The type of routine.
  final Input<RoutineRoutineType> routineType;

  /// Optional. The security mode of the routine, if defined. If not defined, the security mode is automatically determined from the routine's configuration.
  final Input<RoutineSecurityMode>? securityMode;

  /// Optional. Spark specific options.
  final Input<SparkOptions>? sparkOptions;

  /// Optional. Can be set for procedures only. If true (default), the definition body will be validated in the creation and the updates of the procedure. For procedures with an argument of ANY TYPE, the definition body validtion is not supported at creation/update time, and thus this field must be set to false explicitly.
  final Input<bool>? strictMode;

  RoutineArgs({
    this.arguments,
    this.dataGovernanceType,
    required this.datasetId,
    required this.definitionBody,
    this.description,
    this.determinismLevel,
    this.importedLibraries,
    this.language,
    this.project,
    this.remoteFunctionOptions,
    this.returnTableType,
    this.returnType,
    required this.routineReference,
    required this.routineType,
    this.securityMode,
    this.sparkOptions,
    this.strictMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final argumentsValue = arguments;
    if (argumentsValue != null) {
      map['arguments'] = Input.mapOptionalInputValue<List<Argument>,
              List<Map<String, dynamic>>>(
          argumentsValue,
          (value) => Input.encodeList<Argument, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final dataGovernanceTypeValue = dataGovernanceType;
    if (dataGovernanceTypeValue != null) {
      map['dataGovernanceType'] =
          Input.mapOptionalInputValue<RoutineDataGovernanceType, String>(
              dataGovernanceTypeValue, (value) => value.value);
    }
    map['datasetId'] = datasetId;
    map['definitionBody'] = definitionBody;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final determinismLevelValue = determinismLevel;
    if (determinismLevelValue != null) {
      map['determinismLevel'] =
          Input.mapOptionalInputValue<RoutineDeterminismLevel, String>(
              determinismLevelValue, (value) => value.value);
    }
    final importedLibrariesValue = importedLibraries;
    if (importedLibrariesValue != null) {
      map['importedLibraries'] = importedLibrariesValue;
    }
    final languageValue = language;
    if (languageValue != null) {
      map['language'] = Input.mapOptionalInputValue<RoutineLanguage, String>(
          languageValue, (value) => value.value);
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final remoteFunctionOptionsValue = remoteFunctionOptions;
    if (remoteFunctionOptionsValue != null) {
      map['remoteFunctionOptions'] = Input.mapOptionalInputValue<
              RemoteFunctionOptions, Map<String, dynamic>>(
          remoteFunctionOptionsValue, (value) => value.toMap());
    }
    final returnTableTypeValue = returnTableType;
    if (returnTableTypeValue != null) {
      map['returnTableType'] = Input.mapOptionalInputValue<StandardSqlTableType,
          Map<String, dynamic>>(returnTableTypeValue, (value) => value.toMap());
    }
    final returnTypeValue = returnType;
    if (returnTypeValue != null) {
      map['returnType'] = Input.mapOptionalInputValue<StandardSqlDataType,
          Map<String, dynamic>>(returnTypeValue, (value) => value.toMap());
    }
    map['routineReference'] =
        Input.mapInputValue<RoutineReference, Map<String, dynamic>>(
            routineReference, (value) => value.toMap());
    map['routineType'] = Input.mapInputValue<RoutineRoutineType, String>(
        routineType, (value) => value.value);
    final securityModeValue = securityMode;
    if (securityModeValue != null) {
      map['securityMode'] =
          Input.mapOptionalInputValue<RoutineSecurityMode, String>(
              securityModeValue, (value) => value.value);
    }
    final sparkOptionsValue = sparkOptions;
    if (sparkOptionsValue != null) {
      map['sparkOptions'] =
          Input.mapOptionalInputValue<SparkOptions, Map<String, dynamic>>(
              sparkOptionsValue, (value) => value.toMap());
    }
    final strictModeValue = strictMode;
    if (strictModeValue != null) {
      map['strictMode'] = strictModeValue;
    }
    return map;
  }

  factory RoutineArgs.fromMap(Map<String, dynamic> map) {
    return RoutineArgs(
      arguments: Input.asOptionalInput<List<Argument>>(map['arguments']),
      dataGovernanceType: Input.asOptionalInput<RoutineDataGovernanceType>(
          map['dataGovernanceType']),
      datasetId: Input.asInput<String>(map['datasetId']),
      definitionBody: Input.asInput<String>(map['definitionBody']),
      description: Input.asOptionalInput<String>(map['description']),
      determinismLevel: Input.asOptionalInput<RoutineDeterminismLevel>(
          map['determinismLevel']),
      importedLibraries:
          Input.asOptionalInput<List<String>>(map['importedLibraries']),
      language: Input.asOptionalInput<RoutineLanguage>(map['language']),
      project: Input.asOptionalInput<String>(map['project']),
      remoteFunctionOptions: Input.asOptionalInput<RemoteFunctionOptions>(
          map['remoteFunctionOptions']),
      returnTableType:
          Input.asOptionalInput<StandardSqlTableType>(map['returnTableType']),
      returnType: Input.asOptionalInput<StandardSqlDataType>(map['returnType']),
      routineReference:
          Input.asInput<RoutineReference>(map['routineReference']),
      routineType: Input.asInput<RoutineRoutineType>(map['routineType']),
      securityMode:
          Input.asOptionalInput<RoutineSecurityMode>(map['securityMode']),
      sparkOptions: Input.asOptionalInput<SparkOptions>(map['sparkOptions']),
      strictMode: Input.asOptionalInput<bool>(map['strictMode']),
    );
  }
}
