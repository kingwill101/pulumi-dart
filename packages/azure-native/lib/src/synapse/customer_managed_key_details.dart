// ignore_for_file: unused_element, unnecessary_cast

import 'kek_identity_properties.dart';
import 'workspace_key_details.dart';

/// Details of the customer managed key associated with the workspace
class CustomerManagedKeyDetails {
  /// Key encryption key
  final KekIdentityProperties? kekIdentity;
  /// The key object of the workspace
  final WorkspaceKeyDetails? key;

  /// Creates a new [CustomerManagedKeyDetails].
  /// [kekIdentity] Key encryption key
  /// [key] The key object of the workspace
  CustomerManagedKeyDetails({
    this.kekIdentity,
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kekIdentity': ?kekIdentity == null ? null : kekIdentity!.toMap(),
      'key': ?key == null ? null : key!.toMap(),
    };
  }

  factory CustomerManagedKeyDetails.fromMap(Map<String, dynamic> map) {
    return CustomerManagedKeyDetails(
      kekIdentity: map['kekIdentity'] == null ? null : KekIdentityProperties.fromMap((map['kekIdentity'] as Map).cast<String, dynamic>()),
      key: map['key'] == null ? null : WorkspaceKeyDetails.fromMap((map['key'] as Map).cast<String, dynamic>()),
    );
  }
}

