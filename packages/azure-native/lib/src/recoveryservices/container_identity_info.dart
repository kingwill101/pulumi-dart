// ignore_for_file: unused_element, unnecessary_cast


/// Container identity information
class ContainerIdentityInfo {
  /// Protection container identity - AAD Tenant
  final String? aadTenantId;
  /// Protection container identity - Audience
  final String? audience;
  /// Protection container identity - AAD Service Principal
  final String? servicePrincipalClientId;
  /// Unique name of the container
  final String? uniqueName;

  /// Creates a new [ContainerIdentityInfo].
  /// [aadTenantId] Protection container identity - AAD Tenant
  /// [audience] Protection container identity - Audience
  /// [servicePrincipalClientId] Protection container identity - AAD Service Principal
  /// [uniqueName] Unique name of the container
  ContainerIdentityInfo({
    this.aadTenantId,
    this.audience,
    this.servicePrincipalClientId,
    this.uniqueName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadTenantId': ?aadTenantId,
      'audience': ?audience,
      'servicePrincipalClientId': ?servicePrincipalClientId,
      'uniqueName': ?uniqueName,
    };
  }

  factory ContainerIdentityInfo.fromMap(Map<String, dynamic> map) {
    return ContainerIdentityInfo(
      aadTenantId: map['aadTenantId'] == null ? null : map['aadTenantId'] as String,
      audience: map['audience'] == null ? null : map['audience'] as String,
      servicePrincipalClientId: map['servicePrincipalClientId'] == null ? null : map['servicePrincipalClientId'] as String,
      uniqueName: map['uniqueName'] == null ? null : map['uniqueName'] as String,
    );
  }
}

