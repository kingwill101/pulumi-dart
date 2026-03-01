// ignore_for_file: unused_element, unnecessary_cast


/// A VM Family and its associated core quota for the Batch account.
class VirtualMachineFamilyCoreQuotaResponse {
  /// The core quota for the VM family for the Batch account.
  final int coreQuota;
  /// The Virtual Machine family name.
  final String name;

  /// Creates a new [VirtualMachineFamilyCoreQuotaResponse].
  /// [coreQuota] The core quota for the VM family for the Batch account.
  /// [name] The Virtual Machine family name.
  VirtualMachineFamilyCoreQuotaResponse({
    required this.coreQuota,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coreQuota': coreQuota,
      'name': name,
    };
  }

  factory VirtualMachineFamilyCoreQuotaResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineFamilyCoreQuotaResponse(
      coreQuota: map['coreQuota'] as int,
      name: map['name'] as String,
    );
  }
}

