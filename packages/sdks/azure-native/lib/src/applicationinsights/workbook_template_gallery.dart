// ignore_for_file: unused_element, unnecessary_cast


/// Gallery information for a workbook template.
class WorkbookTemplateGallery {
  /// Category for the gallery.
  final String? category;
  /// Name of the workbook template in the gallery.
  final String? name;
  /// Order of the template within the gallery.
  final int? order;
  /// Azure resource type supported by the gallery.
  final String? resourceType;
  /// Type of workbook supported by the workbook template.
  final String? type;

  /// Creates a new [WorkbookTemplateGallery].
  /// [category] Category for the gallery.
  /// [name] Name of the workbook template in the gallery.
  /// [order] Order of the template within the gallery.
  /// [resourceType] Azure resource type supported by the gallery.
  /// [type] Type of workbook supported by the workbook template.
  WorkbookTemplateGallery({
    this.category,
    this.name,
    this.order,
    this.resourceType,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'name': ?name,
      'order': ?order,
      'resourceType': ?resourceType,
      'type': ?type,
    };
  }

  factory WorkbookTemplateGallery.fromMap(Map<String, dynamic> map) {
    return WorkbookTemplateGallery(
      category: map['category'] == null ? null : map['category'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      order: map['order'] == null ? null : map['order'] as int,
      resourceType: map['resourceType'] == null ? null : map['resourceType'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

