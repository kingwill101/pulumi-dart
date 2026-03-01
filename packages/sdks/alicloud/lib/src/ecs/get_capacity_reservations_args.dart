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
    pulumi.Output<List<String>>? capacityReservationIds,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? instanceType,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? paymentType,
    pulumi.Output<String>? platform,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      capacityReservationIds = pulumi.Input.asOptionalInput<List<String>>(capacityReservationIds),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      platform = pulumi.Input.asOptionalInput<String>(platform),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      capacityReservationIds: map['capacityReservationIds'] == null ? null : pulumi.Output.create<List<String>>((map['capacityReservationIds'] as List).cast<String>()),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      platform: map['platform'] == null ? null : pulumi.Output.create<String>(map['platform'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

