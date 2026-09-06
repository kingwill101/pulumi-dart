// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The source trigger that caused a run.
class SourceTriggerDescriptorResponse {
  /// The branch name in the repository.
  final pulumi.Input<String?>? branchName;
  /// The unique ID that identifies a commit.
  final pulumi.Input<String?>? commitId;
  /// The event type of the trigger.
  final pulumi.Input<String?>? eventType;
  /// The unique ID of the trigger.
  final pulumi.Input<String?>? id;
  /// The source control provider type.
  final pulumi.Input<String?>? providerType;
  /// The unique ID that identifies pull request.
  final pulumi.Input<String?>? pullRequestId;
  /// The repository URL.
  final pulumi.Input<String?>? repositoryUrl;

  /// Creates a new [SourceTriggerDescriptorResponse].
  /// [branchName] The branch name in the repository.
  /// [commitId] The unique ID that identifies a commit.
  /// [eventType] The event type of the trigger.
  /// [id] The unique ID of the trigger.
  /// [providerType] The source control provider type.
  /// [pullRequestId] The unique ID that identifies pull request.
  /// [repositoryUrl] The repository URL.
  const SourceTriggerDescriptorResponse({
    this.branchName,
    this.commitId,
    this.eventType,
    this.id,
    this.providerType,
    this.pullRequestId,
    this.repositoryUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branchName': ?branchName,
      'commitId': ?commitId,
      'eventType': ?eventType,
      'id': ?id,
      'providerType': ?providerType,
      'pullRequestId': ?pullRequestId,
      'repositoryUrl': ?repositoryUrl,
    };
  }

  factory SourceTriggerDescriptorResponse.fromMap(Map<String, dynamic> map) {
    return SourceTriggerDescriptorResponse(
      branchName: (() { final guardedValue = map['branchName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commitId: (() { final guardedValue = map['commitId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventType: (() { final guardedValue = map['eventType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerType: (() { final guardedValue = map['providerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pullRequestId: (() { final guardedValue = map['pullRequestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryUrl: (() { final guardedValue = map['repositoryUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
