// ignore_for_file: unused_element, unnecessary_cast


class ResourceGroupCostManagementViewDatasetGrouping {
  /// The name of the column to group.
  final String name;
  /// The type of the column. Possible values are `Dimension` and `TagKey`.
  final String type;

  /// Creates a new [ResourceGroupCostManagementViewDatasetGrouping].
  /// [name] The name of the column to group.
  /// [type] The type of the column. Possible values are `Dimension` and `TagKey`.
  ResourceGroupCostManagementViewDatasetGrouping({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory ResourceGroupCostManagementViewDatasetGrouping.fromMap(Map<String, dynamic> map) {
    return ResourceGroupCostManagementViewDatasetGrouping(
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

