// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A VM Family and its associated core quota for the Batch account.
class VirtualMachineFamilyCoreQuotaResponse {
  /// The core quota for the VM family for the Batch account.
  final pulumi.Input<int> coreQuota;
  /// The Virtual Machine family name.
  final pulumi.Input<String> name;

  /// Creates a new [VirtualMachineFamilyCoreQuotaResponse].
  /// [coreQuota] The core quota for the VM family for the Batch account.
  /// [name] The Virtual Machine family name.
  const VirtualMachineFamilyCoreQuotaResponse({
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
      coreQuota: pulumi.Input.fromValue(map['coreQuota'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
