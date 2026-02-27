// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../bi_reservation_preferred_table/bi_reservation_preferred_table.dart';

/// The set of arguments for BiReservation.
class BiReservationArgs {
  /// LOCATION_DESCRIPTION
  final pulumi.Input<String> location;

  /// Preferred tables to use BI capacity for.
  /// Structure is documented below.
  final pulumi.Input<List<BiReservationPreferredTable>>? preferredTables;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Size of a reservation, in bytes.
  final pulumi.Input<int>? size;

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
      map['preferredTables'] = pulumi.Input.mapOptionalInputValue<
              List<BiReservationPreferredTable>, List<Map<String, dynamic>>>(
          preferredTablesValue,
          (value) => pulumi.Input.encodeList<BiReservationPreferredTable,
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
      location: pulumi.Input.asInput<String>(map['location']),
      preferredTables:
          pulumi.Input.asOptionalInput<List<BiReservationPreferredTable>>(
              map['preferredTables']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      size: pulumi.Input.asOptionalInput<int>(map['size']),
    );
  }
}
