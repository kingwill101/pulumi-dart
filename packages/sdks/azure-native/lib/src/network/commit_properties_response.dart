// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of commit
class CommitPropertiesResponse {
  /// List of active locations.
  final pulumi.Input<List<String>> activeLocations;
  /// Commit Type.
  final pulumi.Input<String> commitType;
  /// List of configuration IDs.
  final pulumi.Input<List<String>>? configurationIds;
  /// A description of the commit.
  final pulumi.Input<String>? description;
  /// A value that, when changed, forces the commit to be re-evaluated and redeployed.
  final pulumi.Input<String>? forceUpdateTag;
  /// The provisioning state of the resource.
  final pulumi.Input<String> provisioningState;
  /// Unique identifier for this resource.
  final pulumi.Input<String> resourceGuid;
  /// List of target locations.
  final pulumi.Input<List<String>> targetLocations;

  /// Creates a new [CommitPropertiesResponse].
  /// [activeLocations] List of active locations.
  /// [commitType] Commit Type.
  /// [configurationIds] List of configuration IDs.
  /// [description] A description of the commit.
  /// [forceUpdateTag] A value that, when changed, forces the commit to be re-evaluated and redeployed.
  /// [provisioningState] The provisioning state of the resource.
  /// [resourceGuid] Unique identifier for this resource.
  /// [targetLocations] List of target locations.
  const CommitPropertiesResponse({
    required this.activeLocations,
    required this.commitType,
    this.configurationIds,
    this.description,
    this.forceUpdateTag,
    required this.provisioningState,
    required this.resourceGuid,
    required this.targetLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeLocations': activeLocations,
      'commitType': commitType,
      'configurationIds': ?configurationIds,
      'description': ?description,
      'forceUpdateTag': ?forceUpdateTag,
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
      'targetLocations': targetLocations,
    };
  }

  factory CommitPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CommitPropertiesResponse(
      activeLocations: pulumi.Input.fromValue((map['activeLocations'] as List).cast<String>()),
      commitType: pulumi.Input.fromValue(map['commitType'] as String),
      configurationIds: (() { final guardedValue = map['configurationIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forceUpdateTag: (() { final guardedValue = map['forceUpdateTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      resourceGuid: pulumi.Input.fromValue(map['resourceGuid'] as String),
      targetLocations: pulumi.Input.fromValue((map['targetLocations'] as List).cast<String>()),
    );
  }
}
