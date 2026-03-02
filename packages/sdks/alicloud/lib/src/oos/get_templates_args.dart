// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oos_get_templates_get_templates_args_doc}
/// Arguments for getTemplates.
/// {@endtemplate}
/// {@macro pulumi_oos_get_templates_get_templates_args_doc}
class GetTemplatesArgs {
  /// The category of template.
  final pulumi.Input<String>? category;
  /// The creator of the template.
  final pulumi.Input<String>? createdBy;
  /// The template whose creation time is less than or equal to the specified time. The format is: YYYY-MM-DDThh:mm::ssZ.
  final pulumi.Input<String>? createdDate;
  /// Create a template whose time is greater than or equal to the specified time. The format is: YYYY-MM-DDThh:mm:ssZ.
  final pulumi.Input<String>? createdDateAfter;
  /// Is it triggered successfully.
  final pulumi.Input<bool>? hasTrigger;
  /// A list of OOS Template ids. Each element in the list is same as template_name.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter the results by the template_name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The sharing type of the template. Valid values: `Private`, `Public`.
  final pulumi.Input<String>? shareType;
  /// Sort field. Valid values: `TotalExecutionCount`, `Popularity`, `TemplateName` and `CreatedDate`. Default to `TotalExecutionCount`.
  final pulumi.Input<String>? sortField;
  /// Sort order. Valid values: `Ascending`, `Descending`. Default to `Descending`
  final pulumi.Input<String>? sortOrder;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The format of the template. Valid values: `JSON`, `YAML`.
  final pulumi.Input<String>? templateFormat;
  /// The type of OOS Template.
  final pulumi.Input<String>? templateType;

  /// Creates a new [GetTemplatesArgs].
  /// [category] The category of template.
  /// [createdBy] The creator of the template.
  /// [createdDate] The template whose creation time is less than or equal to the specified time. The format is: YYYY-MM-DDThh:mm::ssZ.
  /// [createdDateAfter] Create a template whose time is greater than or equal to the specified time. The format is: YYYY-MM-DDThh:mm:ssZ.
  /// [hasTrigger] Is it triggered successfully.
  /// [ids] A list of OOS Template ids. Each element in the list is same as template_name.
  /// [nameRegex] A regex string to filter the results by the template_name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [shareType] The sharing type of the template. Valid values: `Private`, `Public`.
  /// [sortField] Sort field. Valid values: `TotalExecutionCount`, `Popularity`, `TemplateName` and `CreatedDate`. Default to `TotalExecutionCount`.
  /// [sortOrder] Sort order. Valid values: `Ascending`, `Descending`. Default to `Descending`
  /// [tags] A mapping of tags to assign to the resource.
  /// [templateFormat] The format of the template. Valid values: `JSON`, `YAML`.
  /// [templateType] The type of OOS Template.
  GetTemplatesArgs({
    this.category,
    this.createdBy,
    this.createdDate,
    this.createdDateAfter,
    this.hasTrigger,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.shareType,
    this.sortField,
    this.sortOrder,
    this.tags,
    this.templateFormat,
    this.templateType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'createdBy': ?createdBy,
      'createdDate': ?createdDate,
      'createdDateAfter': ?createdDateAfter,
      'hasTrigger': ?hasTrigger,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'shareType': ?shareType,
      'sortField': ?sortField,
      'sortOrder': ?sortOrder,
      'tags': ?tags,
      'templateFormat': ?templateFormat,
      'templateType': ?templateType,
    };
  }

  factory GetTemplatesArgs.fromMap(Map<String, dynamic> map) {
    return GetTemplatesArgs(
      category: map['category'] == null ? null : (map['category']! as String).input(),
      createdBy: map['createdBy'] == null ? null : (map['createdBy']! as String).input(),
      createdDate: map['createdDate'] == null ? null : (map['createdDate']! as String).input(),
      createdDateAfter: map['createdDateAfter'] == null ? null : (map['createdDateAfter']! as String).input(),
      hasTrigger: map['hasTrigger'] == null ? null : (map['hasTrigger']! as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      shareType: map['shareType'] == null ? null : (map['shareType']! as String).input(),
      sortField: map['sortField'] == null ? null : (map['sortField']! as String).input(),
      sortOrder: map['sortOrder'] == null ? null : (map['sortOrder']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      templateFormat: map['templateFormat'] == null ? null : (map['templateFormat']! as String).input(),
      templateType: map['templateType'] == null ? null : (map['templateType']! as String).input(),
    );
  }
}

