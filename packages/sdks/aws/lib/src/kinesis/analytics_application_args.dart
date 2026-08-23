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
  /// Whether to start or stop the Kinesis Analytics Application. To start an application, an input with a defined `startingPosition` must be configured.
  /// To modify an application's starting position, first stop the application by setting `startApplication = false`, then update `startingPosition` and set `startApplication = true`.
  final pulumi.Input<bool>? startApplication;
  /// Key-value map of tags for the Kinesis Analytics Application. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
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
  /// [startApplication] Whether to start or stop the Kinesis Analytics Application. To start an application, an input with a defined `startingPosition` must be configured.
  /// [tags] Key-value map of tags for the Kinesis Analytics Application. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const AnalyticsApplicationArgs({
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
      cloudwatchLoggingOptions: (() { final guardedValue = map['cloudwatchLoggingOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalyticsApplicationCloudwatchLoggingOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputs: (() { final guardedValue = map['inputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalyticsApplicationInputs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputs: (() { final guardedValue = map['outputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AnalyticsApplicationOutput>(guardedValue, (value) => AnalyticsApplicationOutput.fromMap((value as Map).cast<String, dynamic>()))); })(),
      referenceDataSources: (() { final guardedValue = map['referenceDataSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalyticsApplicationReferenceDataSources.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startApplication: (() { final guardedValue = map['startApplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
