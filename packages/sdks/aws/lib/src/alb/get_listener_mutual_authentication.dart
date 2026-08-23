// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenerMutualAuthentication {
  final pulumi.Input<String> advertiseTrustStoreCaNames;
  final pulumi.Input<bool> ignoreClientCertificateExpiry;
  final pulumi.Input<String> mode;
  final pulumi.Input<String> trustStoreArn;

  /// Creates a new [GetListenerMutualAuthentication].
  /// [advertiseTrustStoreCaNames] Required.
  /// [ignoreClientCertificateExpiry] Required.
  /// [mode] Required.
  /// [trustStoreArn] Required.
  const GetListenerMutualAuthentication({
    required this.advertiseTrustStoreCaNames,
    required this.ignoreClientCertificateExpiry,
    required this.mode,
    required this.trustStoreArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advertiseTrustStoreCaNames': advertiseTrustStoreCaNames,
      'ignoreClientCertificateExpiry': ignoreClientCertificateExpiry,
      'mode': mode,
      'trustStoreArn': trustStoreArn,
    };
  }

  factory GetListenerMutualAuthentication.fromMap(Map<String, dynamic> map) {
    return GetListenerMutualAuthentication(
      advertiseTrustStoreCaNames: pulumi.Input.fromValue(map['advertiseTrustStoreCaNames'] as String),
      ignoreClientCertificateExpiry: pulumi.Input.fromValue(map['ignoreClientCertificateExpiry'] as bool),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      trustStoreArn: pulumi.Input.fromValue(map['trustStoreArn'] as String),
    );
  }
}
