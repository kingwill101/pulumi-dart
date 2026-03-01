// ignore_for_file: unused_element, unnecessary_cast


/// Security compliance properties of the resource
class SecurityComplianceStatusResponse {
  /// Indicates whether data at-rest encryption is enabled on Azure Stack HCI clustered volumes.
  final String dataAtRestEncrypted;
  /// Indicates whether HCI cluster has data in-transit protection.
  final String dataInTransitProtected;
  /// Time in UTC when compliance status was last updated.
  final String lastUpdated;
  /// Indicates whether HCI hosts meets secured-core server requirements.
  final String securedCoreCompliance;
  /// Indicates whether HCI hosts have enforced consistent Windows Defender Application Control.
  final String wdacCompliance;

  /// Creates a new [SecurityComplianceStatusResponse].
  /// [dataAtRestEncrypted] Indicates whether data at-rest encryption is enabled on Azure Stack HCI clustered volumes.
  /// [dataInTransitProtected] Indicates whether HCI cluster has data in-transit protection.
  /// [lastUpdated] Time in UTC when compliance status was last updated.
  /// [securedCoreCompliance] Indicates whether HCI hosts meets secured-core server requirements.
  /// [wdacCompliance] Indicates whether HCI hosts have enforced consistent Windows Defender Application Control.
  SecurityComplianceStatusResponse({
    required this.dataAtRestEncrypted,
    required this.dataInTransitProtected,
    required this.lastUpdated,
    required this.securedCoreCompliance,
    required this.wdacCompliance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataAtRestEncrypted': dataAtRestEncrypted,
      'dataInTransitProtected': dataInTransitProtected,
      'lastUpdated': lastUpdated,
      'securedCoreCompliance': securedCoreCompliance,
      'wdacCompliance': wdacCompliance,
    };
  }

  factory SecurityComplianceStatusResponse.fromMap(Map<String, dynamic> map) {
    return SecurityComplianceStatusResponse(
      dataAtRestEncrypted: map['dataAtRestEncrypted'] as String,
      dataInTransitProtected: map['dataInTransitProtected'] as String,
      lastUpdated: map['lastUpdated'] as String,
      securedCoreCompliance: map['securedCoreCompliance'] as String,
      wdacCompliance: map['wdacCompliance'] as String,
    );
  }
}

