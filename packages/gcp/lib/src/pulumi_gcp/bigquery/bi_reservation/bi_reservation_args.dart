// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bi_reservation_preferred_table/bi_reservation_preferred_table.dart';

/// The set of arguments for BiReservation.
class BiReservationArgs {
  /// LOCATION_DESCRIPTION
  final Input<String> location;

  /// Preferred tables to use BI capacity for.
  /// Structure is documented below.
  final Input<List<BiReservationPreferredTable>>? preferredTables;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Size of a reservation, in bytes.
  final Input<int>? size;

  BiReservationArgs({
    required this.location,
    this.preferredTables,
    this.project,
    this.size,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final preferredTablesValue = preferredTables;
    if (preferredTablesValue != null) {
      map['preferredTables'] = Input.mapOptionalInputValue<
              List<BiReservationPreferredTable>, List<Map<String, dynamic>>>(
          preferredTablesValue,
          (value) => Input.encodeList<BiReservationPreferredTable,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final sizeValue = size;
    if (sizeValue != null) {
      map['size'] = sizeValue;
    }
    return map;
  }

  factory BiReservationArgs.fromMap(Map<String, dynamic> map) {
    return BiReservationArgs(
      location: Input.asInput<String>(map['location']),
      preferredTables: Input.asOptionalInput<List<BiReservationPreferredTable>>(
          map['preferredTables']),
      project: Input.asOptionalInput<String>(map['project']),
      size: Input.asOptionalInput<int>(map['size']),
    );
  }
}
