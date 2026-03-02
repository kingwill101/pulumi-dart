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
    this.arn,
    this.cloudwatchLoggingOptions,
    this.code,
    this.createTimestamp,
    this.description,
    this.inputs,
    this.lastUpdateTimestamp,
    this.name,
    this.outputs,
    this.referenceDataSources,
    this.region,
    this.startApplication,
    this.status,
    this.tags,
    this.tagsAll,
    this.version,
  });

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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      cloudwatchLoggingOptions: map['cloudwatchLoggingOptions'] == null ? null : ((AnalyticsApplicationCloudwatchLoggingOptions.fromMap((map['cloudwatchLoggingOptions']! as Map).cast<String, dynamic>())).input()).input(),
      code: map['code'] == null ? null : ((map['code'] as String).input()).input(),
      createTimestamp: map['createTimestamp'] == null ? null : ((map['createTimestamp'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      inputs: map['inputs'] == null ? null : ((AnalyticsApplicationInputs.fromMap((map['inputs']! as Map).cast<String, dynamic>())).input()).input(),
      lastUpdateTimestamp: map['lastUpdateTimestamp'] == null ? null : ((map['lastUpdateTimestamp'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      outputs: map['outputs'] == null ? null : ((pulumi.Input.decodeList<AnalyticsApplicationOutput>(map['outputs']!, (value) => AnalyticsApplicationOutput.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      referenceDataSources: map['referenceDataSources'] == null ? null : ((AnalyticsApplicationReferenceDataSources.fromMap((map['referenceDataSources']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      startApplication: map['startApplication'] == null ? null : ((map['startApplication'] as bool).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      version: map['version'] == null ? null : ((map['version'] as int).input()).input(),
    );
  }
}

