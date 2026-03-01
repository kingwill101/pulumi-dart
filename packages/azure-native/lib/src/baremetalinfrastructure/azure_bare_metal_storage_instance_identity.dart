// ignore_for_file: unused_element, unnecessary_cast


/// Identity for Azure Bare Metal Storage Instance.
class AzureBareMetalStorageInstanceIdentity {
  /// The type of identity used for the Azure Bare Metal Storage Instance. The type 'SystemAssigned' refers to an implicitly created identity. The type 'None' will remove any identities from the Azure Bare Metal Storage Instance.
  final String? type;

  /// Creates a new [AzureBareMetalStorageInstanceIdentity].
  /// [type] The type of identity used for the Azure Bare Metal Storage Instance. The type 'SystemAssigned' refers to an implicitly created identity. The type 'None' will remove any identities from the Azure Bare Metal Storage Instance.
  AzureBareMetalStorageInstanceIdentity({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory AzureBareMetalStorageInstanceIdentity.fromMap(Map<String, dynamic> map) {
    return AzureBareMetalStorageInstanceIdentity(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

