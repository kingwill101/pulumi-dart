// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eflo_get_vpds_get_vpds_args_doc}
/// Arguments for getVpds.
/// {@endtemplate}
/// {@macro pulumi_eflo_get_vpds_get_vpds_args_doc}
class GetVpdsArgs {
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Vpd IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Group Metric Rule name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The Resource group id
  final pulumi.Input<String>? resourceGroupId;
  /// The Vpd status. Valid values: `Available`, `Not Available`, `Executing`, `Deleting`,
  final pulumi.Input<String>? status;
  /// The id of the vpd.
  final pulumi.Input<String>? vpdId;
  /// The Name of the VPD.
  final pulumi.Input<String>? vpdName;

  /// Creates a new [GetVpdsArgs].
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Vpd IDs.
  /// [nameRegex] A regex string to filter results by Group Metric Rule name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [resourceGroupId] The Resource group id
  /// [status] The Vpd status. Valid values: `Available`, `Not Available`, `Executing`, `Deleting`,
  /// [vpdId] The id of the vpd.
  /// [vpdName] The Name of the VPD.
  GetVpdsArgs({
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.resourceGroupId,
    this.status,
    this.vpdId,
    this.vpdName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'vpdId': ?vpdId,
      'vpdName': ?vpdName,
    };
  }

  factory GetVpdsArgs.fromMap(Map<String, dynamic> map) {
    return GetVpdsArgs(
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails'] as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber'] as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize'] as int).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      vpdId: map['vpdId'] == null ? null : (map['vpdId'] as String).input(),
      vpdName: map['vpdName'] == null ? null : (map['vpdName'] as String).input(),
    );
  }
}

