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
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails'] as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      secretParameterName: map['secretParameterName'] == null ? null : (map['secretParameterName'] as String).input(),
      sortField: map['sortField'] == null ? null : (map['sortField'] as String).input(),
      sortOrder: map['sortOrder'] == null ? null : (map['sortOrder'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      withDecryption: map['withDecryption'] == null ? null : (map['withDecryption'] as bool).input(),
    );
  }
}

