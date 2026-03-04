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
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameterName: (() {
        final guardedValue = map['parameterName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sortField: (() {
        final guardedValue = map['sortField'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sortOrder: (() {
        final guardedValue = map['sortOrder'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
