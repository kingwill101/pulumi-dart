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
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.parameterName,
    this.resourceGroupId,
    this.sortField,
    this.sortOrder,
    this.tags,
    this.type,
  });

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
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails'] as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      parameterName: map['parameterName'] == null ? null : (map['parameterName'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      sortField: map['sortField'] == null ? null : (map['sortField'] as String).input(),
      sortOrder: map['sortOrder'] == null ? null : (map['sortOrder'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

