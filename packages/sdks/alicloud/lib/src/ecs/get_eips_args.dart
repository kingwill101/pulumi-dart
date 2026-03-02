// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_eips_get_eips_args_doc}
/// Arguments for getEips.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_eips_get_eips_args_doc}
class GetEipsArgs {
  final pulumi.Input<String>? addressName;
  final pulumi.Input<String>? associatedInstanceId;
  final pulumi.Input<String>? associatedInstanceType;
  final pulumi.Input<bool>? dryRun;
  final pulumi.Input<bool>? enableDetails;
  /// A list of EIP IDs.
  final pulumi.Input<List<String>>? ids;
  final pulumi.Input<bool>? includeReservationData;
  /// Public IP Address of the the EIP.
  final pulumi.Input<String>? ipAddress;
  /// A list of EIP public IP addresses.
  final pulumi.Input<List<String>>? ipAddresses;
  final pulumi.Input<String>? isp;
  final pulumi.Input<String>? lockReason;
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<String>? paymentType;
  /// The Id of resource group which the eips belongs.
  final pulumi.Input<String>? resourceGroupId;
  final pulumi.Input<String>? segmentInstanceId;
  /// EIP status. Possible values are: `Associating`, `Unassociating`, `InUse` and `Available`.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetEipsArgs].
  /// [addressName] Optional.
  /// [associatedInstanceId] Optional.
  /// [associatedInstanceType] Optional.
  /// [dryRun] Optional.
  /// [enableDetails] Optional.
  /// [ids] A list of EIP IDs.
  /// [includeReservationData] Optional.
  /// [ipAddress] Public IP Address of the the EIP.
  /// [ipAddresses] A list of EIP public IP addresses.
  /// [isp] Optional.
  /// [lockReason] Optional.
  /// [nameRegex] Optional.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [paymentType] Optional.
  /// [resourceGroupId] The Id of resource group which the eips belongs.
  /// [segmentInstanceId] Optional.
  /// [status] EIP status. Possible values are: `Associating`, `Unassociating`, `InUse` and `Available`.
  /// [tags] A mapping of tags to assign to the resource.
  GetEipsArgs({
    this.addressName,
    this.associatedInstanceId,
    this.associatedInstanceType,
    this.dryRun,
    this.enableDetails,
    this.ids,
    this.includeReservationData,
    this.ipAddress,
    this.ipAddresses,
    this.isp,
    this.lockReason,
    this.nameRegex,
    this.outputFile,
    this.paymentType,
    this.resourceGroupId,
    this.segmentInstanceId,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressName': ?addressName,
      'associatedInstanceId': ?associatedInstanceId,
      'associatedInstanceType': ?associatedInstanceType,
      'dryRun': ?dryRun,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'includeReservationData': ?includeReservationData,
      'ipAddress': ?ipAddress,
      'ipAddresses': ?ipAddresses,
      'isp': ?isp,
      'lockReason': ?lockReason,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'paymentType': ?paymentType,
      'resourceGroupId': ?resourceGroupId,
      'segmentInstanceId': ?segmentInstanceId,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetEipsArgs.fromMap(Map<String, dynamic> map) {
    return GetEipsArgs(
      addressName: map['addressName'] == null ? null : (map['addressName']! as String).input(),
      associatedInstanceId: map['associatedInstanceId'] == null ? null : (map['associatedInstanceId']! as String).input(),
      associatedInstanceType: map['associatedInstanceType'] == null ? null : (map['associatedInstanceType']! as String).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun']! as bool).input(),
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails']! as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      includeReservationData: map['includeReservationData'] == null ? null : (map['includeReservationData']! as bool).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress']! as String).input(),
      ipAddresses: map['ipAddresses'] == null ? null : ((map['ipAddresses']! as List).cast<String>()).input(),
      isp: map['isp'] == null ? null : (map['isp']! as String).input(),
      lockReason: map['lockReason'] == null ? null : (map['lockReason']! as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      segmentInstanceId: map['segmentInstanceId'] == null ? null : (map['segmentInstanceId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

