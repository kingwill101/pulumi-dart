// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eflo_get_subnets_get_subnets_args_doc}
/// Arguments for getSubnets.
/// {@endtemplate}
/// {@macro pulumi_eflo_get_subnets_get_subnets_args_doc}
class GetSubnetsArgs {
  final pulumi.Input<List<String>>? ids;

  /// A regex string to filter results by Group Metric Rule name.
  final pulumi.Input<String>? nameRegex;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;

  /// Resource Group ID.
  final pulumi.Input<String>? resourceGroupId;

  /// The status of the resource.
  final pulumi.Input<String>? status;

  /// Primary key ID.
  final pulumi.Input<String>? subnetId;

  /// The Subnet name.
  final pulumi.Input<String>? subnetName;

  /// Eflo subnet usage type, optional value:
  /// - General type is not filled in
  /// - OOB:OOB type
  /// - LB: LB type
  final pulumi.Input<String>? type;

  /// The Eflo VPD ID.
  final pulumi.Input<String>? vpdId;

  /// The zone ID of the resource.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [GetSubnetsArgs].
  /// [ids] Optional.
  /// [nameRegex] A regex string to filter results by Group Metric Rule name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [resourceGroupId] Resource Group ID.
  /// [status] The status of the resource.
  /// [subnetId] Primary key ID.
  /// [subnetName] The Subnet name.
  /// [type] Eflo subnet usage type, optional value:
  /// [vpdId] The Eflo VPD ID.
  /// [zoneId] The zone ID of the resource.
  GetSubnetsArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.resourceGroupId,
    this.status,
    this.subnetId,
    this.subnetName,
    this.type,
    this.vpdId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'subnetId': ?subnetId,
      'subnetName': ?subnetName,
      'type': ?type,
      'vpdId': ?vpdId,
      'zoneId': ?zoneId,
    };
  }

  factory GetSubnetsArgs.fromMap(Map<String, dynamic> map) {
    return GetSubnetsArgs(
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
      pageNumber: (() {
        final guardedValue = map['pageNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      pageSize: (() {
        final guardedValue = map['pageSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subnetId: (() {
        final guardedValue = map['subnetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subnetName: (() {
        final guardedValue = map['subnetName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpdId: (() {
        final guardedValue = map['vpdId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zoneId: (() {
        final guardedValue = map['zoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
