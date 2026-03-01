// ignore_for_file: unused_element, unnecessary_cast


class SubscriptionCostManagementViewDatasetSorting {
  /// Direction of sort. Possible values are `Ascending` and `Descending`.
  final String direction;
  /// The name of the column to sort.
  final String name;

  /// Creates a new [SubscriptionCostManagementViewDatasetSorting].
  /// [direction] Direction of sort. Possible values are `Ascending` and `Descending`.
  /// [name] The name of the column to sort.
  SubscriptionCostManagementViewDatasetSorting({
    required this.direction,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': direction,
      'name': name,
    };
  }

  factory SubscriptionCostManagementViewDatasetSorting.fromMap(Map<String, dynamic> map) {
    return SubscriptionCostManagementViewDatasetSorting(
      direction: map['direction'] as String,
      name: map['name'] as String,
    );
  }
}

