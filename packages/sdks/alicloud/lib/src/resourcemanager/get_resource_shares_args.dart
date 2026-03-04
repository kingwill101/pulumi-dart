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
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.resourceShareName,
    required this.resourceShareOwner,
    this.status,
  });

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
      resourceShareName: (() {
        final guardedValue = map['resourceShareName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceShareOwner: pulumi.Input.fromValue(
        map['resourceShareOwner'] as String,
      ),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
