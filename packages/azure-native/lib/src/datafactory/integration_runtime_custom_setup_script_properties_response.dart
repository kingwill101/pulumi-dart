// ignore_for_file: unused_element, unnecessary_cast

import 'secure_string_response.dart';

/// Custom setup script properties for a managed dedicated integration runtime.
class IntegrationRuntimeCustomSetupScriptPropertiesResponse {
  /// The URI of the Azure blob container that contains the custom setup script.
  final String? blobContainerUri;
  /// The SAS token of the Azure blob container.
  final SecureStringResponse? sasToken;

  /// Creates a new [IntegrationRuntimeCustomSetupScriptPropertiesResponse].
  /// [blobContainerUri] The URI of the Azure blob container that contains the custom setup script.
  /// [sasToken] The SAS token of the Azure blob container.
  IntegrationRuntimeCustomSetupScriptPropertiesResponse({
    this.blobContainerUri,
    this.sasToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobContainerUri': ?blobContainerUri,
      'sasToken': ?sasToken == null ? null : sasToken!.toMap(),
    };
  }

  factory IntegrationRuntimeCustomSetupScriptPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeCustomSetupScriptPropertiesResponse(
      blobContainerUri: map['blobContainerUri'] == null ? null : map['blobContainerUri'] as String,
      sasToken: map['sasToken'] == null ? null : SecureStringResponse.fromMap((map['sasToken'] as Map).cast<String, dynamic>()),
    );
  }
}

