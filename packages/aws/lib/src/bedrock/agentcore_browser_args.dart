// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_browser_network_configuration.dart';
import 'agentcore_browser_recording.dart';
import 'agentcore_browser_timeouts.dart';

/// {@template pulumi_bedrock_agentcore_browser_agentcore_browser_args_doc}
/// The set of arguments for AgentcoreBrowser.
/// {@endtemplate}
/// {@macro pulumi_bedrock_agentcore_browser_agentcore_browser_args_doc}
class AgentcoreBrowserArgs {
  /// Description of the browser.
  final pulumi.Input<String>? description;

  /// ARN of the IAM role that the browser assumes for execution.
  final pulumi.Input<String>? executionRoleArn;

  /// Name of the browser.
  final pulumi.Input<String>? name;

  /// Network configuration for the browser. See `network_configuration` below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<AgentcoreBrowserNetworkConfiguration> networkConfiguration;

  /// Recording configuration for browser sessions. See `recording` below.
  final pulumi.Input<AgentcoreBrowserRecording>? recording;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<AgentcoreBrowserTimeouts>? timeouts;

  /// Creates a new [AgentcoreBrowserArgs].
  /// [description] Description of the browser.
  /// [executionRoleArn] ARN of the IAM role that the browser assumes for execution.
  /// [name] Name of the browser.
  /// [networkConfiguration] Network configuration for the browser. See `network_configuration` below.
  /// [recording] Recording configuration for browser sessions. See `recording` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  AgentcoreBrowserArgs({
    String? description,
    String? executionRoleArn,
    String? name,
    required AgentcoreBrowserNetworkConfiguration networkConfiguration,
    AgentcoreBrowserRecording? recording,
    String? region,
    Map<String, String>? tags,
    AgentcoreBrowserTimeouts? timeouts,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        executionRoleArn =
            pulumi.Input.asOptionalInput<String>(executionRoleArn),
        name = pulumi.Input.asOptionalInput<String>(name),
        networkConfiguration =
            pulumi.Input.asInput<AgentcoreBrowserNetworkConfiguration>(
                networkConfiguration),
        recording =
            pulumi.Input.asOptionalInput<AgentcoreBrowserRecording>(recording),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        timeouts =
            pulumi.Input.asOptionalInput<AgentcoreBrowserTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final executionRoleArnValue = executionRoleArn;
    if (executionRoleArnValue != null) {
      map['executionRoleArn'] = executionRoleArnValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['networkConfiguration'] = pulumi.Input.mapInputValue<
        AgentcoreBrowserNetworkConfiguration,
        Map<String, dynamic>>(networkConfiguration, (value) => value.toMap());
    final recordingValue = recording;
    if (recordingValue != null) {
      map['recording'] = pulumi.Input.mapOptionalInputValue<
          AgentcoreBrowserRecording,
          Map<String, dynamic>>(recordingValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          AgentcoreBrowserTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentcoreBrowserArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreBrowserArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      executionRoleArn: map['executionRoleArn'] == null
          ? null
          : map['executionRoleArn'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      networkConfiguration: AgentcoreBrowserNetworkConfiguration.fromMap(
          (map['networkConfiguration'] as Map).cast<String, dynamic>()),
      recording: map['recording'] == null
          ? null
          : AgentcoreBrowserRecording.fromMap(
              (map['recording'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null
          ? null
          : AgentcoreBrowserTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}
