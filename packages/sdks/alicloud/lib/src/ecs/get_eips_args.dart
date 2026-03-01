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
    pulumi.Output<String>? addressName,
    pulumi.Output<String>? associatedInstanceId,
    pulumi.Output<String>? associatedInstanceType,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<bool>? includeReservationData,
    pulumi.Output<String>? ipAddress,
    pulumi.Output<List<String>>? ipAddresses,
    pulumi.Output<String>? isp,
    pulumi.Output<String>? lockReason,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? paymentType,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? segmentInstanceId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
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
      addressName: map['addressName'] == null ? null : pulumi.Output.create<String>(map['addressName'] as String),
      associatedInstanceId: map['associatedInstanceId'] == null ? null : pulumi.Output.create<String>(map['associatedInstanceId'] as String),
      associatedInstanceType: map['associatedInstanceType'] == null ? null : pulumi.Output.create<String>(map['associatedInstanceType'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      includeReservationData: map['includeReservationData'] == null ? null : pulumi.Output.create<bool>(map['includeReservationData'] as bool),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      ipAddresses: map['ipAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['ipAddresses'] as List).cast<String>()),
      isp: map['isp'] == null ? null : pulumi.Output.create<String>(map['isp'] as String),
      lockReason: map['lockReason'] == null ? null : pulumi.Output.create<String>(map['lockReason'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      segmentInstanceId: map['segmentInstanceId'] == null ? null : pulumi.Output.create<String>(map['segmentInstanceId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

