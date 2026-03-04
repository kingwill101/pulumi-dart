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

  factory GetEipAddressesArgs.fromMap(Map<String, dynamic> map) {
    return GetEipAddressesArgs(
      addressName: (() {
        final guardedValue = map['addressName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      associatedInstanceId: (() {
        final guardedValue = map['associatedInstanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      associatedInstanceType: (() {
        final guardedValue = map['associatedInstanceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dryRun: (() {
        final guardedValue = map['dryRun'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      includeReservationData: (() {
        final guardedValue = map['includeReservationData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ipAddress: (() {
        final guardedValue = map['ipAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipAddresses: (() {
        final guardedValue = map['ipAddresses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      isp: (() {
        final guardedValue = map['isp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lockReason: (() {
        final guardedValue = map['lockReason'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
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
      paymentType: (() {
        final guardedValue = map['paymentType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      segmentInstanceId: (() {
        final guardedValue = map['segmentInstanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
