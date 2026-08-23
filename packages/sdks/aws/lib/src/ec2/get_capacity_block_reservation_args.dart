// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_capacity_block_reservation_filter.dart';

/// {@template pulumi_ec2_get_capacity_block_reservation_get_capacity_block_reservation_args_doc}
/// Arguments for getCapacityBlockReservation.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_capacity_block_reservation_get_capacity_block_reservation_args_doc}
class GetCapacityBlockReservationArgs {
  /// Configuration block(s) for filtering. Detailed below.
  final pulumi.Input<List<GetCapacityBlockReservationFilter>>? filters;
  /// ID of the Capacity Block reservation to retrieve.
  final pulumi.Input<String>? id;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetCapacityBlockReservationArgs].
  /// [filters] Configuration block(s) for filtering. Detailed below.
  /// [id] ID of the Capacity Block reservation to retrieve.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetCapacityBlockReservationArgs({
    this.filters,
    this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetCapacityBlockReservationFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetCapacityBlockReservationFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'region': ?region,
    };
  }

  factory GetCapacityBlockReservationArgs.fromMap(Map<String, dynamic> map) {
    return GetCapacityBlockReservationArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetCapacityBlockReservationFilter>(guardedValue, (value) => GetCapacityBlockReservationFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
