// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceTypesInstanceTypeLocalStorage {
  /// The number of local storage devices that an instance has been attached to.
  final String amount;
  /// The capacity of a local storage in GB.
  final String capacity;
  /// The category of local storage that an instance has been attached to.
  final String category;

  /// Creates a new [GetInstanceTypesInstanceTypeLocalStorage].
  /// [amount] The number of local storage devices that an instance has been attached to.
  /// [capacity] The capacity of a local storage in GB.
  /// [category] The category of local storage that an instance has been attached to.
  GetInstanceTypesInstanceTypeLocalStorage({
    required this.amount,
    required this.capacity,
    required this.category,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': amount,
      'capacity': capacity,
      'category': category,
    };
  }

  factory GetInstanceTypesInstanceTypeLocalStorage.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypesInstanceTypeLocalStorage(
      amount: map['amount'] as String,
      capacity: map['capacity'] as String,
      category: map['category'] as String,
    );
  }
}

