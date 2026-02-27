// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../agentcore_browser_network_configuration/agentcore_browser_network_configuration.dart';
import '../agentcore_browser_recording/agentcore_browser_recording.dart';
import '../agentcore_browser_timeouts/agentcore_browser_timeouts.dart';

/// The set of arguments for AgentcoreBrowser.
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
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      executionRoleArn:
          pulumi.Input.asOptionalInput<String>(map['executionRoleArn']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      networkConfiguration:
          pulumi.Input.asInput<AgentcoreBrowserNetworkConfiguration>(
              map['networkConfiguration']),
      recording: pulumi.Input.asOptionalInput<AgentcoreBrowserRecording>(
          map['recording']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<AgentcoreBrowserTimeouts>(
          map['timeouts']),
    );
  }
}
