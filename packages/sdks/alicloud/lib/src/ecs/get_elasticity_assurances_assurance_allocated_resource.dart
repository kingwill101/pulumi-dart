// ignore_for_file: unused_element, unnecessary_cast


class GetElasticityAssurancesAssuranceAllocatedResource {
  /// Instance type.
  final String instanceType;
  /// The total number of instances that need to be reserved within an instance type.
  final int totalAmount;
  /// The number of instances that have been used.
  final int usedAmount;
  /// The zone ID.
  final String zoneId;

  /// Creates a new [GetElasticityAssurancesAssuranceAllocatedResource].
  /// [instanceType] Instance type.
  /// [totalAmount] The total number of instances that need to be reserved within an instance type.
  /// [usedAmount] The number of instances that have been used.
  /// [zoneId] The zone ID.
  GetElasticityAssurancesAssuranceAllocatedResource({
    required this.instanceType,
    required this.totalAmount,
    required this.usedAmount,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': instanceType,
      'totalAmount': totalAmount,
      'usedAmount': usedAmount,
      'zoneId': zoneId,
    };
  }

  factory GetElasticityAssurancesAssuranceAllocatedResource.fromMap(Map<String, dynamic> map) {
    return GetElasticityAssurancesAssuranceAllocatedResource(
      instanceType: map['instanceType'] as String,
      totalAmount: map['totalAmount'] as int,
      usedAmount: map['usedAmount'] as int,
      zoneId: map['zoneId'] as String,
    );
  }
}

