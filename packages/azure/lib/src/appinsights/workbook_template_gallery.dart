// ignore_for_file: unused_element, unnecessary_cast


class WorkbookTemplateGallery {
  /// Category for the gallery.
  final String category;
  /// Name of the workbook template in the gallery.
  final String name;
  /// Order of the template within the gallery. Defaults to `0`.
  final int? order;
  /// Azure resource type supported by the gallery. Defaults to `Azure Monitor`.
  final String? resourceType;
  /// Type of workbook supported by the workbook template. Defaults to `workbook`.
  ///
  /// > **Note:** See [documentation](https://docs.microsoft.com/en-us/azure/azure-monitor/visualize/workbooks-automate#galleries) for more information of `resource_type` and `type`.
  final String? type;

  /// Creates a new [WorkbookTemplateGallery].
  /// [category] Category for the gallery.
  /// [name] Name of the workbook template in the gallery.
  /// [order] Order of the template within the gallery. Defaults to `0`.
  /// [resourceType] Azure resource type supported by the gallery. Defaults to `Azure Monitor`.
  /// [type] Type of workbook supported by the workbook template. Defaults to `workbook`.
  WorkbookTemplateGallery({
    required this.category,
    required this.name,
    this.order,
    this.resourceType,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'name': name,
      'order': ?order,
      'resourceType': ?resourceType,
      'type': ?type,
    };
  }

  factory WorkbookTemplateGallery.fromMap(Map<String, dynamic> map) {
    return WorkbookTemplateGallery(
      category: map['category'] as String,
      name: map['name'] as String,
      order: map['order'] == null ? null : map['order'] as int,
      resourceType: map['resourceType'] == null ? null : map['resourceType'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

