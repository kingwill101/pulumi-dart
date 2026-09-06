// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'workbook_template_gallery_response.dart';
import 'workbook_template_localized_gallery_response.dart';

/// Result data returned by getWorkbookTemplate.
class GetWorkbookTemplateResult {
  /// Information about the author of the workbook template.
  final String? author;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Workbook galleries supported by the template.
  final List<WorkbookTemplateGalleryResponse>? galleries;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Key value pair of localized gallery. Each key is the locale code of languages supported by the Azure portal.
  final Map<String, List<WorkbookTemplateLocalizedGalleryResponse>>? localized;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Priority of the template. Determines which template to open when a workbook gallery is opened in viewer mode.
  final int? priority;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Valid JSON object containing workbook template payload.
  final dynamic templateData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetWorkbookTemplateResult].
  /// [author] Information about the author of the workbook template.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [galleries] Workbook galleries supported by the template.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [localized] Key value pair of localized gallery. Each key is the locale code of languages supported by the Azure portal.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [priority] Priority of the template. Determines which template to open when a workbook gallery is opened in viewer mode.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [templateData] Valid JSON object containing workbook template payload.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetWorkbookTemplateResult({
    this.author,
    this.azureApiVersion,
    this.galleries,
    this.id,
    this.localized,
    this.location,
    this.name,
    this.priority,
    this.systemData,
    this.tags,
    this.templateData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'author': ?author,
      'azureApiVersion': ?azureApiVersion,
      'galleries': ?(() { final guardedValue = galleries; if (guardedValue == null) return null; return pulumi.Input.encodeList<WorkbookTemplateGalleryResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'localized': ?(() { final guardedValue = localized; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<List<WorkbookTemplateLocalizedGalleryResponse>, List<Map<String, dynamic>>>(guardedValue, (value) => pulumi.Input.encodeList<WorkbookTemplateLocalizedGalleryResponse, Map<String, dynamic>>(value, (value) => value.toMap())); })(),
      'location': ?location,
      'name': ?name,
      'priority': ?priority,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'templateData': ?templateData,
      'type': ?type,
    };
  }

  factory GetWorkbookTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetWorkbookTemplateResult(
      author: (() { final guardedValue = map['author']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      galleries: (() { final guardedValue = map['galleries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkbookTemplateGalleryResponse>(guardedValue, (value) => WorkbookTemplateGalleryResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      localized: (() { final guardedValue = map['localized']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<List<WorkbookTemplateLocalizedGalleryResponse>>(guardedValue, (value) => pulumi.Input.decodeList<WorkbookTemplateLocalizedGalleryResponse>(value, (value) => WorkbookTemplateLocalizedGalleryResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      templateData: (() { final guardedValue = map['templateData']; if (guardedValue == null) return null; return guardedValue; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
