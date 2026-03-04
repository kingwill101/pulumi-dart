// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workbook_template_gallery.dart';

/// Localized template data and gallery information.
class WorkbookTemplateLocalizedGallery {
  /// Workbook galleries supported by the template.
  final pulumi.Input<List<WorkbookTemplateGallery>>? galleries;

  /// Valid JSON object containing workbook template payload.
  final pulumi.Input<dynamic>? templateData;

  /// Creates a new [WorkbookTemplateLocalizedGallery].
  /// [galleries] Workbook galleries supported by the template.
  /// [templateData] Valid JSON object containing workbook template payload.
  WorkbookTemplateLocalizedGallery({this.galleries, this.templateData});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'galleries':
          ?pulumi.Input.mapOptionalInputValue<
            List<WorkbookTemplateGallery>,
            List<Map<String, dynamic>>
          >(
            galleries,
            (value) =>
                pulumi.Input.encodeList<
                  WorkbookTemplateGallery,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'templateData': ?templateData,
    };
  }

  factory WorkbookTemplateLocalizedGallery.fromMap(Map<String, dynamic> map) {
    return WorkbookTemplateLocalizedGallery(
      galleries: (() {
        final guardedValue = map['galleries'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<WorkbookTemplateGallery>(
            guardedValue,
            (value) => WorkbookTemplateGallery.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      templateData: (() {
        final guardedValue = map['templateData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
    );
  }
}
