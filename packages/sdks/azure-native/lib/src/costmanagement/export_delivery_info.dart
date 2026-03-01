// ignore_for_file: unused_element, unnecessary_cast

import 'export_delivery_destination.dart';

/// The delivery information associated with a export.
class ExportDeliveryInfo {
  /// Has destination for the export being delivered.
  final ExportDeliveryDestination destination;

  /// Creates a new [ExportDeliveryInfo].
  /// [destination] Has destination for the export being delivered.
  ExportDeliveryInfo({
    required this.destination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': destination.toMap(),
    };
  }

  factory ExportDeliveryInfo.fromMap(Map<String, dynamic> map) {
    return ExportDeliveryInfo(
      destination: ExportDeliveryDestination.fromMap((map['destination'] as Map).cast<String, dynamic>()),
    );
  }
}

