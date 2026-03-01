// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_get_resource_shares_get_resource_shares_args_doc}
/// Arguments for getResourceShares.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_get_resource_shares_get_resource_shares_args_doc}
class GetResourceSharesArgs {
  /// A list of Resource Share IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Resource Share name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The name of resource share.
  final pulumi.Input<String>? resourceShareName;
  /// The owner of resource share, Valid values: `Self` and `OtherAccounts`.
  final pulumi.Input<String> resourceShareOwner;
  /// The status of resource share. Valid values: `Active`,`Deleted` and `Deleting`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetResourceSharesArgs].
  /// [ids] A list of Resource Share IDs.
  /// [nameRegex] A regex string to filter results by Resource Share name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceShareName] The name of resource share.
  /// [resourceShareOwner] The owner of resource share, Valid values: `Self` and `OtherAccounts`.
  /// [status] The status of resource share. Valid values: `Active`,`Deleted` and `Deleting`.
  GetResourceSharesArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? resourceShareName,
    required pulumi.Output<String> resourceShareOwner,
    pulumi.Output<String>? status,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      resourceShareName = pulumi.Input.asOptionalInput<String>(resourceShareName),
      resourceShareOwner = pulumi.Input.asInput<String>(resourceShareOwner),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'resourceShareName': ?resourceShareName,
      'resourceShareOwner': resourceShareOwner,
      'status': ?status,
    };
  }

  factory GetResourceSharesArgs.fromMap(Map<String, dynamic> map) {
    return GetResourceSharesArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      resourceShareName: map['resourceShareName'] == null ? null : pulumi.Output.create<String>(map['resourceShareName'] as String),
      resourceShareOwner: pulumi.Output.create<String>(map['resourceShareOwner'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

