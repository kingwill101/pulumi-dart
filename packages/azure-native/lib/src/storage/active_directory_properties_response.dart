// ignore_for_file: unused_element, unnecessary_cast


/// Settings properties for Active Directory (AD).
class ActiveDirectoryPropertiesResponse {
  /// Specifies the Active Directory account type for Azure Storage.
  final String? accountType;
  /// Specifies the security identifier (SID) for Azure Storage.
  final String? azureStorageSid;
  /// Specifies the domain GUID.
  final String domainGuid;
  /// Specifies the primary domain that the AD DNS server is authoritative for.
  final String domainName;
  /// Specifies the security identifier (SID).
  final String? domainSid;
  /// Specifies the Active Directory forest to get.
  final String? forestName;
  /// Specifies the NetBIOS domain name.
  final String? netBiosDomainName;
  /// Specifies the Active Directory SAMAccountName for Azure Storage.
  final String? samAccountName;

  /// Creates a new [ActiveDirectoryPropertiesResponse].
  /// [accountType] Specifies the Active Directory account type for Azure Storage.
  /// [azureStorageSid] Specifies the security identifier (SID) for Azure Storage.
  /// [domainGuid] Specifies the domain GUID.
  /// [domainName] Specifies the primary domain that the AD DNS server is authoritative for.
  /// [domainSid] Specifies the security identifier (SID).
  /// [forestName] Specifies the Active Directory forest to get.
  /// [netBiosDomainName] Specifies the NetBIOS domain name.
  /// [samAccountName] Specifies the Active Directory SAMAccountName for Azure Storage.
  ActiveDirectoryPropertiesResponse({
    this.accountType,
    this.azureStorageSid,
    required this.domainGuid,
    required this.domainName,
    this.domainSid,
    this.forestName,
    this.netBiosDomainName,
    this.samAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountType': ?accountType,
      'azureStorageSid': ?azureStorageSid,
      'domainGuid': domainGuid,
      'domainName': domainName,
      'domainSid': ?domainSid,
      'forestName': ?forestName,
      'netBiosDomainName': ?netBiosDomainName,
      'samAccountName': ?samAccountName,
    };
  }

  factory ActiveDirectoryPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ActiveDirectoryPropertiesResponse(
      accountType: map['accountType'] == null ? null : map['accountType'] as String,
      azureStorageSid: map['azureStorageSid'] == null ? null : map['azureStorageSid'] as String,
      domainGuid: map['domainGuid'] as String,
      domainName: map['domainName'] as String,
      domainSid: map['domainSid'] == null ? null : map['domainSid'] as String,
      forestName: map['forestName'] == null ? null : map['forestName'] as String,
      netBiosDomainName: map['netBiosDomainName'] == null ? null : map['netBiosDomainName'] as String,
      samAccountName: map['samAccountName'] == null ? null : map['samAccountName'] as String,
    );
  }
}

