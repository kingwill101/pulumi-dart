// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workbook_template_gallery_response.dart';
import 'workbook_template_localized_gallery_response.dart';

/// Result data returned by getWorkbookTemplate.
class GetWorkbookTemplateResult {
  /// Information about the author of the workbook template.
  final String? author;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Workbook galleries supported by the template.
  final List<WorkbookTemplateGalleryResponse> galleries;
  /// Azure resource Id
  final String id;
  /// Key value pair of localized gallery. Each key is the locale code of languages supported by the Azure portal.
  final Map<String, List<WorkbookTemplateLocalizedGalleryResponse>>? localized;
  /// Resource location
  final String location;
  /// Azure resource name.
  final String name;
  /// Priority of the template. Determines which template to open when a workbook gallery is opened in viewer mode.
  final int? priority;
  /// Resource tags
  final Map<String, String>? tags;
  /// Valid JSON object containing workbook template payload.
  final dynamic templateData;
  /// Azure resource type
  final String type;

  /// Creates a new [GetWorkbookTemplateResult].
  /// [author] Information about the author of the workbook template.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [galleries] Workbook galleries supported by the template.
  /// [id] Azure resource Id
  /// [localized] Key value pair of localized gallery. Each key is the locale code of languages supported by the Azure portal.
  /// [location] Resource location
  /// [name] Azure resource name.
  /// [priority] Priority of the template. Determines which template to open when a workbook gallery is opened in viewer mode.
  /// [tags] Resource tags
  /// [templateData] Valid JSON object containing workbook template payload.
  /// [type] Azure resource type
  const GetWorkbookTemplateResult({
    this.author,
    required this.azureApiVersion,
    required this.galleries,
    required this.id,
    this.localized,
    required this.location,
    required this.name,
    this.priority,
    this.tags,
    required this.templateData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'author': ?author,
      'azureApiVersion': azureApiVersion,
      'galleries': pulumi.Input.encodeList<WorkbookTemplateGalleryResponse, Map<String, dynamic>>(galleries, (value) => value.toMap()),
      'id': id,
      'localized': ?(() { final guardedValue = localized; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<List<WorkbookTemplateLocalizedGalleryResponse>, List<Map<String, dynamic>>>(guardedValue, (value) => pulumi.Input.encodeList<WorkbookTemplateLocalizedGalleryResponse, Map<String, dynamic>>(value, (value) => value.toMap())); })(),
      'location': location,
      'name': name,
      'priority': ?priority,
      'tags': ?tags,
      'templateData': templateData,
      'type': type,
    };
  }

  factory GetWorkbookTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetWorkbookTemplateResult(
      author: (() { final guardedValue = map['author']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      galleries: pulumi.Input.decodeList<WorkbookTemplateGalleryResponse>(map['galleries']!, (value) => WorkbookTemplateGalleryResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      localized: (() { final guardedValue = map['localized']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<List<WorkbookTemplateLocalizedGalleryResponse>>(guardedValue, (value) => pulumi.Input.decodeList<WorkbookTemplateLocalizedGalleryResponse>(value, (value) => WorkbookTemplateLocalizedGalleryResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: map['location'] as String,
      name: map['name'] as String,
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return guardedValue as int; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      templateData: map['templateData'],
      type: map['type'] as String,
    );
  }
}

