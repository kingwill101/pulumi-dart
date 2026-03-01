// ignore_for_file: unused_element, unnecessary_cast

class RegionCommitmentResource {
  /// Name of the accelerator type resource. Applicable only when the type is ACCELERATOR.
  final String? acceleratorType;

  /// The amount of the resource purchased (in a type-dependent unit,
  /// such as bytes). For vCPUs, this can just be an integer. For memory,
  /// this must be provided in MB. Memory must be a multiple of 256 MB,
  /// with up to 6.5GB of memory per every vCPU.
  final String? amount;

  /// Type of resource for which this commitment applies.
  /// Possible values are VCPU, MEMORY, LOCAL_SSD, and ACCELERATOR.
  final String? type;

  /// Creates a new [RegionCommitmentResource].
  /// [acceleratorType] Name of the accelerator type resource. Applicable only when the type is ACCELERATOR.
  /// [amount] The amount of the resource purchased (in a type-dependent unit,
  /// [type] Type of resource for which this commitment applies.
  RegionCommitmentResource({this.acceleratorType, this.amount, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorType': ?acceleratorType,
      'amount': ?amount,
      'type': ?type,
    };
  }

  factory RegionCommitmentResource.fromMap(Map<String, dynamic> map) {
    return RegionCommitmentResource(
      acceleratorType: map['acceleratorType'] == null
          ? null
          : map['acceleratorType'] as String,
      amount: map['amount'] == null ? null : map['amount'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
