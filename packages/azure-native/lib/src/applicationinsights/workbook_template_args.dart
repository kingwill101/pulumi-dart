// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workbook_template_gallery.dart';
import 'workbook_template_localized_gallery.dart';

/// {@template pulumi_applicationinsights_workbook_template_args_doc}
/// The set of arguments for WorkbookTemplate.
/// {@endtemplate}
/// {@macro pulumi_applicationinsights_workbook_template_args_doc}
class WorkbookTemplateArgs {
  /// Information about the author of the workbook template.
  final pulumi.Input<String>? author;
  /// Workbook galleries supported by the template.
  final pulumi.Input<List<WorkbookTemplateGallery>> galleries;
  /// Key value pair of localized gallery. Each key is the locale code of languages supported by the Azure portal.
  final pulumi.Input<Map<String, List<WorkbookTemplateLocalizedGallery>>>? localized;
  /// Resource location
  final pulumi.Input<String>? location;
  /// Priority of the template. Determines which template to open when a workbook gallery is opened in viewer mode.
  final pulumi.Input<int>? priority;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Application Insights component resource.
  final pulumi.Input<String>? resourceName;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;
  /// Valid JSON object containing workbook template payload.
  final pulumi.Input<dynamic> templateData;

  /// Creates a new [WorkbookTemplateArgs].
  /// [author] Information about the author of the workbook template.
  /// [galleries] Workbook galleries supported by the template.
  /// [localized] Key value pair of localized gallery. Each key is the locale code of languages supported by the Azure portal.
  /// [location] Resource location
  /// [priority] Priority of the template. Determines which template to open when a workbook gallery is opened in viewer mode.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the Application Insights component resource.
  /// [tags] Resource tags
  /// [templateData] Valid JSON object containing workbook template payload.
  WorkbookTemplateArgs({
    String? author,
    required List<WorkbookTemplateGallery> galleries,
    Map<String, List<WorkbookTemplateLocalizedGallery>>? localized,
    String? location,
    int? priority,
    required String resourceGroupName,
    String? resourceName,
    Map<String, String>? tags,
    required dynamic templateData,
  }) :
      author = pulumi.Input.asOptionalInput<String>(author),
      galleries = pulumi.Input.asInput<List<WorkbookTemplateGallery>>(galleries),
      localized = pulumi.Input.asOptionalInput<Map<String, List<WorkbookTemplateLocalizedGallery>>>(localized),
      location = pulumi.Input.asOptionalInput<String>(location),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asOptionalInput<String>(resourceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      templateData = pulumi.Input.asInput<dynamic>(templateData);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'author': ?author,
      'galleries': pulumi.Input.mapInputValue<List<WorkbookTemplateGallery>, List<Map<String, dynamic>>>(galleries, (value) => pulumi.Input.encodeList<WorkbookTemplateGallery, Map<String, dynamic>>(value, (value) => value.toMap())),
      'localized': ?pulumi.Input.mapOptionalInputValue<Map<String, List<WorkbookTemplateLocalizedGallery>>, Map<String, List<Map<String, dynamic>>>>(localized, (value) => pulumi.Input.encodeMapValues<List<WorkbookTemplateLocalizedGallery>, List<Map<String, dynamic>>>(value, (value) => pulumi.Input.encodeList<WorkbookTemplateLocalizedGallery, Map<String, dynamic>>(value, (value) => value.toMap()))),
      'location': ?location,
      'priority': ?priority,
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'tags': ?tags,
      'templateData': templateData,
    };
  }

  factory WorkbookTemplateArgs.fromMap(Map<String, dynamic> map) {
    return WorkbookTemplateArgs(
      author: map['author'] == null ? null : map['author'] as String,
      galleries: pulumi.Input.decodeList<WorkbookTemplateGallery>(map['galleries'], (value) => WorkbookTemplateGallery.fromMap((value as Map).cast<String, dynamic>())),
      localized: map['localized'] == null ? null : pulumi.Input.decodeMapValues<List<WorkbookTemplateLocalizedGallery>>(map['localized'], (value) => pulumi.Input.decodeList<WorkbookTemplateLocalizedGallery>(value, (value) => WorkbookTemplateLocalizedGallery.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : map['location'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] == null ? null : map['resourceName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      templateData: map['templateData'],
    );
  }
}

