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
  final pulumi.Input<AgentcoreBrowserNetworkConfiguration>? networkConfiguration;
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
    pulumi.Output<String>? browserArn,
    pulumi.Output<String>? browserId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? executionRoleArn,
    pulumi.Output<String>? name,
    pulumi.Output<AgentcoreBrowserNetworkConfiguration>? networkConfiguration,
    pulumi.Output<AgentcoreBrowserRecording>? recording,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<AgentcoreBrowserTimeouts>? timeouts,
  }) :
      browserArn = pulumi.Input.asOptionalInput<String>(browserArn),
      browserId = pulumi.Input.asOptionalInput<String>(browserId),
      description = pulumi.Input.asOptionalInput<String>(description),
      executionRoleArn = pulumi.Input.asOptionalInput<String>(executionRoleArn),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkConfiguration = pulumi.Input.asOptionalInput<AgentcoreBrowserNetworkConfiguration>(networkConfiguration),
      recording = pulumi.Input.asOptionalInput<AgentcoreBrowserRecording>(recording),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<AgentcoreBrowserTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'browserArn': ?browserArn,
      'browserId': ?browserId,
      'description': ?description,
      'executionRoleArn': ?executionRoleArn,
      'name': ?name,
      'networkConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentcoreBrowserNetworkConfiguration, Map<String, dynamic>>(networkConfiguration, (value) => value.toMap()),
      'recording': ?pulumi.Input.mapOptionalInputValue<AgentcoreBrowserRecording, Map<String, dynamic>>(recording, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentcoreBrowserTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentcoreBrowserState.fromMap(Map<String, dynamic> map) {
    return AgentcoreBrowserState(
      browserArn: map['browserArn'] == null ? null : pulumi.Output.create<String>(map['browserArn'] as String),
      browserId: map['browserId'] == null ? null : pulumi.Output.create<String>(map['browserId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      executionRoleArn: map['executionRoleArn'] == null ? null : pulumi.Output.create<String>(map['executionRoleArn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkConfiguration: map['networkConfiguration'] == null ? null : pulumi.Output.create<AgentcoreBrowserNetworkConfiguration>(AgentcoreBrowserNetworkConfiguration.fromMap((map['networkConfiguration'] as Map).cast<String, dynamic>())),
      recording: map['recording'] == null ? null : pulumi.Output.create<AgentcoreBrowserRecording>(AgentcoreBrowserRecording.fromMap((map['recording'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<AgentcoreBrowserTimeouts>(AgentcoreBrowserTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

