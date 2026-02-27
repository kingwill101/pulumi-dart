// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../analytics_application_cloudwatch_logging_options/analytics_application_cloudwatch_logging_options.dart';
import '../analytics_application_inputs/analytics_application_inputs.dart';
import '../analytics_application_output/analytics_application_output.dart';
import '../analytics_application_reference_data_sources/analytics_application_reference_data_sources.dart';

/// The set of arguments for AnalyticsApplication.
class AnalyticsApplicationArgs {
  /// The CloudWatch log stream options to monitor application errors.
  /// See CloudWatch Logging Options below for more details.
  final Input<AnalyticsApplicationCloudwatchLoggingOptions>?
      cloudwatchLoggingOptions;

  /// SQL Code to transform input data, and generate output.
  final Input<String>? code;

  /// Description of the application.
  final Input<String>? description;

  /// Input configuration of the application. See Inputs below for more details.
  final Input<AnalyticsApplicationInputs>? inputs;

  /// Name of the Kinesis Analytics Application.
  final Input<String>? name;

  /// Output destination configuration of the application. See Outputs below for more details.
  final Input<List<AnalyticsApplicationOutput>>? outputs;

  /// An S3 Reference Data Source for the application.
  /// See Reference Data Sources below for more details.
  final Input<AnalyticsApplicationReferenceDataSources>? referenceDataSources;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Whether to start or stop the Kinesis Analytics Application. To start an application, an input with a defined `starting_position` must be configured.
  /// To modify an application's starting position, first stop the application by setting `start_application = false`, then update `starting_position` and set `start_application = true`.
  final Input<bool>? startApplication;

  /// Key-value map of tags for the Kinesis Analytics Application. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  AnalyticsApplicationArgs({
    this.cloudwatchLoggingOptions,
    this.code,
    this.description,
    this.inputs,
    this.name,
    this.outputs,
    this.referenceDataSources,
    this.region,
    this.startApplication,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudwatchLoggingOptionsValue = cloudwatchLoggingOptions;
    if (cloudwatchLoggingOptionsValue != null) {
      map['cloudwatchLoggingOptions'] = Input.mapOptionalInputValue<
              AnalyticsApplicationCloudwatchLoggingOptions,
              Map<String, dynamic>>(
          cloudwatchLoggingOptionsValue, (value) => value.toMap());
    }
    final codeValue = code;
    if (codeValue != null) {
      map['code'] = codeValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final inputsValue = inputs;
    if (inputsValue != null) {
      map['inputs'] = Input.mapOptionalInputValue<AnalyticsApplicationInputs,
          Map<String, dynamic>>(inputsValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final outputsValue = outputs;
    if (outputsValue != null) {
      map['outputs'] = Input.mapOptionalInputValue<
              List<AnalyticsApplicationOutput>, List<Map<String, dynamic>>>(
          outputsValue,
          (value) => Input.encodeList<AnalyticsApplicationOutput,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final referenceDataSourcesValue = referenceDataSources;
    if (referenceDataSourcesValue != null) {
      map['referenceDataSources'] = Input.mapOptionalInputValue<
              AnalyticsApplicationReferenceDataSources, Map<String, dynamic>>(
          referenceDataSourcesValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final startApplicationValue = startApplication;
    if (startApplicationValue != null) {
      map['startApplication'] = startApplicationValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory AnalyticsApplicationArgs.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationArgs(
      cloudwatchLoggingOptions:
          Input.asOptionalInput<AnalyticsApplicationCloudwatchLoggingOptions>(
              map['cloudwatchLoggingOptions']),
      code: Input.asOptionalInput<String>(map['code']),
      description: Input.asOptionalInput<String>(map['description']),
      inputs: Input.asOptionalInput<AnalyticsApplicationInputs>(map['inputs']),
      name: Input.asOptionalInput<String>(map['name']),
      outputs: Input.asOptionalInput<List<AnalyticsApplicationOutput>>(
          map['outputs']),
      referenceDataSources:
          Input.asOptionalInput<AnalyticsApplicationReferenceDataSources>(
              map['referenceDataSources']),
      region: Input.asOptionalInput<String>(map['region']),
      startApplication: Input.asOptionalInput<bool>(map['startApplication']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
