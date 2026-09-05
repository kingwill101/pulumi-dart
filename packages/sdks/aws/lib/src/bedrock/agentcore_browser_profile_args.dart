// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_browser_profile_timeouts.dart';

/// {@template pulumi_bedrock_agentcore_browser_profile_agentcore_browser_profile_args_doc}
/// The set of arguments for AgentcoreBrowserProfile.
/// {@endtemplate}
/// {@macro pulumi_bedrock_agentcore_browser_profile_agentcore_browser_profile_args_doc}
class AgentcoreBrowserProfileArgs {
  /// Description of the browser profile. Must be between 1 and 4096 characters.
  final pulumi.Input<String?>? description;
  /// Name of the browser profile. Must start with a letter and can contain alphanumeric characters and underscores, up to 48 characters.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<AgentcoreBrowserProfileTimeouts?>? timeouts;

  /// Creates a new [AgentcoreBrowserProfileArgs].
  /// [description] Description of the browser profile. Must be between 1 and 4096 characters.
  /// [name] Name of the browser profile. Must start with a letter and can contain alphanumeric characters and underscores, up to 48 characters.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const AgentcoreBrowserProfileArgs({
    this.description,
    this.name,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentcoreBrowserProfileTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentcoreBrowserProfileArgs.fromMap(Map<String, dynamic> map) {
    return AgentcoreBrowserProfileArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreBrowserProfileTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
