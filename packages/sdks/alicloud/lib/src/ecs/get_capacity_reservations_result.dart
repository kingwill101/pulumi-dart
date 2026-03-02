// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_capacity_reservations_reservation.dart';

/// Result data returned by getCapacityReservations.
class GetCapacityReservationsResult {
  final List<String>? capacityReservationIds;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Capacity Reservation IDs.
  final List<String> ids;
  /// Instance type. Currently, you can only set the capacity reservation service for one instance type.
  final String? instanceType;
  final String? nameRegex;
  /// A list of name of Capacity Reservations.
  final List<String> names;
  final String? outputFile;
  /// The payment type of the resource
  final String? paymentType;
  /// platform of the capacity reservation.
  final String? platform;
  /// A list of Capacity Reservation Entries. Each element contains the following attributes:
  final List<GetCapacityReservationsReservation> reservations;
  /// The resource group id
  final String? resourceGroupId;
  /// The status of the capacity reservation.
  final String? status;
  /// A mapping of tags to assign to the Capacity Reservation.
  final Map<String, String>? tags;

  /// Creates a new [GetCapacityReservationsResult].
  /// [capacityReservationIds] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Capacity Reservation IDs.
  /// [instanceType] Instance type. Currently, you can only set the capacity reservation service for one instance type.
  /// [nameRegex] Optional.
  /// [names] A list of name of Capacity Reservations.
  /// [outputFile] Optional.
  /// [paymentType] The payment type of the resource
  /// [platform] platform of the capacity reservation.
  /// [reservations] A list of Capacity Reservation Entries. Each element contains the following attributes:
  /// [resourceGroupId] The resource group id
  /// [status] The status of the capacity reservation.
  /// [tags] A mapping of tags to assign to the Capacity Reservation.
  GetCapacityReservationsResult({
    this.capacityReservationIds,
    required this.id,
    required this.ids,
    this.instanceType,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.paymentType,
    this.platform,
    required this.reservations,
    this.resourceGroupId,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityReservationIds': ?capacityReservationIds,
      'id': id,
      'ids': ids,
      'instanceType': ?instanceType,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'paymentType': ?paymentType,
      'platform': ?platform,
      'reservations': pulumi.Input.encodeList<GetCapacityReservationsReservation, Map<String, dynamic>>(reservations, (value) => value.toMap()),
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetCapacityReservationsResult.fromMap(Map<String, dynamic> map) {
    return GetCapacityReservationsResult(
      capacityReservationIds: map['capacityReservationIds'] == null ? null : (map['capacityReservationIds']! as List).cast<String>(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceType: map['instanceType'] == null ? null : map['instanceType']! as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      paymentType: map['paymentType'] == null ? null : map['paymentType']! as String,
      platform: map['platform'] == null ? null : map['platform']! as String,
      reservations: pulumi.Input.decodeList<GetCapacityReservationsReservation>(map['reservations'], (value) => GetCapacityReservationsReservation.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId']! as String,
      status: map['status'] == null ? null : map['status']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
    );
  }
}

