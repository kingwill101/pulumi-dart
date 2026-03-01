// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_app_function_file.dart';

/// {@template pulumi_appservice_function_app_function_function_app_function_args_doc}
/// The set of arguments for FunctionAppFunction.
/// {@endtemplate}
/// {@macro pulumi_appservice_function_app_function_function_app_function_args_doc}
class FunctionAppFunctionArgs {
  /// The config for this Function in JSON format.
  final pulumi.Input<String> configJson;
  /// Should this function be enabled. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// A `file` block as detailed below. Changing this forces a new resource to be created.
  final pulumi.Input<List<FunctionAppFunctionFile>>? files;
  /// The ID of the Function App in which this function should reside. Changing this forces a new resource to be created.
  final pulumi.Input<String> functionAppId;
  /// The language the Function is written in. Possible values are `CSharp`, `Custom`, `Java`, `Javascript`, `Python`, `PowerShell`, and `TypeScript`.
  ///
  /// > **Note:** when using `Custom` language, you must specify the code handler in the `host.json` file for your function. See the [official docs](https://docs.microsoft.com/azure/azure-functions/functions-custom-handlers#hostjson) for more information.
  final pulumi.Input<String>? language;
  /// The name of the function. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The test data for the function.
  final pulumi.Input<String>? testData;

  /// Creates a new [FunctionAppFunctionArgs].
  /// [configJson] The config for this Function in JSON format.
  /// [enabled] Should this function be enabled. Defaults to `true`.
  /// [files] A `file` block as detailed below. Changing this forces a new resource to be created.
  /// [functionAppId] The ID of the Function App in which this function should reside. Changing this forces a new resource to be created.
  /// [language] The language the Function is written in. Possible values are `CSharp`, `Custom`, `Java`, `Javascript`, `Python`, `PowerShell`, and `TypeScript`.
  /// [name] The name of the function. Changing this forces a new resource to be created.
  /// [testData] The test data for the function.
  FunctionAppFunctionArgs({
    required String configJson,
    bool? enabled,
    List<FunctionAppFunctionFile>? files,
    required String functionAppId,
    String? language,
    String? name,
    String? testData,
  }) :
      configJson = pulumi.Input.asInput<String>(configJson),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      files = pulumi.Input.asOptionalInput<List<FunctionAppFunctionFile>>(files),
      functionAppId = pulumi.Input.asInput<String>(functionAppId),
      language = pulumi.Input.asOptionalInput<String>(language),
      name = pulumi.Input.asOptionalInput<String>(name),
      testData = pulumi.Input.asOptionalInput<String>(testData);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configJson': configJson,
      'enabled': ?enabled,
      'files': ?pulumi.Input.mapOptionalInputValue<List<FunctionAppFunctionFile>, List<Map<String, dynamic>>>(files, (value) => pulumi.Input.encodeList<FunctionAppFunctionFile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'functionAppId': functionAppId,
      'language': ?language,
      'name': ?name,
      'testData': ?testData,
    };
  }

  factory FunctionAppFunctionArgs.fromMap(Map<String, dynamic> map) {
    return FunctionAppFunctionArgs(
      configJson: map['configJson'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      files: map['files'] == null ? null : pulumi.Input.decodeList<FunctionAppFunctionFile>(map['files'], (value) => FunctionAppFunctionFile.fromMap((value as Map).cast<String, dynamic>())),
      functionAppId: map['functionAppId'] as String,
      language: map['language'] == null ? null : map['language'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      testData: map['testData'] == null ? null : map['testData'] as String,
    );
  }
}

