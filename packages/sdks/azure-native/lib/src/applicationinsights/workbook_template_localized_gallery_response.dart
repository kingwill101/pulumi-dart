// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workbook_template_gallery_response.dart';

/// Localized template data and gallery information.
class WorkbookTemplateLocalizedGalleryResponse {
  /// Workbook galleries supported by the template.
  final pulumi.Input<List<WorkbookTemplateGalleryResponse>>? galleries;

  /// Valid JSON object containing workbook template payload.
  final pulumi.Input<dynamic>? templateData;

  /// Creates a new [WorkbookTemplateLocalizedGalleryResponse].
  /// [galleries] Workbook galleries supported by the template.
  /// [templateData] Valid JSON object containing workbook template payload.
  WorkbookTemplateLocalizedGalleryResponse({this.galleries, this.templateData});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'galleries':
          ?pulumi.Input.mapOptionalInputValue<
            List<WorkbookTemplateGalleryResponse>,
            List<Map<String, dynamic>>
          >(
            galleries,
            (value) =>
                pulumi.Input.encodeList<
                  WorkbookTemplateGalleryResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'templateData': ?templateData,
    };
  }

  factory WorkbookTemplateLocalizedGalleryResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return WorkbookTemplateLocalizedGalleryResponse(
      galleries: (() {
        final guardedValue = map['galleries'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<WorkbookTemplateGalleryResponse>(
            guardedValue,
            (value) => WorkbookTemplateGalleryResponse.fromMap(
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
