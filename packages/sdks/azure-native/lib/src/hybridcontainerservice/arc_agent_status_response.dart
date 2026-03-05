// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the observed Arc Agent status that is resourceSynced back to the ARM resource.
class ArcAgentStatusResponse {
  /// Version of the Arc agents currently running on the Provisioned cluster resource.
  final pulumi.Input<String>? agentVersion;
  /// Number of CPU cores present in the Provisioned cluster resource
  final pulumi.Input<double>? coreCount;
  /// Observed deployment state of the Arc Agents on the target cluster. Possible values include: 'pending', 'provisioning', 'provisioned', 'deleting', 'failed', 'upgrading'
  final pulumi.Input<String>? deploymentState;
  /// Error messages while onboarding/upgrading/uninstalling the Arc agents
  final pulumi.Input<String>? errorMessage;
  /// Last connected timestamp of the Provisioned cluster resource.
  final pulumi.Input<String>? lastConnectivityTime;
  /// ManagedIdentity certificate expiration time (ValidUntil).
  final pulumi.Input<String>? managedIdentityCertificateExpirationTime;
  /// Onboarding public key for provisioning the Managed identity for the HybridAKS cluster. Will be used to create the hybridIdentityMetadata proxy resource and will not be persisted.
  final pulumi.Input<String>? onboardingPublicKey;

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
      agentVersion: (() { final guardedValue = map['agentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      coreCount: (() { final guardedValue = map['coreCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      deploymentState: (() { final guardedValue = map['deploymentState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errorMessage: (() { final guardedValue = map['errorMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastConnectivityTime: (() { final guardedValue = map['lastConnectivityTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedIdentityCertificateExpirationTime: (() { final guardedValue = map['managedIdentityCertificateExpirationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onboardingPublicKey: (() { final guardedValue = map['onboardingPublicKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

