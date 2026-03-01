// ignore_for_file: unused_element, unnecessary_cast


/// The source trigger that caused a run.
class SourceTriggerDescriptorResponse {
  /// The branch name in the repository.
  final String? branchName;
  /// The unique ID that identifies a commit.
  final String? commitId;
  /// The event type of the trigger.
  final String? eventType;
  /// The unique ID of the trigger.
  final String? id;
  /// The source control provider type.
  final String? providerType;
  /// The unique ID that identifies pull request.
  final String? pullRequestId;
  /// The repository URL.
  final String? repositoryUrl;

  /// Creates a new [SourceTriggerDescriptorResponse].
  /// [branchName] The branch name in the repository.
  /// [commitId] The unique ID that identifies a commit.
  /// [eventType] The event type of the trigger.
  /// [id] The unique ID of the trigger.
  /// [providerType] The source control provider type.
  /// [pullRequestId] The unique ID that identifies pull request.
  /// [repositoryUrl] The repository URL.
  SourceTriggerDescriptorResponse({
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
      branchName: map['branchName'] == null ? null : map['branchName'] as String,
      commitId: map['commitId'] == null ? null : map['commitId'] as String,
      eventType: map['eventType'] == null ? null : map['eventType'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      providerType: map['providerType'] == null ? null : map['providerType'] as String,
      pullRequestId: map['pullRequestId'] == null ? null : map['pullRequestId'] as String,
      repositoryUrl: map['repositoryUrl'] == null ? null : map['repositoryUrl'] as String,
    );
  }
}

