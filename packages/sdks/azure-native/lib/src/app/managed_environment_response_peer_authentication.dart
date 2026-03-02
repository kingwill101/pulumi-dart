// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mtls_response.dart';

/// Peer authentication settings for the Managed Environment
class ManagedEnvironmentResponsePeerAuthentication {
  /// Mutual TLS authentication settings for the Managed Environment
  final pulumi.Input<MtlsResponse>? mtls;

  /// Creates a new [ManagedEnvironmentResponsePeerAuthentication].
  /// [mtls] Mutual TLS authentication settings for the Managed Environment
  ManagedEnvironmentResponsePeerAuthentication({
    this.mtls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mtls': ?pulumi.Input.mapOptionalInputValue<MtlsResponse, Map<String, dynamic>>(mtls, (value) => value.toMap()),
    };
  }

  factory ManagedEnvironmentResponsePeerAuthentication.fromMap(Map<String, dynamic> map) {
    return ManagedEnvironmentResponsePeerAuthentication(
      mtls: map['mtls'] == null ? null : (MtlsResponse.fromMap((map['mtls']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

