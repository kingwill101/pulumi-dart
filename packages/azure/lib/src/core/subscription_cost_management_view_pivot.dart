// ignore_for_file: unused_element, unnecessary_cast


class SubscriptionCostManagementViewPivot {
  /// The name of the column which should be used for this sub-view in the Cost Analysis UI.
  final String name;
  /// The data type to show in this sub-view. Possible values are `Dimension` and `TagKey`.
  final String type;

  /// Creates a new [SubscriptionCostManagementViewPivot].
  /// [name] The name of the column which should be used for this sub-view in the Cost Analysis UI.
  /// [type] The data type to show in this sub-view. Possible values are `Dimension` and `TagKey`.
  SubscriptionCostManagementViewPivot({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory SubscriptionCostManagementViewPivot.fromMap(Map<String, dynamic> map) {
    return SubscriptionCostManagementViewPivot(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

