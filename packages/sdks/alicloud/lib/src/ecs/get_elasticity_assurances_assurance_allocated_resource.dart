// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetElasticityAssurancesAssuranceAllocatedResource {
  /// Instance type.
  final pulumi.Input<String> instanceType;

  /// The total number of instances that need to be reserved within an instance type.
  final pulumi.Input<int> totalAmount;

  /// The number of instances that have been used.
  final pulumi.Input<int> usedAmount;

  /// The zone ID.
  final pulumi.Input<String> zoneId;

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

  factory GetElasticityAssurancesAssuranceAllocatedResource.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetElasticityAssurancesAssuranceAllocatedResource(
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      totalAmount: pulumi.Input.fromValue(map['totalAmount'] as int),
      usedAmount: pulumi.Input.fromValue(map['usedAmount'] as int),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
