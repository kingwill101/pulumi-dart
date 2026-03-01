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
    pulumi.Output<String>? category,
    pulumi.Output<String>? createdBy,
    pulumi.Output<String>? createdDate,
    pulumi.Output<String>? createdDateAfter,
    pulumi.Output<bool>? hasTrigger,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? shareType,
    pulumi.Output<String>? sortField,
    pulumi.Output<String>? sortOrder,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? templateFormat,
    pulumi.Output<String>? templateType,
  }) :
      category = pulumi.Input.asOptionalInput<String>(category),
      createdBy = pulumi.Input.asOptionalInput<String>(createdBy),
      createdDate = pulumi.Input.asOptionalInput<String>(createdDate),
      createdDateAfter = pulumi.Input.asOptionalInput<String>(createdDateAfter),
      hasTrigger = pulumi.Input.asOptionalInput<bool>(hasTrigger),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      shareType = pulumi.Input.asOptionalInput<String>(shareType),
      sortField = pulumi.Input.asOptionalInput<String>(sortField),
      sortOrder = pulumi.Input.asOptionalInput<String>(sortOrder),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      templateFormat = pulumi.Input.asOptionalInput<String>(templateFormat),
      templateType = pulumi.Input.asOptionalInput<String>(templateType);

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
      category: map['category'] == null ? null : pulumi.Output.create<String>(map['category'] as String),
      createdBy: map['createdBy'] == null ? null : pulumi.Output.create<String>(map['createdBy'] as String),
      createdDate: map['createdDate'] == null ? null : pulumi.Output.create<String>(map['createdDate'] as String),
      createdDateAfter: map['createdDateAfter'] == null ? null : pulumi.Output.create<String>(map['createdDateAfter'] as String),
      hasTrigger: map['hasTrigger'] == null ? null : pulumi.Output.create<bool>(map['hasTrigger'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      shareType: map['shareType'] == null ? null : pulumi.Output.create<String>(map['shareType'] as String),
      sortField: map['sortField'] == null ? null : pulumi.Output.create<String>(map['sortField'] as String),
      sortOrder: map['sortOrder'] == null ? null : pulumi.Output.create<String>(map['sortOrder'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      templateFormat: map['templateFormat'] == null ? null : pulumi.Output.create<String>(map['templateFormat'] as String),
      templateType: map['templateType'] == null ? null : pulumi.Output.create<String>(map['templateType'] as String),
    );
  }
}

