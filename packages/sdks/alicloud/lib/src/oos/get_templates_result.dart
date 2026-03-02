// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_templates_template.dart';

/// Result data returned by getTemplates.
class GetTemplatesResult {
  final String? category;
  final String? createdBy;
  final String? createdDate;
  final String? createdDateAfter;
  final bool? hasTrigger;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of OOS Template ids. Each element in the list is same as template_name.
  final List<String> ids;
  final String? nameRegex;
  /// (Available in v1.114.0+) A list of OOS Template names.
  final List<String> names;
  final String? outputFile;
  final String? shareType;
  final String? sortField;
  final String? sortOrder;
  final Map<String, String>? tags;
  final String? templateFormat;
  final String? templateType;
  /// A list of OOS Templates. Each element contains the following attributes:
  final List<GetTemplatesTemplate> templates;

  /// Creates a new [GetTemplatesResult].
  /// [category] Optional.
  /// [createdBy] Optional.
  /// [createdDate] Optional.
  /// [createdDateAfter] Optional.
  /// [hasTrigger] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of OOS Template ids. Each element in the list is same as template_name.
  /// [nameRegex] Optional.
  /// [names] (Available in v1.114.0+) A list of OOS Template names.
  /// [outputFile] Optional.
  /// [shareType] Optional.
  /// [sortField] Optional.
  /// [sortOrder] Optional.
  /// [tags] Optional.
  /// [templateFormat] Optional.
  /// [templateType] Optional.
  /// [templates] A list of OOS Templates. Each element contains the following attributes:
  GetTemplatesResult({
    this.category,
    this.createdBy,
    this.createdDate,
    this.createdDateAfter,
    this.hasTrigger,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.shareType,
    this.sortField,
    this.sortOrder,
    this.tags,
    this.templateFormat,
    this.templateType,
    required this.templates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'createdBy': ?createdBy,
      'createdDate': ?createdDate,
      'createdDateAfter': ?createdDateAfter,
      'hasTrigger': ?hasTrigger,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'shareType': ?shareType,
      'sortField': ?sortField,
      'sortOrder': ?sortOrder,
      'tags': ?tags,
      'templateFormat': ?templateFormat,
      'templateType': ?templateType,
      'templates': pulumi.Input.encodeList<GetTemplatesTemplate, Map<String, dynamic>>(templates, (value) => value.toMap()),
    };
  }

  factory GetTemplatesResult.fromMap(Map<String, dynamic> map) {
    return GetTemplatesResult(
      category: map['category'] == null ? null : map['category']! as String,
      createdBy: map['createdBy'] == null ? null : map['createdBy']! as String,
      createdDate: map['createdDate'] == null ? null : map['createdDate']! as String,
      createdDateAfter: map['createdDateAfter'] == null ? null : map['createdDateAfter']! as String,
      hasTrigger: map['hasTrigger'] == null ? null : map['hasTrigger']! as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      shareType: map['shareType'] == null ? null : map['shareType']! as String,
      sortField: map['sortField'] == null ? null : map['sortField']! as String,
      sortOrder: map['sortOrder'] == null ? null : map['sortOrder']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      templateFormat: map['templateFormat'] == null ? null : map['templateFormat']! as String,
      templateType: map['templateType'] == null ? null : map['templateType']! as String,
      templates: pulumi.Input.decodeList<GetTemplatesTemplate>(map['templates'], (value) => GetTemplatesTemplate.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

