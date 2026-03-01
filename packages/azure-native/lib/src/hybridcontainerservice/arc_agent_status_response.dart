// ignore_for_file: unused_element, unnecessary_cast


/// Defines the observed Arc Agent status that is resourceSynced back to the ARM resource.
class ArcAgentStatusResponse {
  /// Version of the Arc agents currently running on the Provisioned cluster resource.
  final String? agentVersion;
  /// Number of CPU cores present in the Provisioned cluster resource
  final double? coreCount;
  /// Observed deployment state of the Arc Agents on the target cluster. Possible values include: 'pending', 'provisioning', 'provisioned', 'deleting', 'failed', 'upgrading'
  final String? deploymentState;
  /// Error messages while onboarding/upgrading/uninstalling the Arc agents
  final String? errorMessage;
  /// Last connected timestamp of the Provisioned cluster resource.
  final String? lastConnectivityTime;
  /// ManagedIdentity certificate expiration time (ValidUntil).
  final String? managedIdentityCertificateExpirationTime;
  /// Onboarding public key for provisioning the Managed identity for the HybridAKS cluster. Will be used to create the hybridIdentityMetadata proxy resource and will not be persisted.
  final String? onboardingPublicKey;

  /// Creates a new [ArcAgentStatusResponse].
  /// [agentVersion] Version of the Arc agents currently running on the Provisioned cluster resource.
  /// [coreCount] Number of CPU cores present in the Provisioned cluster resource
  /// [deploymentState] Observed deployment state of the Arc Agents on the target cluster. Possible values include: 'pending', 'provisioning', 'provisioned', 'deleting', 'failed', 'upgrading'
  /// [errorMessage] Error messages while onboarding/upgrading/uninstalling the Arc agents
  /// [lastConnectivityTime] Last connected timestamp of the Provisioned cluster resource.
  /// [managedIdentityCertificateExpirationTime] ManagedIdentity certificate expiration time (ValidUntil).
  /// [onboardingPublicKey] Onboarding public key for provisioning the Managed identity for the HybridAKS cluster. Will be used to create the hybridIdentityMetadata proxy resource and will not be persisted.
  ArcAgentStatusResponse({
    this.agentVersion,
    this.coreCount,
    this.deploymentState,
    this.errorMessage,
    this.lastConnectivityTime,
    this.managedIdentityCertificateExpirationTime,
    this.onboardingPublicKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentVersion': ?agentVersion,
      'coreCount': ?coreCount,
      'deploymentState': ?deploymentState,
      'errorMessage': ?errorMessage,
      'lastConnectivityTime': ?lastConnectivityTime,
      'managedIdentityCertificateExpirationTime': ?managedIdentityCertificateExpirationTime,
      'onboardingPublicKey': ?onboardingPublicKey,
    };
  }

  factory ArcAgentStatusResponse.fromMap(Map<String, dynamic> map) {
    return ArcAgentStatusResponse(
      agentVersion: map['agentVersion'] == null ? null : map['agentVersion'] as String,
      coreCount: map['coreCount'] == null ? null : map['coreCount'] as double,
      deploymentState: map['deploymentState'] == null ? null : map['deploymentState'] as String,
      errorMessage: map['errorMessage'] == null ? null : map['errorMessage'] as String,
      lastConnectivityTime: map['lastConnectivityTime'] == null ? null : map['lastConnectivityTime'] as String,
      managedIdentityCertificateExpirationTime: map['managedIdentityCertificateExpirationTime'] == null ? null : map['managedIdentityCertificateExpirationTime'] as String,
      onboardingPublicKey: map['onboardingPublicKey'] == null ? null : map['onboardingPublicKey'] as String,
    );
  }
}

