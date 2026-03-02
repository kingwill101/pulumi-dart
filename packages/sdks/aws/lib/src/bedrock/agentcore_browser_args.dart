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
    this.description,
    this.executionRoleArn,
    this.name,
    required this.networkConfiguration,
    this.recording,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'executionRoleArn': ?executionRoleArn,
      'name': ?name,
      'networkConfiguration': pulumi.Input.mapInputValue<AgentcoreBrowserNetworkConfiguration, Map<String, dynamic>>(networkConfiguration, (value) => value.toMap()),
      'recording': ?pulumi.Input.mapOptionalInputValue<AgentcoreBrowserRecording, Map<String, dynamic>>(recording, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentcoreBrowserTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentcoreBrowserArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreBrowserArgs(
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      executionRoleArn: map['executionRoleArn'] == null ? null : ((map['executionRoleArn'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      networkConfiguration: (AgentcoreBrowserNetworkConfiguration.fromMap((map['networkConfiguration']! as Map).cast<String, dynamic>())).input(),
      recording: map['recording'] == null ? null : ((AgentcoreBrowserRecording.fromMap((map['recording']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((AgentcoreBrowserTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

