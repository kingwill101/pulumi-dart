// ignore_for_file: unused_element, unnecessary_cast

import 'resource_commitment_type.dart';

/// Commitment for a particular resource (a Commitment is composed of one or more of these).
class ResourceCommitment {
  /// Name of the accelerator type resource. Applicable only when the type is ACCELERATOR.
  final String? acceleratorType;

  /// The amount of the resource purchased (in a type-dependent unit, such as bytes). For vCPUs, this can just be an integer. For memory, this must be provided in MB. Memory must be a multiple of 256 MB, with up to 6.5GB of memory per every vCPU.
  final String? amount;

  /// Type of resource for which this commitment applies. Possible values are VCPU, MEMORY, LOCAL_SSD, and ACCELERATOR.
  final ResourceCommitmentType? type;

  ResourceCommitment({
    this.acceleratorType,
    this.amount,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorTypeValue = acceleratorType;
    if (acceleratorTypeValue != null) {
      map['acceleratorType'] = acceleratorTypeValue;
    }
    final amountValue = amount;
    if (amountValue != null) {
      map['amount'] = amountValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue.value;
    }
    return map;
  }

  factory ResourceCommitment.fromMap(Map<String, dynamic> map) {
    return ResourceCommitment(
      acceleratorType: map['acceleratorType'] == null
          ? null
          : map['acceleratorType'] as String,
      amount: map['amount'] == null ? null : map['amount'] as String,
      type: map['type'] == null
          ? null
          : ResourceCommitmentType.fromValue(map['type'] as String),
    );
  }
}
