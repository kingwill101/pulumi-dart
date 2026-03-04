// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_browser_network_configuration.dart';
import 'agentcore_browser_recording.dart';
import 'agentcore_browser_timeouts.dart';

/// Input properties used for looking up and filtering AgentcoreBrowser resources.
class AgentcoreBrowserState {
  /// ARN of the Browser.
  final pulumi.Input<String>? browserArn;

  /// Unique identifier of the Browser.
  final pulumi.Input<String>? browserId;

  /// Description of the browser.
  final pulumi.Input<String>? description;

  /// ARN of the IAM role that the browser assumes for execution.
  final pulumi.Input<String>? executionRoleArn;

  /// Name of the browser.
  final pulumi.Input<String>? name;

  /// Network configuration for the browser. See `network_configuration` below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<AgentcoreBrowserNetworkConfiguration>?
  networkConfiguration;

  /// Recording configuration for browser sessions. See `recording` below.
  final pulumi.Input<AgentcoreBrowserRecording>? recording;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<AgentcoreBrowserTimeouts>? timeouts;

  /// Creates a new [AgentcoreBrowserState].
  /// [browserArn] ARN of the Browser.
  /// [browserId] Unique identifier of the Browser.
  /// [description] Description of the browser.
  /// [executionRoleArn] ARN of the IAM role that the browser assumes for execution.
  /// [name] Name of the browser.
  /// [networkConfiguration] Network configuration for the browser. See `network_configuration` below.
  /// [recording] Recording configuration for browser sessions. See `recording` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  AgentcoreBrowserState({
    this.browserArn,
    this.browserId,
    this.description,
    this.executionRoleArn,
    this.name,
    this.networkConfiguration,
    this.recording,
    this.region,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'browserArn': ?browserArn,
      'browserId': ?browserId,
      'description': ?description,
      'executionRoleArn': ?executionRoleArn,
      'name': ?name,
      'networkConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            AgentcoreBrowserNetworkConfiguration,
            Map<String, dynamic>
          >(networkConfiguration, (value) => value.toMap()),
      'recording':
          ?pulumi.Input.mapOptionalInputValue<
            AgentcoreBrowserRecording,
            Map<String, dynamic>
          >(recording, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            AgentcoreBrowserTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentcoreBrowserState.fromMap(Map<String, dynamic> map) {
    return AgentcoreBrowserState(
      browserArn: (() {
        final guardedValue = map['browserArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      browserId: (() {
        final guardedValue = map['browserId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      executionRoleArn: (() {
        final guardedValue = map['executionRoleArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkConfiguration: (() {
        final guardedValue = map['networkConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AgentcoreBrowserNetworkConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      recording: (() {
        final guardedValue = map['recording'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AgentcoreBrowserRecording.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AgentcoreBrowserTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
