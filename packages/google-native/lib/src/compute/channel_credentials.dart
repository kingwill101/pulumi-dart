// ignore_for_file: unused_element, unnecessary_cast

import 'channel_credentials_channel_credential_type.dart';
import 'tls_certificate_paths.dart';

/// [Deprecated] gRPC channel credentials to access the SDS server. gRPC channel credentials to access the SDS server.
class ChannelCredentials {
  /// The call credentials to access the SDS server.
  final TlsCertificatePaths? certificates;

  /// The channel credentials to access the SDS server. This field can be set to one of the following: CERTIFICATES: Use TLS certificates to access the SDS server. GCE_VM: Use local GCE VM credentials to access the SDS server.
  final ChannelCredentialsChannelCredentialType? channelCredentialType;

  /// Creates a new [ChannelCredentials].
  /// [certificates] The call credentials to access the SDS server.
  /// [channelCredentialType] The channel credentials to access the SDS server. This field can be set to one of the following: CERTIFICATES: Use TLS certificates to access the SDS server. GCE_VM: Use local GCE VM credentials to access the SDS server.
  ChannelCredentials({
    this.certificates,
    this.channelCredentialType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificatesValue = certificates;
    if (certificatesValue != null) {
      map['certificates'] = certificatesValue.toMap();
    }
    final channelCredentialTypeValue = channelCredentialType;
    if (channelCredentialTypeValue != null) {
      map['channelCredentialType'] = channelCredentialTypeValue.value;
    }
    return map;
  }

  factory ChannelCredentials.fromMap(Map<String, dynamic> map) {
    return ChannelCredentials(
      certificates: map['certificates'] == null
          ? null
          : TlsCertificatePaths.fromMap(
              (map['certificates'] as Map).cast<String, dynamic>()),
      channelCredentialType: map['channelCredentialType'] == null
          ? null
          : ChannelCredentialsChannelCredentialType.fromValue(
              map['channelCredentialType'] as String),
    );
  }
}
