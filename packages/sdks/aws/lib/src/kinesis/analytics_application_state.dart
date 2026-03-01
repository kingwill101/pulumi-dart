// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_application_cloudwatch_logging_options.dart';
import 'analytics_application_inputs.dart';
import 'analytics_application_output.dart';
import 'analytics_application_reference_data_sources.dart';

/// Input properties used for looking up and filtering AnalyticsApplication resources.
class AnalyticsApplicationState {
  /// The ARN of the Kinesis Analytics Appliation.
  final pulumi.Input<String>? arn;
  /// The CloudWatch log stream options to monitor application errors.
  /// See CloudWatch Logging Options below for more details.
  final pulumi.Input<AnalyticsApplicationCloudwatchLoggingOptions>? cloudwatchLoggingOptions;
  /// SQL Code to transform input data, and generate output.
  final pulumi.Input<String>? code;
  /// The Timestamp when the application version was created.
  final pulumi.Input<String>? createTimestamp;
  /// Description of the application.
  final pulumi.Input<String>? description;
  /// Input configuration of the application. See Inputs below for more details.
  final pulumi.Input<AnalyticsApplicationInputs>? inputs;
  /// The Timestamp when the application was last updated.
  final pulumi.Input<String>? lastUpdateTimestamp;
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
  /// The Status of the application.
  final pulumi.Input<String>? status;
  /// Key-value map of tags for the Kinesis Analytics Application. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The Version of the application.
  final pulumi.Input<int>? version;

  /// Creates a new [AnalyticsApplicationState].
  /// [arn] The ARN of the Kinesis Analytics Appliation.
  /// [cloudwatchLoggingOptions] The CloudWatch log stream options to monitor application errors.
  /// [code] SQL Code to transform input data, and generate output.
  /// [createTimestamp] The Timestamp when the application version was created.
  /// [description] Description of the application.
  /// [inputs] Input configuration of the application. See Inputs below for more details.
  /// [lastUpdateTimestamp] The Timestamp when the application was last updated.
  /// [name] Name of the Kinesis Analytics Application.
  /// [outputs] Output destination configuration of the application. See Outputs below for more details.
  /// [referenceDataSources] An S3 Reference Data Source for the application.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [startApplication] Whether to start or stop the Kinesis Analytics Application. To start an application, an input with a defined `starting_position` must be configured.
  /// [status] The Status of the application.
  /// [tags] Key-value map of tags for the Kinesis Analytics Application. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [version] The Version of the application.
  AnalyticsApplicationState({
    pulumi.Output<String>? arn,
    pulumi.Output<AnalyticsApplicationCloudwatchLoggingOptions>? cloudwatchLoggingOptions,
    pulumi.Output<String>? code,
    pulumi.Output<String>? createTimestamp,
    pulumi.Output<String>? description,
    pulumi.Output<AnalyticsApplicationInputs>? inputs,
    pulumi.Output<String>? lastUpdateTimestamp,
    pulumi.Output<String>? name,
    pulumi.Output<List<AnalyticsApplicationOutput>>? outputs,
    pulumi.Output<AnalyticsApplicationReferenceDataSources>? referenceDataSources,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? startApplication,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<int>? version,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      cloudwatchLoggingOptions = pulumi.Input.asOptionalInput<AnalyticsApplicationCloudwatchLoggingOptions>(cloudwatchLoggingOptions),
      code = pulumi.Input.asOptionalInput<String>(code),
      createTimestamp = pulumi.Input.asOptionalInput<String>(createTimestamp),
      description = pulumi.Input.asOptionalInput<String>(description),
      inputs = pulumi.Input.asOptionalInput<AnalyticsApplicationInputs>(inputs),
      lastUpdateTimestamp = pulumi.Input.asOptionalInput<String>(lastUpdateTimestamp),
      name = pulumi.Input.asOptionalInput<String>(name),
      outputs = pulumi.Input.asOptionalInput<List<AnalyticsApplicationOutput>>(outputs),
      referenceDataSources = pulumi.Input.asOptionalInput<AnalyticsApplicationReferenceDataSources>(referenceDataSources),
      region = pulumi.Input.asOptionalInput<String>(region),
      startApplication = pulumi.Input.asOptionalInput<bool>(startApplication),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      version = pulumi.Input.asOptionalInput<int>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'cloudwatchLoggingOptions': ?pulumi.Input.mapOptionalInputValue<AnalyticsApplicationCloudwatchLoggingOptions, Map<String, dynamic>>(cloudwatchLoggingOptions, (value) => value.toMap()),
      'code': ?code,
      'createTimestamp': ?createTimestamp,
      'description': ?description,
      'inputs': ?pulumi.Input.mapOptionalInputValue<AnalyticsApplicationInputs, Map<String, dynamic>>(inputs, (value) => value.toMap()),
      'lastUpdateTimestamp': ?lastUpdateTimestamp,
      'name': ?name,
      'outputs': ?pulumi.Input.mapOptionalInputValue<List<AnalyticsApplicationOutput>, List<Map<String, dynamic>>>(outputs, (value) => pulumi.Input.encodeList<AnalyticsApplicationOutput, Map<String, dynamic>>(value, (value) => value.toMap())),
      'referenceDataSources': ?pulumi.Input.mapOptionalInputValue<AnalyticsApplicationReferenceDataSources, Map<String, dynamic>>(referenceDataSources, (value) => value.toMap()),
      'region': ?region,
      'startApplication': ?startApplication,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'version': ?version,
    };
  }

  factory AnalyticsApplicationState.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      cloudwatchLoggingOptions: map['cloudwatchLoggingOptions'] == null ? null : pulumi.Output.create<AnalyticsApplicationCloudwatchLoggingOptions>(AnalyticsApplicationCloudwatchLoggingOptions.fromMap((map['cloudwatchLoggingOptions'] as Map).cast<String, dynamic>())),
      code: map['code'] == null ? null : pulumi.Output.create<String>(map['code'] as String),
      createTimestamp: map['createTimestamp'] == null ? null : pulumi.Output.create<String>(map['createTimestamp'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      inputs: map['inputs'] == null ? null : pulumi.Output.create<AnalyticsApplicationInputs>(AnalyticsApplicationInputs.fromMap((map['inputs'] as Map).cast<String, dynamic>())),
      lastUpdateTimestamp: map['lastUpdateTimestamp'] == null ? null : pulumi.Output.create<String>(map['lastUpdateTimestamp'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      outputs: map['outputs'] == null ? null : pulumi.Output.create<List<AnalyticsApplicationOutput>>(pulumi.Input.decodeList<AnalyticsApplicationOutput>(map['outputs'], (value) => AnalyticsApplicationOutput.fromMap((value as Map).cast<String, dynamic>()))),
      referenceDataSources: map['referenceDataSources'] == null ? null : pulumi.Output.create<AnalyticsApplicationReferenceDataSources>(AnalyticsApplicationReferenceDataSources.fromMap((map['referenceDataSources'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      startApplication: map['startApplication'] == null ? null : pulumi.Output.create<bool>(map['startApplication'] as bool),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      version: map['version'] == null ? null : pulumi.Output.create<int>(map['version'] as int),
    );
  }
}

