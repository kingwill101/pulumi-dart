// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_eip_addresses_get_eip_addresses_args_doc}
/// Arguments for getEipAddresses.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_eip_addresses_get_eip_addresses_args_doc}
class GetEipAddressesArgs {
  /// The eip name.
  final pulumi.Input<String>? addressName;
  /// The associated instance id.
  final pulumi.Input<String>? associatedInstanceId;
  /// The associated instance type.
  final pulumi.Input<String>? associatedInstanceType;
  /// The dry run.
  final pulumi.Input<bool>? dryRun;
  /// Default to `true`. Set it to `false` can hide the `tags` to output.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Address IDs.
  final pulumi.Input<List<String>>? ids;
  /// The include reservation data. Valid values: `BGP` and `BGP_PRO`.
  final pulumi.Input<bool>? includeReservationData;
  /// The eip address.
  final pulumi.Input<String>? ipAddress;
  final pulumi.Input<List<String>>? ipAddresses;
  /// The Internet service provider (ISP). Valid values `BGP` and `BGP_PRO`.
  final pulumi.Input<String>? isp;
  /// The lock reason.
  final pulumi.Input<String>? lockReason;
  /// A regex string to filter results by Address name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The billing method of the EIP. Valid values: `Subscription` and `PayAsYouGo`.
  final pulumi.Input<String>? paymentType;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The IDs of the contiguous EIPs.  This value is returned only when contiguous EIPs are specified.
  final pulumi.Input<String>? segmentInstanceId;
  /// The status of the EIP. Valid values:  `Associating`: The EIP is being associated. `Unassociating`: The EIP is being disassociated. `InUse`: The EIP is allocated. `Available`:The EIP is available.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetEipAddressesArgs].
  /// [addressName] The eip name.
  /// [associatedInstanceId] The associated instance id.
  /// [associatedInstanceType] The associated instance type.
  /// [dryRun] The dry run.
  /// [enableDetails] Default to `true`. Set it to `false` can hide the `tags` to output.
  /// [ids] A list of Address IDs.
  /// [includeReservationData] The include reservation data. Valid values: `BGP` and `BGP_PRO`.
  /// [ipAddress] The eip address.
  /// [ipAddresses] Optional.
  /// [isp] The Internet service provider (ISP). Valid values `BGP` and `BGP_PRO`.
  /// [lockReason] The lock reason.
  /// [nameRegex] A regex string to filter results by Address name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [paymentType] The billing method of the EIP. Valid values: `Subscription` and `PayAsYouGo`.
  /// [resourceGroupId] The ID of the resource group.
  /// [segmentInstanceId] The IDs of the contiguous EIPs.  This value is returned only when contiguous EIPs are specified.
  /// [status] The status of the EIP. Valid values:  `Associating`: The EIP is being associated. `Unassociating`: The EIP is being disassociated. `InUse`: The EIP is allocated. `Available`:The EIP is available.
  /// [tags] A mapping of tags to assign to the resource.
  GetEipAddressesArgs({
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

  factory GetEipAddressesArgs.fromMap(Map<String, dynamic> map) {
    return GetEipAddressesArgs(
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

