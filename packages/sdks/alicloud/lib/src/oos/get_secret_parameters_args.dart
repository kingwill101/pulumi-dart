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
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? secretParameterName,
    pulumi.Output<String>? sortField,
    pulumi.Output<String>? sortOrder,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<bool>? withDecryption,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      secretParameterName = pulumi.Input.asOptionalInput<String>(secretParameterName),
      sortField = pulumi.Input.asOptionalInput<String>(sortField),
      sortOrder = pulumi.Input.asOptionalInput<String>(sortOrder),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      withDecryption = pulumi.Input.asOptionalInput<bool>(withDecryption);

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
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      secretParameterName: map['secretParameterName'] == null ? null : pulumi.Output.create<String>(map['secretParameterName'] as String),
      sortField: map['sortField'] == null ? null : pulumi.Output.create<String>(map['sortField'] as String),
      sortOrder: map['sortOrder'] == null ? null : pulumi.Output.create<String>(map['sortOrder'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      withDecryption: map['withDecryption'] == null ? null : pulumi.Output.create<bool>(map['withDecryption'] as bool),
    );
  }
}

