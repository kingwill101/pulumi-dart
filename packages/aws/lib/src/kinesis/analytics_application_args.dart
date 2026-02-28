// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_application_cloudwatch_logging_options.dart';
import 'analytics_application_inputs.dart';
import 'analytics_application_output.dart';
import 'analytics_application_reference_data_sources.dart';

/// {@template pulumi_kinesis_analytics_application_analytics_application_args_doc}
/// The set of arguments for AnalyticsApplication.
/// {@endtemplate}
/// {@macro pulumi_kinesis_analytics_application_analytics_application_args_doc}
class AnalyticsApplicationArgs {
  /// The CloudWatch log stream options to monitor application errors.
  /// See CloudWatch Logging Options below for more details.
  final pulumi.Input<AnalyticsApplicationCloudwatchLoggingOptions>? cloudwatchLoggingOptions;
  /// SQL Code to transform input data, and generate output.
  final pulumi.Input<String>? code;
  /// Description of the application.
  final pulumi.Input<String>? description;
  /// Input configuration of the application. See Inputs below for more details.
  final pulumi.Input<AnalyticsApplicationInputs>? inputs;
  /// Name of the Kinesis Analytics Application.
  final pulumi.Input<String>? name;
  /// Output destination configuration of the application. See Outputs below for more details.
  final pulumi.Input<List<AnalyticsApplicationOutput>>? outputs;
  /// An S3 Reference Data Source for the application.
  /// See Reference Data Sources below for more details.
  final pulumi.Input<AnalyticsApplicationReferenceDataSources>? referenceDataSources;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Whether to start or stop the Kinesis Analytics Application. To start an application, an input with a defined `starting_position` must be configured.
  /// To modify an application's starting position, first stop the application by setting `start_application = false`, then update `starting_position` and set `start_application = true`.
  final pulumi.Input<bool>? startApplication;
  /// Key-value map of tags for the Kinesis Analytics Application. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AnalyticsApplicationArgs].
  /// [cloudwatchLoggingOptions] The CloudWatch log stream options to monitor application errors.
  /// [code] SQL Code to transform input data, and generate output.
  /// [description] Description of the application.
  /// [inputs] Input configuration of the application. See Inputs below for more details.
  /// [name] Name of the Kinesis Analytics Application.
  /// [outputs] Output destination configuration of the application. See Outputs below for more details.
  /// [referenceDataSources] An S3 Reference Data Source for the application.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [startApplication] Whether to start or stop the Kinesis Analytics Application. To start an application, an input with a defined `starting_position` must be configured.
  /// [tags] Key-value map of tags for the Kinesis Analytics Application. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  AnalyticsApplicationArgs({
    AnalyticsApplicationCloudwatchLoggingOptions? cloudwatchLoggingOptions,
    String? code,
    String? description,
    AnalyticsApplicationInputs? inputs,
    String? name,
    List<AnalyticsApplicationOutput>? outputs,
    AnalyticsApplicationReferenceDataSources? referenceDataSources,
    String? region,
    bool? startApplication,
    Map<String, String>? tags,
  }) :
      cloudwatchLoggingOptions = pulumi.Input.asOptionalInput<AnalyticsApplicationCloudwatchLoggingOptions>(cloudwatchLoggingOptions),
      code = pulumi.Input.asOptionalInput<String>(code),
      description = pulumi.Input.asOptionalInput<String>(description),
      inputs = pulumi.Input.asOptionalInput<AnalyticsApplicationInputs>(inputs),
      name = pulumi.Input.asOptionalInput<String>(name),
      outputs = pulumi.Input.asOptionalInput<List<AnalyticsApplicationOutput>>(outputs),
      referenceDataSources = pulumi.Input.asOptionalInput<AnalyticsApplicationReferenceDataSources>(referenceDataSources),
      region = pulumi.Input.asOptionalInput<String>(region),
      startApplication = pulumi.Input.asOptionalInput<bool>(startApplication),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchLoggingOptions': ?pulumi.Input.mapOptionalInputValue<AnalyticsApplicationCloudwatchLoggingOptions, Map<String, dynamic>>(cloudwatchLoggingOptions, (value) => value.toMap()),
      'code': ?code,
      'description': ?description,
      'inputs': ?pulumi.Input.mapOptionalInputValue<AnalyticsApplicationInputs, Map<String, dynamic>>(inputs, (value) => value.toMap()),
      'name': ?name,
      'outputs': ?pulumi.Input.mapOptionalInputValue<List<AnalyticsApplicationOutput>, List<Map<String, dynamic>>>(outputs, (value) => pulumi.Input.encodeList<AnalyticsApplicationOutput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'referenceDataSources': ?pulumi.Input.mapOptionalInputValue<AnalyticsApplicationReferenceDataSources, Map<String, dynamic>>(referenceDataSources, (value) => value.toMap()),
      'region': ?region,
      'startApplication': ?startApplication,
      'tags': ?tags,
    };
  }

  factory AnalyticsApplicationArgs.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationArgs(
      cloudwatchLoggingOptions: map['cloudwatchLoggingOptions'] == null ? null : AnalyticsApplicationCloudwatchLoggingOptions.fromMap((map['cloudwatchLoggingOptions'] as Map).cast<String, dynamic>()),
      code: map['code'] == null ? null : map['code'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      inputs: map['inputs'] == null ? null : AnalyticsApplicationInputs.fromMap((map['inputs'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      outputs: map['outputs'] == null ? null : pulumi.Input.decodeList<AnalyticsApplicationOutput>(map['outputs'], (value) => AnalyticsApplicationOutput.fromMap((value as Map).cast<String, dynamic>())),
      referenceDataSources: map['referenceDataSources'] == null ? null : AnalyticsApplicationReferenceDataSources.fromMap((map['referenceDataSources'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      startApplication: map['startApplication'] == null ? null : map['startApplication'] as bool,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

