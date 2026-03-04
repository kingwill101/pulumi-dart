// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Security compliance properties of the resource
class SecurityComplianceStatusResponse {
  /// Indicates whether data at-rest encryption is enabled on Azure Stack HCI clustered volumes.
  final pulumi.Input<String> dataAtRestEncrypted;

  /// Indicates whether HCI cluster has data in-transit protection.
  final pulumi.Input<String> dataInTransitProtected;

  /// Time in UTC when compliance status was last updated.
  final pulumi.Input<String> lastUpdated;

  /// Indicates whether HCI hosts meets secured-core server requirements.
  final pulumi.Input<String> securedCoreCompliance;

  /// Indicates whether HCI hosts have enforced consistent Windows Defender Application Control.
  final pulumi.Input<String> wdacCompliance;

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
      dataAtRestEncrypted: pulumi.Input.fromValue(
        map['dataAtRestEncrypted'] as String,
      ),
      dataInTransitProtected: pulumi.Input.fromValue(
        map['dataInTransitProtected'] as String,
      ),
      lastUpdated: pulumi.Input.fromValue(map['lastUpdated'] as String),
      securedCoreCompliance: pulumi.Input.fromValue(
        map['securedCoreCompliance'] as String,
      ),
      wdacCompliance: pulumi.Input.fromValue(map['wdacCompliance'] as String),
    );
  }
}
