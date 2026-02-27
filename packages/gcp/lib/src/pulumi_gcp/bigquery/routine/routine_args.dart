// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../routine_argument/routine_argument.dart';
import '../routine_external_runtime_options/routine_external_runtime_options.dart';
import '../routine_python_options/routine_python_options.dart';
import '../routine_remote_function_options/routine_remote_function_options.dart';
import '../routine_spark_options/routine_spark_options.dart';

/// The set of arguments for Routine.
class RoutineArgs {
  /// Input/output argument of a function or a stored procedure.
  /// Structure is documented below.
  final pulumi.Input<List<RoutineArgument>>? arguments;

  /// If set to DATA_MASKING, the function is validated and made available as a masking function. For more information, see https://cloud.google.com/bigquery/docs/user-defined-functions#custom-mask
  /// Possible values are: `DATA_MASKING`.
  final pulumi.Input<String>? dataGovernanceType;

  /// The ID of the dataset containing this routine
  final pulumi.Input<String> datasetId;

  /// The body of the routine. For functions, this is the expression in the AS clause.
  /// If language=SQL, it is the substring inside (but excluding) the parentheses.
  final pulumi.Input<String> definitionBody;

  /// The description of the routine if defined.
  final pulumi.Input<String>? description;

  /// The determinism level of the JavaScript UDF if defined.
  /// Possible values are: `DETERMINISM_LEVEL_UNSPECIFIED`, `DETERMINISTIC`, `NOT_DETERMINISTIC`.
  final pulumi.Input<String>? determinismLevel;

  /// Options for the runtime of the external system.
  /// This field is only applicable for Python UDFs.
  /// Structure is documented below.
  final pulumi.Input<RoutineExternalRuntimeOptions>? externalRuntimeOptions;

  /// Optional. If language = "JAVASCRIPT", this field stores the path of the
  /// imported JAVASCRIPT libraries.
  final pulumi.Input<List<String>>? importedLibraries;

  /// The language of the routine.
  /// Possible values are: `SQL`, `JAVASCRIPT`, `PYTHON`, `JAVA`, `SCALA`.
  final pulumi.Input<String>? language;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Options for a user-defined Python function.
  /// Structure is documented below.
  final pulumi.Input<RoutinePythonOptions>? pythonOptions;

  /// Remote function specific options.
  /// Structure is documented below.
  final pulumi.Input<RoutineRemoteFunctionOptions>? remoteFunctionOptions;

  /// Optional. Can be set only if routineType = "TABLE_VALUED_FUNCTION".
  /// If absent, the return table type is inferred from definitionBody at query time in each query
  /// that references this routine. If present, then the columns in the evaluated table result will
  /// be cast to match the column types specificed in return table type, at query time.
  final pulumi.Input<String>? returnTableType;

  /// A JSON schema for the return type. Optional if language = "SQL"; required otherwise.
  /// If absent, the return type is inferred from definitionBody at query time in each query
  /// that references this routine. If present, then the evaluated result will be cast to
  /// the specified returned type at query time. ~>**NOTE**: Because this field expects a JSON
  /// string, any changes to the string will create a diff, even if the JSON itself hasn't
  /// changed. If the API returns a different value for the same schema, e.g. it switche
  /// d the order of values or replaced STRUCT field type with RECORD field type, we currently
  /// cannot suppress the recurring diff this causes. As a workaround, we recommend using
  /// the schema as returned by the API.
  final pulumi.Input<String>? returnType;

  /// The ID of the the routine. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 256 characters.
  final pulumi.Input<String> routineId;

  /// The type of routine.
  /// Possible values are: `SCALAR_FUNCTION`, `PROCEDURE`, `TABLE_VALUED_FUNCTION`.
  final pulumi.Input<String> routineType;

  /// Optional. The security mode of the routine, if defined. If not defined, the security mode is automatically determined from the routine's configuration.
  /// Possible values are: `DEFINER`, `INVOKER`.
  final pulumi.Input<String>? securityMode;

  /// Optional. If language is one of "PYTHON", "JAVA", "SCALA", this field stores the options for spark stored procedure.
  /// Structure is documented below.
  final pulumi.Input<RoutineSparkOptions>? sparkOptions;

  RoutineArgs({
    this.arguments,
    this.dataGovernanceType,
    required this.datasetId,
    required this.definitionBody,
    this.description,
    this.determinismLevel,
    this.externalRuntimeOptions,
    this.importedLibraries,
    this.language,
    this.project,
    this.pythonOptions,
    this.remoteFunctionOptions,
    this.returnTableType,
    this.returnType,
    required this.routineId,
    required this.routineType,
    this.securityMode,
    this.sparkOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final argumentsValue = arguments;
    if (argumentsValue != null) {
      map['arguments'] = pulumi.Input.mapOptionalInputValue<
              List<RoutineArgument>, List<Map<String, dynamic>>>(
          argumentsValue,
          (value) =>
              pulumi.Input.encodeList<RoutineArgument, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final dataGovernanceTypeValue = dataGovernanceType;
    if (dataGovernanceTypeValue != null) {
      map['dataGovernanceType'] = dataGovernanceTypeValue;
    }
    map['datasetId'] = datasetId;
    map['definitionBody'] = definitionBody;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final determinismLevelValue = determinismLevel;
    if (determinismLevelValue != null) {
      map['determinismLevel'] = determinismLevelValue;
    }
    final externalRuntimeOptionsValue = externalRuntimeOptions;
    if (externalRuntimeOptionsValue != null) {
      map['externalRuntimeOptions'] = pulumi.Input.mapOptionalInputValue<
              RoutineExternalRuntimeOptions, Map<String, dynamic>>(
          externalRuntimeOptionsValue, (value) => value.toMap());
    }
    final importedLibrariesValue = importedLibraries;
    if (importedLibrariesValue != null) {
      map['importedLibraries'] = importedLibrariesValue;
    }
    final languageValue = language;
    if (languageValue != null) {
      map['language'] = languageValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final pythonOptionsValue = pythonOptions;
    if (pythonOptionsValue != null) {
      map['pythonOptions'] = pulumi.Input.mapOptionalInputValue<
          RoutinePythonOptions,
          Map<String, dynamic>>(pythonOptionsValue, (value) => value.toMap());
    }
    final remoteFunctionOptionsValue = remoteFunctionOptions;
    if (remoteFunctionOptionsValue != null) {
      map['remoteFunctionOptions'] = pulumi.Input.mapOptionalInputValue<
              RoutineRemoteFunctionOptions, Map<String, dynamic>>(
          remoteFunctionOptionsValue, (value) => value.toMap());
    }
    final returnTableTypeValue = returnTableType;
    if (returnTableTypeValue != null) {
      map['returnTableType'] = returnTableTypeValue;
    }
    final returnTypeValue = returnType;
    if (returnTypeValue != null) {
      map['returnType'] = returnTypeValue;
    }
    map['routineId'] = routineId;
    map['routineType'] = routineType;
    final securityModeValue = securityMode;
    if (securityModeValue != null) {
      map['securityMode'] = securityModeValue;
    }
    final sparkOptionsValue = sparkOptions;
    if (sparkOptionsValue != null) {
      map['sparkOptions'] = pulumi.Input.mapOptionalInputValue<
          RoutineSparkOptions,
          Map<String, dynamic>>(sparkOptionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory RoutineArgs.fromMap(Map<String, dynamic> map) {
    return RoutineArgs(
      arguments:
          pulumi.Input.asOptionalInput<List<RoutineArgument>>(map['arguments']),
      dataGovernanceType:
          pulumi.Input.asOptionalInput<String>(map['dataGovernanceType']),
      datasetId: pulumi.Input.asInput<String>(map['datasetId']),
      definitionBody: pulumi.Input.asInput<String>(map['definitionBody']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      determinismLevel:
          pulumi.Input.asOptionalInput<String>(map['determinismLevel']),
      externalRuntimeOptions:
          pulumi.Input.asOptionalInput<RoutineExternalRuntimeOptions>(
              map['externalRuntimeOptions']),
      importedLibraries:
          pulumi.Input.asOptionalInput<List<String>>(map['importedLibraries']),
      language: pulumi.Input.asOptionalInput<String>(map['language']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      pythonOptions: pulumi.Input.asOptionalInput<RoutinePythonOptions>(
          map['pythonOptions']),
      remoteFunctionOptions:
          pulumi.Input.asOptionalInput<RoutineRemoteFunctionOptions>(
              map['remoteFunctionOptions']),
      returnTableType:
          pulumi.Input.asOptionalInput<String>(map['returnTableType']),
      returnType: pulumi.Input.asOptionalInput<String>(map['returnType']),
      routineId: pulumi.Input.asInput<String>(map['routineId']),
      routineType: pulumi.Input.asInput<String>(map['routineType']),
      securityMode: pulumi.Input.asOptionalInput<String>(map['securityMode']),
      sparkOptions: pulumi.Input.asOptionalInput<RoutineSparkOptions>(
          map['sparkOptions']),
    );
  }
}
