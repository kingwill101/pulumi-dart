// ignore_for_file: unused_element, unnecessary_cast

import 'identity_selector_response.dart';

class CommandOutputSettingsResponse {
  /// The selection of the managed identity to use with this storage account container. The identity type must be either system assigned or user assigned.
  final IdentitySelectorResponse? associatedIdentity;
  /// The URL of the storage account container that is to be used by the specified identities.
  final String? containerUrl;

  /// Creates a new [CommandOutputSettingsResponse].
  /// [associatedIdentity] The selection of the managed identity to use with this storage account container. The identity type must be either system assigned or user assigned.
  /// [containerUrl] The URL of the storage account container that is to be used by the specified identities.
  CommandOutputSettingsResponse({
    this.associatedIdentity,
    this.containerUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedIdentity': ?associatedIdentity == null ? null : associatedIdentity!.toMap(),
      'containerUrl': ?containerUrl,
    };
  }

  factory CommandOutputSettingsResponse.fromMap(Map<String, dynamic> map) {
    return CommandOutputSettingsResponse(
      associatedIdentity: map['associatedIdentity'] == null ? null : IdentitySelectorResponse.fromMap((map['associatedIdentity'] as Map).cast<String, dynamic>()),
      containerUrl: map['containerUrl'] == null ? null : map['containerUrl'] as String,
    );
  }
}

