// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceTypesInstanceTypeGpu {
  /// The number of local storage devices that an instance has been attached to.
  final pulumi.Input<String> amount;
  /// The category of local storage that an instance has been attached to.
  final pulumi.Input<String> category;

  /// Creates a new [GetInstanceTypesInstanceTypeGpu].
  /// [amount] The number of local storage devices that an instance has been attached to.
  /// [category] The category of local storage that an instance has been attached to.
  GetInstanceTypesInstanceTypeGpu({
    required this.amount,
    required this.category,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': amount,
      'category': category,
    };
  }

  factory GetInstanceTypesInstanceTypeGpu.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypesInstanceTypeGpu(
      amount: pulumi.Input.fromValue(map['amount'] as String),
      category: pulumi.Input.fromValue(map['category'] as String),
    );
  }
}

