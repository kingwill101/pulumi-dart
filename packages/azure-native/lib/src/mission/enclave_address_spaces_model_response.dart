// ignore_for_file: unused_element, unnecessary_cast


/// Enclave Address Spaces
class EnclaveAddressSpacesModelResponse {
  /// Enclave Address Space
  final String? enclaveAddressSpace;
  /// Managed Address Space
  final String? managedAddressSpace;

  /// Creates a new [EnclaveAddressSpacesModelResponse].
  /// [enclaveAddressSpace] Enclave Address Space
  /// [managedAddressSpace] Managed Address Space
  EnclaveAddressSpacesModelResponse({
    this.enclaveAddressSpace,
    this.managedAddressSpace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enclaveAddressSpace': ?enclaveAddressSpace,
      'managedAddressSpace': ?managedAddressSpace,
    };
  }

  factory EnclaveAddressSpacesModelResponse.fromMap(Map<String, dynamic> map) {
    return EnclaveAddressSpacesModelResponse(
      enclaveAddressSpace: map['enclaveAddressSpace'] == null ? null : map['enclaveAddressSpace'] as String,
      managedAddressSpace: map['managedAddressSpace'] == null ? null : map['managedAddressSpace'] as String,
    );
  }
}

