// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oos_get_secret_parameters_get_secret_parameters_args_doc}
/// Arguments for getSecretParameters.
/// {@endtemplate}
/// {@macro pulumi_oos_get_secret_parameters_get_secret_parameters_args_doc}
class GetSecretParametersArgs {
  /// Whether to query the detailed list of resource attributes. Default value: `false`.
  final pulumi.Input<bool>? enableDetails;

  /// A list of Secret Parameter IDs.
  final pulumi.Input<List<String>>? ids;

  /// A regex string to filter results by Secret Parameter name.
  final pulumi.Input<String>? nameRegex;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// The ID of the Resource Group.
  final pulumi.Input<String>? resourceGroupId;

  /// The name of the Secret Parameter.
  final pulumi.Input<String>? secretParameterName;

  /// The field used to sort the query results. Valid values: `Name`, `CreatedDate`.
  final pulumi.Input<String>? sortField;

  /// The order in which the entries are sorted. Default value: `Descending`. Valid values: `Ascending`, `Descending`.
  final pulumi.Input<String>? sortOrder;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Specifies whether to decrypt the parameter value. Default value: `false`. **Note:** `with_decryption` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<bool>? withDecryption;

  /// Creates a new [GetSecretParametersArgs].
  /// [enableDetails] Whether to query the detailed list of resource attributes. Default value: `false`.
  /// [ids] A list of Secret Parameter IDs.
  /// [nameRegex] A regex string to filter results by Secret Parameter name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceGroupId] The ID of the Resource Group.
  /// [secretParameterName] The name of the Secret Parameter.
  /// [sortField] The field used to sort the query results. Valid values: `Name`, `CreatedDate`.
  /// [sortOrder] The order in which the entries are sorted. Default value: `Descending`. Valid values: `Ascending`, `Descending`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [withDecryption] Specifies whether to decrypt the parameter value. Default value: `false`. **Note:** `with_decryption` takes effect only if `enable_details` is set to `true`.
  GetSecretParametersArgs({
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.resourceGroupId,
    this.secretParameterName,
    this.sortField,
    this.sortOrder,
    this.tags,
    this.withDecryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'secretParameterName': ?secretParameterName,
      'sortField': ?sortField,
      'sortOrder': ?sortOrder,
      'tags': ?tags,
      'withDecryption': ?withDecryption,
    };
  }

  factory GetSecretParametersArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretParametersArgs(
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
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secretParameterName: (() {
        final guardedValue = map['secretParameterName'];
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
      withDecryption: (() {
        final guardedValue = map['withDecryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
