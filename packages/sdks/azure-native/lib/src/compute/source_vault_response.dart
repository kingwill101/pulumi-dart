// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The vault id is an Azure Resource Manager Resource id in the form /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/vaults/{vaultName}
class SourceVaultResponse {
  /// Resource Id
  final pulumi.Input<String>? id;

  /// Creates a new [SourceVaultResponse].
  /// [id] Resource Id
  SourceVaultResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory SourceVaultResponse.fromMap(Map<String, dynamic> map) {
    return SourceVaultResponse(
      id: map['id'] == null ? null : (map['id'] as String).input(),
    );
  }
}

