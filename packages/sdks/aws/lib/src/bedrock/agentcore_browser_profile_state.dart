// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_browser_profile_timeouts.dart';

/// Input properties used for looking up and filtering AgentcoreBrowserProfile resources.
class AgentcoreBrowserProfileState {
  /// Description of the browser profile. Must be between 1 and 4096 characters.
  final pulumi.Input<String>? description;
  /// Name of the browser profile. Must start with a letter and can contain alphanumeric characters and underscores, up to 48 characters.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// ARN of the Browser Profile.
  final pulumi.Input<String>? profileArn;
  /// Unique identifier of the Browser Profile.
  final pulumi.Input<String>? profileId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<AgentcoreBrowserProfileTimeouts>? timeouts;

  /// Creates a new [AgentcoreBrowserProfileState].
  /// [description] Description of the browser profile. Must be between 1 and 4096 characters.
  /// [name] Name of the browser profile. Must start with a letter and can contain alphanumeric characters and underscores, up to 48 characters.
  /// [profileArn] ARN of the Browser Profile.
  /// [profileId] Unique identifier of the Browser Profile.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  const AgentcoreBrowserProfileState({
    this.description,
    this.name,
    this.profileArn,
    this.profileId,
    this.region,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'profileArn': ?profileArn,
      'profileId': ?profileId,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentcoreBrowserProfileTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentcoreBrowserProfileState.fromMap(Map<String, dynamic> map) {
    return AgentcoreBrowserProfileState(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profileArn: (() { final guardedValue = map['profileArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profileId: (() { final guardedValue = map['profileId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreBrowserProfileTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
