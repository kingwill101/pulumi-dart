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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? subnetId,
    pulumi.Output<String>? subnetName,
    pulumi.Output<String>? type,
    pulumi.Output<String>? vpdId,
    pulumi.Output<String>? zoneId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      subnetName = pulumi.Input.asOptionalInput<String>(subnetName),
      type = pulumi.Input.asOptionalInput<String>(type),
      vpdId = pulumi.Input.asOptionalInput<String>(vpdId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      subnetName: map['subnetName'] == null ? null : pulumi.Output.create<String>(map['subnetName'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      vpdId: map['vpdId'] == null ? null : pulumi.Output.create<String>(map['vpdId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

