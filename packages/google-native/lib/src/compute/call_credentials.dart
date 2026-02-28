// ignore_for_file: unused_element, unnecessary_cast

import 'call_credentials_call_credential_type.dart';
import 'metadata_credentials_from_plugin.dart';

/// [Deprecated] gRPC call credentials to access the SDS server. gRPC call credentials to access the SDS server.
class CallCredentials {
  /// The type of call credentials to use for GRPC requests to the SDS server. This field can be set to one of the following: - GCE_VM: The local GCE VM service account credentials are used to access the SDS server. - FROM_PLUGIN: Custom authenticator credentials are used to access the SDS server.
  final CallCredentialsCallCredentialType? callCredentialType;
  /// Custom authenticator credentials. Valid if callCredentialType is FROM_PLUGIN.
  final MetadataCredentialsFromPlugin? fromPlugin;

  /// Creates a new [CallCredentials].
  /// [callCredentialType] The type of call credentials to use for GRPC requests to the SDS server. This field can be set to one of the following: - GCE_VM: The local GCE VM service account credentials are used to access the SDS server. - FROM_PLUGIN: Custom authenticator credentials are used to access the SDS server.
  /// [fromPlugin] Custom authenticator credentials. Valid if callCredentialType is FROM_PLUGIN.
  CallCredentials({
    this.callCredentialType,
    this.fromPlugin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'callCredentialType': ?callCredentialType == null ? null : callCredentialType!.value,
      'fromPlugin': ?fromPlugin == null ? null : fromPlugin!.toMap(),
    };
  }

  factory CallCredentials.fromMap(Map<String, dynamic> map) {
    return CallCredentials(
      callCredentialType: map['callCredentialType'] == null ? null : CallCredentialsCallCredentialType.fromValue(map['callCredentialType'] as String),
      fromPlugin: map['fromPlugin'] == null ? null : MetadataCredentialsFromPlugin.fromMap((map['fromPlugin'] as Map).cast<String, dynamic>()),
    );
  }
}

