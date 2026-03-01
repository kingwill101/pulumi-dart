// ignore_for_file: unused_element, unnecessary_cast


class ResourceGroupCostManagementViewPivot {
  /// The name of the column which should be used for this sub-view in the Cost Analysis UI.
  final String name;
  /// The data type to show in this sub-view. Possible values are `Dimension` and `TagKey`.
  final String type;

  /// Creates a new [ResourceGroupCostManagementViewPivot].
  /// [name] The name of the column which should be used for this sub-view in the Cost Analysis UI.
  /// [type] The data type to show in this sub-view. Possible values are `Dimension` and `TagKey`.
  ResourceGroupCostManagementViewPivot({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory ResourceGroupCostManagementViewPivot.fromMap(Map<String, dynamic> map) {
    return ResourceGroupCostManagementViewPivot(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

