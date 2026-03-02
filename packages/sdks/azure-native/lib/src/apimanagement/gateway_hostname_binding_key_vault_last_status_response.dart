// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GatewayHostnameBindingKeyVaultLastStatusResponse {
  /// The last status of the Key Vault certificate fetch process.
  final pulumi.Input<String> code;
  /// The last time the Key Vault certificate fetch process was successful. Only when the fetch process has succeeded at least once and current state is failed.  The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  final pulumi.Input<String> lastSuccessTimeStampUtc;
  /// The last time the Key Vault certificate fetch process was attempted. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  final pulumi.Input<String> timeStampUtc;

  /// Creates a new [GatewayHostnameBindingKeyVaultLastStatusResponse].
  /// [code] The last status of the Key Vault certificate fetch process.
  /// [lastSuccessTimeStampUtc] The last time the Key Vault certificate fetch process was successful. Only when the fetch process has succeeded at least once and current state is failed.  The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  /// [timeStampUtc] The last time the Key Vault certificate fetch process was attempted. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  GatewayHostnameBindingKeyVaultLastStatusResponse({
    required this.code,
    required this.lastSuccessTimeStampUtc,
    required this.timeStampUtc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'lastSuccessTimeStampUtc': lastSuccessTimeStampUtc,
      'timeStampUtc': timeStampUtc,
    };
  }

  factory GatewayHostnameBindingKeyVaultLastStatusResponse.fromMap(Map<String, dynamic> map) {
    return GatewayHostnameBindingKeyVaultLastStatusResponse(
      code: (map['code'] as String).input(),
      lastSuccessTimeStampUtc: (map['lastSuccessTimeStampUtc'] as String).input(),
      timeStampUtc: (map['timeStampUtc'] as String).input(),
    );
  }
}

