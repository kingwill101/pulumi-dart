// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gallery information for a workbook template.
class WorkbookTemplateGallery {
  /// Category for the gallery.
  final pulumi.Input<String?>? category;
  /// Name of the workbook template in the gallery.
  final pulumi.Input<String?>? name;
  /// Order of the template within the gallery.
  final pulumi.Input<int?>? order;
  /// Azure resource type supported by the gallery.
  final pulumi.Input<String?>? resourceType;
  /// Type of workbook supported by the workbook template.
  final pulumi.Input<String?>? type;

  /// Creates a new [WorkbookTemplateGallery].
  /// [category] Category for the gallery.
  /// [name] Name of the workbook template in the gallery.
  /// [order] Order of the template within the gallery.
  /// [resourceType] Azure resource type supported by the gallery.
  /// [type] Type of workbook supported by the workbook template.
  const WorkbookTemplateGallery({
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
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
