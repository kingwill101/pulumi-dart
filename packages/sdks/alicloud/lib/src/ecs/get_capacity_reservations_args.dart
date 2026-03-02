// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_capacity_reservations_get_capacity_reservations_args_doc}
/// Arguments for getCapacityReservations.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_capacity_reservations_get_capacity_reservations_args_doc}
class GetCapacityReservationsArgs {
  final pulumi.Input<List<String>>? capacityReservationIds;
  /// A list of Capacity Reservation IDs.
  final pulumi.Input<List<String>>? ids;
  /// Instance type. Currently, you can only set the capacity reservation service for one instance type.
  final pulumi.Input<String>? instanceType;
  /// A regex string to filter results by Group Metric Rule name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The payment type of the resource. value range `PostPaid`, `PrePaid`.
  final pulumi.Input<String>? paymentType;
  /// platform of the capacity reservation , value range `windows`, `linux`, `all`.
  final pulumi.Input<String>? platform;
  /// The resource group id.
  final pulumi.Input<String>? resourceGroupId;
  /// The status of the capacity reservation. value range `All`, `Pending`, `Preparing`, `Prepared`, `Active`, `Released`.
  final pulumi.Input<String>? status;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetCapacityReservationsArgs].
  /// [capacityReservationIds] Optional.
  /// [ids] A list of Capacity Reservation IDs.
  /// [instanceType] Instance type. Currently, you can only set the capacity reservation service for one instance type.
  /// [nameRegex] A regex string to filter results by Group Metric Rule name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [paymentType] The payment type of the resource. value range `PostPaid`, `PrePaid`.
  /// [platform] platform of the capacity reservation , value range `windows`, `linux`, `all`.
  /// [resourceGroupId] The resource group id.
  /// [status] The status of the capacity reservation. value range `All`, `Pending`, `Preparing`, `Prepared`, `Active`, `Released`.
  /// [tags] The tag of the resource.
  GetCapacityReservationsArgs({
    this.capacityReservationIds,
    this.ids,
    this.instanceType,
    this.nameRegex,
    this.outputFile,
    this.paymentType,
    this.platform,
    this.resourceGroupId,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityReservationIds': ?capacityReservationIds,
      'ids': ?ids,
      'instanceType': ?instanceType,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'paymentType': ?paymentType,
      'platform': ?platform,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetCapacityReservationsArgs.fromMap(Map<String, dynamic> map) {
    return GetCapacityReservationsArgs(
      capacityReservationIds: map['capacityReservationIds'] == null ? null : ((map['capacityReservationIds']! as List).cast<String>()).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType']! as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType']! as String).input(),
      platform: map['platform'] == null ? null : (map['platform']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

