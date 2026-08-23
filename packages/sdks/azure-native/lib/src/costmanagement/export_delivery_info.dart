// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_delivery_destination.dart';

/// The delivery information associated with a export.
class ExportDeliveryInfo {
  /// Has destination for the export being delivered.
  final pulumi.Input<ExportDeliveryDestination> destination;

  /// Creates a new [ExportDeliveryInfo].
  /// [destination] Has destination for the export being delivered.
  const ExportDeliveryInfo({
    required this.destination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': pulumi.Input.mapInputValue<ExportDeliveryDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
    };
  }

  factory ExportDeliveryInfo.fromMap(Map<String, dynamic> map) {
    return ExportDeliveryInfo(
      destination: pulumi.Input.fromValue(ExportDeliveryDestination.fromMap((map['destination']! as Map).cast<String, dynamic>())),
    );
  }
}
