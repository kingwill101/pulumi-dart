// ignore_for_file: unused_element, unnecessary_cast

import 'export_delivery_destination_response.dart';

/// The delivery information associated with a export.
class ExportDeliveryInfoResponse {
  /// Has destination for the export being delivered.
  final ExportDeliveryDestinationResponse destination;

  /// Creates a new [ExportDeliveryInfoResponse].
  /// [destination] Has destination for the export being delivered.
  ExportDeliveryInfoResponse({
    required this.destination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': destination.toMap(),
    };
  }

  factory ExportDeliveryInfoResponse.fromMap(Map<String, dynamic> map) {
    return ExportDeliveryInfoResponse(
      destination: ExportDeliveryDestinationResponse.fromMap((map['destination'] as Map).cast<String, dynamic>()),
    );
  }
}

