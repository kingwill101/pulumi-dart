import 'package:pulumi/pulumi.dart';
import '../routine_argument/routine_argument.dart';
import '../routine_external_runtime_options/routine_external_runtime_options.dart';
import '../routine_python_options/routine_python_options.dart';
import '../routine_remote_function_options/routine_remote_function_options.dart';
import '../routine_spark_options/routine_spark_options.dart';
import 'routine_args.dart';

/// A user-defined function or a stored procedure that belongs to a Dataset
///
///
/// To get more information about Routine, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/rest/v2/routines)
/// * How-to Guides
/// * [Routines Intro](https://cloud.google.com/bigquery/docs/reference/rest/v2/routines)
///
/// ## Example Usage
///
/// ### Bigquery Routine Basic
///
///
///
/// ### Bigquery Routine Json
///
///
///
/// ### Bigquery Routine Tvf
///
///
///
/// ### Bigquery Routine Pyspark
///
///
///
/// ### Bigquery Routine Pyspark Mainfile
///
///
///
/// ### Bigquery Routine Spark Jar
///
///
///
/// ### Bigquery Routine Data Governance Type
///
///
///
/// ### Bigquery Routine Remote Function
///
///
///
/// ### Bigquery Routine Python Function
///
///
///
///
/// ## Import
///
/// Routine can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/datasets/{{dataset_id}}/routines/{{routine_id}}`
///
/// * `{{project}}/{{dataset_id}}/{{routine_id}}`
///
/// * `{{dataset_id}}/{{routine_id}}`
///
/// When using the `pulumi import` command, Routine can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigquery/routine:Routine default projects/{{project}}/datasets/{{dataset_id}}/routines/{{routine_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/routine:Routine default {{project}}/{{dataset_id}}/{{routine_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigquery/routine:Routine default {{dataset_id}}/{{routine_id}}
/// ```
class Routine extends CustomResource {
  /// Input/output argument of a function or a stored procedure.
  /// Structure is documented below.
  late final Output<List<RoutineArgument>?> arguments;

  /// The time when this routine was created, in milliseconds since the
  /// epoch.
  late final Output<int> creationTime;

  /// If set to DATA_MASKING, the function is validated and made available as a masking function. For more information, see https://cloud.google.com/bigquery/docs/user-defined-functions#custom-mask
  /// Possible values are: `DATA_MASKING`.
  late final Output<String?> dataGovernanceType;

  /// The ID of the dataset containing this routine
  late final Output<String> datasetId;

  /// The body of the routine. For functions, this is the expression in the AS clause.
  /// If language=SQL, it is the substring inside (but excluding) the parentheses.
  late final Output<String> definitionBody;

  /// The description of the routine if defined.
  late final Output<String?> description;

  /// The determinism level of the JavaScript UDF if defined.
  /// Possible values are: `DETERMINISM_LEVEL_UNSPECIFIED`, `DETERMINISTIC`, `NOT_DETERMINISTIC`.
  late final Output<String?> determinismLevel;

  /// Options for the runtime of the external system.
  /// This field is only applicable for Python UDFs.
  /// Structure is documented below.
  late final Output<RoutineExternalRuntimeOptions?> externalRuntimeOptions;

  /// Optional. If language = "JAVASCRIPT", this field stores the path of the
  /// imported JAVASCRIPT libraries.
  late final Output<List<String>?> importedLibraries;

  /// The language of the routine.
  /// Possible values are: `SQL`, `JAVASCRIPT`, `PYTHON`, `JAVA`, `SCALA`.
  late final Output<String?> language;

  /// The time when this routine was modified, in milliseconds since the
  /// epoch.
  late final Output<int> lastModifiedTime;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Options for a user-defined Python function.
  /// Structure is documented below.
  late final Output<RoutinePythonOptions?> pythonOptions;

  /// Remote function specific options.
  /// Structure is documented below.
  late final Output<RoutineRemoteFunctionOptions?> remoteFunctionOptions;

  /// Optional. Can be set only if routineType = "TABLE_VALUED_FUNCTION".
  /// If absent, the return table type is inferred from definitionBody at query time in each query
  /// that references this routine. If present, then the columns in the evaluated table result will
  /// be cast to match the column types specificed in return table type, at query time.
  late final Output<String?> returnTableType;

  /// A JSON schema for the return type. Optional if language = "SQL"; required otherwise.
  /// If absent, the return type is inferred from definitionBody at query time in each query
  /// that references this routine. If present, then the evaluated result will be cast to
  /// the specified returned type at query time. ~>**NOTE**: Because this field expects a JSON
  /// string, any changes to the string will create a diff, even if the JSON itself hasn't
  /// changed. If the API returns a different value for the same schema, e.g. it switche
  /// d the order of values or replaced STRUCT field type with RECORD field type, we currently
  /// cannot suppress the recurring diff this causes. As a workaround, we recommend using
  /// the schema as returned by the API.
  late final Output<String?> returnType;

  /// The ID of the the routine. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 256 characters.
  late final Output<String> routineId;

  /// The type of routine.
  /// Possible values are: `SCALAR_FUNCTION`, `PROCEDURE`, `TABLE_VALUED_FUNCTION`.
  late final Output<String> routineType;

  /// Optional. The security mode of the routine, if defined. If not defined, the security mode is automatically determined from the routine's configuration.
  /// Possible values are: `DEFINER`, `INVOKER`.
  late final Output<String?> securityMode;

  /// Optional. If language is one of "PYTHON", "JAVA", "SCALA", this field stores the options for spark stored procedure.
  /// Structure is documented below.
  late final Output<RoutineSparkOptions?> sparkOptions;

  Routine(
    String name, {
    RoutineArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:bigquery/routine:Routine',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arguments = registerOutput<List<RoutineArgument>?>('arguments');
    this.creationTime = registerOutput<int>('creationTime');
    this.dataGovernanceType = registerOutput<String?>('dataGovernanceType');
    this.datasetId = registerOutput<String>('datasetId');
    this.definitionBody = registerOutput<String>('definitionBody');
    this.description = registerOutput<String?>('description');
    this.determinismLevel = registerOutput<String?>('determinismLevel');
    this.externalRuntimeOptions =
        registerOutput<RoutineExternalRuntimeOptions?>(
            'externalRuntimeOptions');
    this.importedLibraries = registerOutput<List<String>?>('importedLibraries');
    this.language = registerOutput<String?>('language');
    this.lastModifiedTime = registerOutput<int>('lastModifiedTime');
    this.project = registerOutput<String>('project');
    this.pythonOptions = registerOutput<RoutinePythonOptions?>('pythonOptions');
    this.remoteFunctionOptions =
        registerOutput<RoutineRemoteFunctionOptions?>('remoteFunctionOptions');
    this.returnTableType = registerOutput<String?>('returnTableType');
    this.returnType = registerOutput<String?>('returnType');
    this.routineId = registerOutput<String>('routineId');
    this.routineType = registerOutput<String>('routineType');
    this.securityMode = registerOutput<String?>('securityMode');
    this.sparkOptions = registerOutput<RoutineSparkOptions?>('sparkOptions');
  }
}
