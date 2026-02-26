// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../agentcore_browser_network_configuration/agentcore_browser_network_configuration.dart';
import '../agentcore_browser_recording/agentcore_browser_recording.dart';
import '../agentcore_browser_timeouts/agentcore_browser_timeouts.dart';

/// The set of arguments for AgentcoreBrowser.
class AgentcoreBrowserArgs {
  /// Description of the browser.
  final Input<String>? description;

  /// ARN of the IAM role that the browser assumes for execution.
  final Input<String>? executionRoleArn;

  /// Name of the browser.
  final Input<String>? name;

  /// Network configuration for the browser. See <span pulumi-lang-nodejs="`networkConfiguration`" pulumi-lang-dotnet="`NetworkConfiguration`" pulumi-lang-go="`networkConfiguration`" pulumi-lang-python="`network_configuration`" pulumi-lang-yaml="`networkConfiguration`" pulumi-lang-java="`networkConfiguration`">`network_configuration`</span> below.
  ///
  /// The following arguments are optional:
  final Input<AgentcoreBrowserNetworkConfiguration> networkConfiguration;

  /// Recording configuration for browser sessions. See <span pulumi-lang-nodejs="`recording`" pulumi-lang-dotnet="`Recording`" pulumi-lang-go="`recording`" pulumi-lang-python="`recording`" pulumi-lang-yaml="`recording`" pulumi-lang-java="`recording`">`recording`</span> below.
  final Input<AgentcoreBrowserRecording>? recording;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<AgentcoreBrowserTimeouts>? timeouts;

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
    map['networkConfiguration'] = Input.mapInputValue<
        AgentcoreBrowserNetworkConfiguration,
        Map<String, dynamic>>(networkConfiguration, (value) => value.toMap());
    final recordingValue = recording;
    if (recordingValue != null) {
      map['recording'] = Input.mapOptionalInputValue<AgentcoreBrowserRecording,
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
      map['timeouts'] = Input.mapOptionalInputValue<AgentcoreBrowserTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentcoreBrowserArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreBrowserArgs(
      description: Input.asOptionalInput<String>(map['description']),
      executionRoleArn: Input.asOptionalInput<String>(map['executionRoleArn']),
      name: Input.asOptionalInput<String>(map['name']),
      networkConfiguration: Input.asInput<AgentcoreBrowserNetworkConfiguration>(
          map['networkConfiguration']),
      recording:
          Input.asOptionalInput<AgentcoreBrowserRecording>(map['recording']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          Input.asOptionalInput<AgentcoreBrowserTimeouts>(map['timeouts']),
    );
  }
}
