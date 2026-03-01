// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_get_resource_groups_get_resource_groups_args_doc}
/// Arguments for getResourceGroups.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_get_resource_groups_get_resource_groups_args_doc}
class GetResourceGroupsArgs {
  /// Set it to true can output more details. Default value: `false`.
  final pulumi.Input<bool>? enableDetails;
  /// A list of resource group IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by resource group identifier.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the resource group. Valid values: `Creating`, `Deleted`, `Deleting`, `OK` and `PendingDelete`. **NOTE:** From version 1.114.0, `status` can be set to `Deleting`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetResourceGroupsArgs].
  /// [enableDetails] Set it to true can output more details. Default value: `false`.
  /// [ids] A list of resource group IDs.
  /// [nameRegex] A regex string to filter results by resource group identifier.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the resource group. Valid values: `Creating`, `Deleted`, `Deleting`, `OK` and `PendingDelete`. **NOTE:** From version 1.114.0, `status` can be set to `Deleting`.
  GetResourceGroupsArgs({
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetResourceGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetResourceGroupsArgs(
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

