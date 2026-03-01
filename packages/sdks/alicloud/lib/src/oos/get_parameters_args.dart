// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oos_get_parameters_get_parameters_args_doc}
/// Arguments for getParameters.
/// {@endtemplate}
/// {@macro pulumi_oos_get_parameters_get_parameters_args_doc}
class GetParametersArgs {
  /// Whether to query the detailed list of resource attributes. Default value: `false`.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Parameter IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Parameter name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The name of the common parameter. You can enter a keyword to query parameter names in fuzzy match mode.
  final pulumi.Input<String>? parameterName;
  /// The ID of the Resource Group.
  final pulumi.Input<String>? resourceGroupId;
  /// The field used to sort the query results. Valid values: `Name`, `CreatedDate`.
  final pulumi.Input<String>? sortField;
  /// The order in which the entries are sorted. Default value: `Descending`. Valid values: `Ascending`, `Descending`.
  final pulumi.Input<String>? sortOrder;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The data type of the common parameter. Valid values: `String`, `StringList`.
  final pulumi.Input<String>? type;

  /// Creates a new [GetParametersArgs].
  /// [enableDetails] Whether to query the detailed list of resource attributes. Default value: `false`.
  /// [ids] A list of Parameter IDs.
  /// [nameRegex] A regex string to filter results by Parameter name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [parameterName] The name of the common parameter. You can enter a keyword to query parameter names in fuzzy match mode.
  /// [resourceGroupId] The ID of the Resource Group.
  /// [sortField] The field used to sort the query results. Valid values: `Name`, `CreatedDate`.
  /// [sortOrder] The order in which the entries are sorted. Default value: `Descending`. Valid values: `Ascending`, `Descending`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [type] The data type of the common parameter. Valid values: `String`, `StringList`.
  GetParametersArgs({
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? parameterName,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? sortField,
    pulumi.Output<String>? sortOrder,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? type,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      parameterName = pulumi.Input.asOptionalInput<String>(parameterName),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      sortField = pulumi.Input.asOptionalInput<String>(sortField),
      sortOrder = pulumi.Input.asOptionalInput<String>(sortOrder),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'parameterName': ?parameterName,
      'resourceGroupId': ?resourceGroupId,
      'sortField': ?sortField,
      'sortOrder': ?sortOrder,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetParametersArgs.fromMap(Map<String, dynamic> map) {
    return GetParametersArgs(
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      parameterName: map['parameterName'] == null ? null : pulumi.Output.create<String>(map['parameterName'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      sortField: map['sortField'] == null ? null : pulumi.Output.create<String>(map['sortField'] as String),
      sortOrder: map['sortOrder'] == null ? null : pulumi.Output.create<String>(map['sortOrder'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

