// ignore_for_file: unused_element, unnecessary_cast

import 'kek_identity_properties_response.dart';
import 'workspace_key_details_response.dart';

/// Details of the customer managed key associated with the workspace
class CustomerManagedKeyDetailsResponse {
  /// Key encryption key
  final KekIdentityPropertiesResponse? kekIdentity;
  /// The key object of the workspace
  final WorkspaceKeyDetailsResponse? key;
  /// The customer managed key status on the workspace
  final String status;

  /// Creates a new [CustomerManagedKeyDetailsResponse].
  /// [kekIdentity] Key encryption key
  /// [key] The key object of the workspace
  /// [status] The customer managed key status on the workspace
  CustomerManagedKeyDetailsResponse({
    this.kekIdentity,
    this.key,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kekIdentity': ?kekIdentity == null ? null : kekIdentity!.toMap(),
      'key': ?key == null ? null : key!.toMap(),
      'status': status,
    };
  }

  factory CustomerManagedKeyDetailsResponse.fromMap(Map<String, dynamic> map) {
    return CustomerManagedKeyDetailsResponse(
      kekIdentity: map['kekIdentity'] == null ? null : KekIdentityPropertiesResponse.fromMap((map['kekIdentity'] as Map).cast<String, dynamic>()),
      key: map['key'] == null ? null : WorkspaceKeyDetailsResponse.fromMap((map['key'] as Map).cast<String, dynamic>()),
      status: map['status'] as String,
    );
  }
}

