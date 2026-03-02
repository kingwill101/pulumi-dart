// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gallery information for a workbook template.
class WorkbookTemplateGalleryResponse {
  /// Category for the gallery.
  final pulumi.Input<String>? category;
  /// Name of the workbook template in the gallery.
  final pulumi.Input<String>? name;
  /// Order of the template within the gallery.
  final pulumi.Input<int>? order;
  /// Azure resource type supported by the gallery.
  final pulumi.Input<String>? resourceType;
  /// Type of workbook supported by the workbook template.
  final pulumi.Input<String>? type;

  /// Creates a new [WorkbookTemplateGalleryResponse].
  /// [category] Category for the gallery.
  /// [name] Name of the workbook template in the gallery.
  /// [order] Order of the template within the gallery.
  /// [resourceType] Azure resource type supported by the gallery.
  /// [type] Type of workbook supported by the workbook template.
  WorkbookTemplateGalleryResponse({
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

  factory WorkbookTemplateGalleryResponse.fromMap(Map<String, dynamic> map) {
    return WorkbookTemplateGalleryResponse(
      category: map['category'] == null ? null : (map['category'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      order: map['order'] == null ? null : (map['order'] as int).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

