// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_streamanalytics_output_function_output_function_args_doc}
/// The set of arguments for OutputFunction.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_output_function_output_function_args_doc}
class OutputFunctionArgs {
  /// The API key for the Function.
  final pulumi.Input<String> apiKey;
  /// The maximum number of events in each batch that's sent to the function. Defaults to `100`.
  final pulumi.Input<int>? batchMaxCount;
  /// The maximum batch size in bytes that's sent to the function. Defaults to `262144` (256 kB).
  final pulumi.Input<int>? batchMaxInBytes;
  /// The name of the Function App.
  final pulumi.Input<String> functionApp;
  /// The name of the function in the Function App.
  final pulumi.Input<String> functionName;
  /// The name which should be used for this Stream Analytics Output. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Stream Analytics Output should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  final pulumi.Input<String> streamAnalyticsJobName;

  /// Creates a new [OutputFunctionArgs].
  /// [apiKey] The API key for the Function.
  /// [batchMaxCount] The maximum number of events in each batch that's sent to the function. Defaults to `100`.
  /// [batchMaxInBytes] The maximum batch size in bytes that's sent to the function. Defaults to `262144` (256 kB).
  /// [functionApp] The name of the Function App.
  /// [functionName] The name of the function in the Function App.
  /// [name] The name which should be used for this Stream Analytics Output. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Stream Analytics Output should exist. Changing this forces a new resource to be created.
  /// [streamAnalyticsJobName] The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  OutputFunctionArgs({
    required String apiKey,
    int? batchMaxCount,
    int? batchMaxInBytes,
    required String functionApp,
    required String functionName,
    String? name,
    required String resourceGroupName,
    required String streamAnalyticsJobName,
  }) :
      apiKey = pulumi.Input.asInput<String>(apiKey),
      batchMaxCount = pulumi.Input.asOptionalInput<int>(batchMaxCount),
      batchMaxInBytes = pulumi.Input.asOptionalInput<int>(batchMaxInBytes),
      functionApp = pulumi.Input.asInput<String>(functionApp),
      functionName = pulumi.Input.asInput<String>(functionName),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      streamAnalyticsJobName = pulumi.Input.asInput<String>(streamAnalyticsJobName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
      'batchMaxCount': ?batchMaxCount,
      'batchMaxInBytes': ?batchMaxInBytes,
      'functionApp': functionApp,
      'functionName': functionName,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'streamAnalyticsJobName': streamAnalyticsJobName,
    };
  }

  factory OutputFunctionArgs.fromMap(Map<String, dynamic> map) {
    return OutputFunctionArgs(
      apiKey: map['apiKey'] as String,
      batchMaxCount: map['batchMaxCount'] == null ? null : map['batchMaxCount'] as int,
      batchMaxInBytes: map['batchMaxInBytes'] == null ? null : map['batchMaxInBytes'] as int,
      functionApp: map['functionApp'] as String,
      functionName: map['functionName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      streamAnalyticsJobName: map['streamAnalyticsJobName'] as String,
    );
  }
}

