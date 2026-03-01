// ignore_for_file: unused_element, unnecessary_cast


/// Existing recovery services vault.
class ExistingRecoveryServicesVaultResponse {
  /// The resource ID of the recovery services vault that has been created.
  final String id;
  /// The vault type, whether it is existing or has to be created.
  /// Expected value is 'Existing'.
  final String vaultType;

  /// Creates a new [ExistingRecoveryServicesVaultResponse].
  /// [id] The resource ID of the recovery services vault that has been created.
  /// [vaultType] The vault type, whether it is existing or has to be created.
  ExistingRecoveryServicesVaultResponse({
    required this.id,
    required this.vaultType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'vaultType': vaultType,
    };
  }

  factory ExistingRecoveryServicesVaultResponse.fromMap(Map<String, dynamic> map) {
    return ExistingRecoveryServicesVaultResponse(
      id: map['id'] as String,
      vaultType: map['vaultType'] as String,
    );
  }
}

