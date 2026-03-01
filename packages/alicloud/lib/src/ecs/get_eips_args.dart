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
    String? addressName,
    String? associatedInstanceId,
    String? associatedInstanceType,
    bool? dryRun,
    bool? enableDetails,
    List<String>? ids,
    bool? includeReservationData,
    String? ipAddress,
    List<String>? ipAddresses,
    String? isp,
    String? lockReason,
    String? nameRegex,
    String? outputFile,
    String? paymentType,
    String? resourceGroupId,
    String? segmentInstanceId,
    String? status,
    Map<String, String>? tags,
  }) :
      addressName = pulumi.Input.asOptionalInput<String>(addressName),
      associatedInstanceId = pulumi.Input.asOptionalInput<String>(associatedInstanceId),
      associatedInstanceType = pulumi.Input.asOptionalInput<String>(associatedInstanceType),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      includeReservationData = pulumi.Input.asOptionalInput<bool>(includeReservationData),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      ipAddresses = pulumi.Input.asOptionalInput<List<String>>(ipAddresses),
      isp = pulumi.Input.asOptionalInput<String>(isp),
      lockReason = pulumi.Input.asOptionalInput<String>(lockReason),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      segmentInstanceId = pulumi.Input.asOptionalInput<String>(segmentInstanceId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      addressName: map['addressName'] == null ? null : map['addressName'] as String,
      associatedInstanceId: map['associatedInstanceId'] == null ? null : map['associatedInstanceId'] as String,
      associatedInstanceType: map['associatedInstanceType'] == null ? null : map['associatedInstanceType'] as String,
      dryRun: map['dryRun'] == null ? null : map['dryRun'] as bool,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      includeReservationData: map['includeReservationData'] == null ? null : map['includeReservationData'] as bool,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      ipAddresses: map['ipAddresses'] == null ? null : (map['ipAddresses'] as List).cast<String>(),
      isp: map['isp'] == null ? null : map['isp'] as String,
      lockReason: map['lockReason'] == null ? null : map['lockReason'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      paymentType: map['paymentType'] == null ? null : map['paymentType'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      segmentInstanceId: map['segmentInstanceId'] == null ? null : map['segmentInstanceId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

