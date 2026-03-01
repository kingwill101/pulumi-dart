// ignore_for_file: unused_element, unnecessary_cast


/// GitHub Owner properties.
class GitHubOwnerPropertiesResponse {
  /// Gets or sets internal GitHub id.
  final String gitHubInternalId;
  /// Details about resource onboarding status across all connectors.
  ///
  /// OnboardedByOtherConnector - this resource has already been onboarded to another connector. This is only applicable to top-level resources.
  /// Onboarded - this resource has already been onboarded by the specified connector.
  /// NotOnboarded - this resource has not been onboarded to any connector.
  /// NotApplicable - the onboarding state is not applicable to the current endpoint.
  final String? onboardingState;
  /// Gets or sets GitHub Owner url.
  final String ownerUrl;
  /// The provisioning state of the resource.
  ///
  /// Pending - Provisioning pending.
  /// Failed - Provisioning failed.
  /// Succeeded - Successful provisioning.
  /// Canceled - Provisioning canceled.
  /// PendingDeletion - Deletion pending.
  /// DeletionSuccess - Deletion successful.
  /// DeletionFailure - Deletion failure.
  final String? provisioningState;
  /// Gets or sets resource status message.
  final String provisioningStatusMessage;
  /// Gets or sets time when resource was last checked.
  final String provisioningStatusUpdateTimeUtc;

  /// Creates a new [GitHubOwnerPropertiesResponse].
  /// [gitHubInternalId] Gets or sets internal GitHub id.
  /// [onboardingState] Details about resource onboarding status across all connectors.
  /// [ownerUrl] Gets or sets GitHub Owner url.
  /// [provisioningState] The provisioning state of the resource.
  /// [provisioningStatusMessage] Gets or sets resource status message.
  /// [provisioningStatusUpdateTimeUtc] Gets or sets time when resource was last checked.
  GitHubOwnerPropertiesResponse({
    required this.gitHubInternalId,
    this.onboardingState,
    required this.ownerUrl,
    this.provisioningState,
    required this.provisioningStatusMessage,
    required this.provisioningStatusUpdateTimeUtc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gitHubInternalId': gitHubInternalId,
      'onboardingState': ?onboardingState,
      'ownerUrl': ownerUrl,
      'provisioningState': ?provisioningState,
      'provisioningStatusMessage': provisioningStatusMessage,
      'provisioningStatusUpdateTimeUtc': provisioningStatusUpdateTimeUtc,
    };
  }

  factory GitHubOwnerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return GitHubOwnerPropertiesResponse(
      gitHubInternalId: map['gitHubInternalId'] as String,
      onboardingState: map['onboardingState'] == null ? null : map['onboardingState'] as String,
      ownerUrl: map['ownerUrl'] as String,
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      provisioningStatusMessage: map['provisioningStatusMessage'] as String,
      provisioningStatusUpdateTimeUtc: map['provisioningStatusUpdateTimeUtc'] as String,
    );
  }
}

