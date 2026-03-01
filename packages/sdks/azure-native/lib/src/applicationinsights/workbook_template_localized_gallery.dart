// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workbook_template_gallery.dart';

/// Localized template data and gallery information.
class WorkbookTemplateLocalizedGallery {
  /// Workbook galleries supported by the template.
  final List<WorkbookTemplateGallery>? galleries;
  /// Valid JSON object containing workbook template payload.
  final dynamic templateData;

  /// Creates a new [WorkbookTemplateLocalizedGallery].
  /// [galleries] Workbook galleries supported by the template.
  /// [templateData] Valid JSON object containing workbook template payload.
  WorkbookTemplateLocalizedGallery({
    this.galleries,
    this.templateData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'galleries': ?galleries == null ? null : pulumi.Input.encodeList<WorkbookTemplateGallery, Map<String, dynamic>>(galleries!, (value) => value.toMap()),
      'templateData': ?templateData,
    };
  }

  factory WorkbookTemplateLocalizedGallery.fromMap(Map<String, dynamic> map) {
    return WorkbookTemplateLocalizedGallery(
      galleries: map['galleries'] == null ? null : pulumi.Input.decodeList<WorkbookTemplateGallery>(map['galleries'], (value) => WorkbookTemplateGallery.fromMap((value as Map).cast<String, dynamic>())),
      templateData: map['templateData'] == null ? null : map['templateData'],
    );
  }
}

