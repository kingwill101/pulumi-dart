// ignore_for_file: unused_element, unnecessary_cast

/// Commitment for a particular resource (a Commitment is composed of one or more of these).
class ResourceCommitmentResponseComputeV1 {
  /// Name of the accelerator type resource. Applicable only when the type is ACCELERATOR.
  final String acceleratorType;

  /// The amount of the resource purchased (in a type-dependent unit, such as bytes). For vCPUs, this can just be an integer. For memory, this must be provided in MB. Memory must be a multiple of 256 MB, with up to 6.5GB of memory per every vCPU.
  final String amount;

  /// Type of resource for which this commitment applies. Possible values are VCPU, MEMORY, LOCAL_SSD, and ACCELERATOR.
  final String type;

  ResourceCommitmentResponseComputeV1({
    required this.acceleratorType,
    required this.amount,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acceleratorType'] = acceleratorType;
    map['amount'] = amount;
    map['type'] = type;
    return map;
  }

  factory ResourceCommitmentResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return ResourceCommitmentResponseComputeV1(
      acceleratorType: map['acceleratorType'] as String,
      amount: map['amount'] as String,
      type: map['type'] as String,
    );
  }
}
