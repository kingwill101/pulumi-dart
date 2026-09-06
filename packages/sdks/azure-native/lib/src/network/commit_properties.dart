// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of commit
class CommitProperties {
  /// Commit Type.
  final pulumi.Input<dynamic> commitType;
  /// List of configuration IDs.
  final pulumi.Input<List<String>?>? configurationIds;
  /// A description of the commit.
  final pulumi.Input<String?>? description;
  /// A value that, when changed, forces the commit to be re-evaluated and redeployed.
  final pulumi.Input<String?>? forceUpdateTag;
  /// List of target locations.
  final pulumi.Input<List<String>> targetLocations;

  /// Creates a new [CommitProperties].
  /// [commitType] Commit Type.
  /// [configurationIds] List of configuration IDs.
  /// [description] A description of the commit.
  /// [forceUpdateTag] A value that, when changed, forces the commit to be re-evaluated and redeployed.
  /// [targetLocations] List of target locations.
  const CommitProperties({
    required this.commitType,
    this.configurationIds,
    this.description,
    this.forceUpdateTag,
    required this.targetLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitType': commitType,
      'configurationIds': ?configurationIds,
      'description': ?description,
      'forceUpdateTag': ?forceUpdateTag,
      'targetLocations': targetLocations,
    };
  }

  factory CommitProperties.fromMap(Map<String, dynamic> map) {
    return CommitProperties(
      commitType: pulumi.Input.fromValue(map['commitType']),
      configurationIds: (() { final guardedValue = map['configurationIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forceUpdateTag: (() { final guardedValue = map['forceUpdateTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetLocations: pulumi.Input.fromValue((map['targetLocations'] as List).cast<String>()),
    );
  }
}
