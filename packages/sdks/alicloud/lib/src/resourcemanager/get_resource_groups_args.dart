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
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
  });

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
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails']! as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

