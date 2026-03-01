// ignore_for_file: unused_element, unnecessary_cast


/// The vault id is an Azure Resource Manager Resource id in the form /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/vaults/{vaultName}
class SourceVault {
  /// Resource Id
  final String? id;

  /// Creates a new [SourceVault].
  /// [id] Resource Id
  SourceVault({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory SourceVault.fromMap(Map<String, dynamic> map) {
    return SourceVault(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

