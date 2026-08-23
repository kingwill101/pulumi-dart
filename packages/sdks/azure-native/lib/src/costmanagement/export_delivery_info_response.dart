// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_delivery_destination_response.dart';

/// The delivery information associated with a export.
class ExportDeliveryInfoResponse {
  /// Has destination for the export being delivered.
  final pulumi.Input<ExportDeliveryDestinationResponse> destination;

  /// Creates a new [ExportDeliveryInfoResponse].
  /// [destination] Has destination for the export being delivered.
  const ExportDeliveryInfoResponse({
    required this.destination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': pulumi.Input.mapInputValue<ExportDeliveryDestinationResponse, Map<String, dynamic>>(destination, (value) => value.toMap()),
    };
  }

  factory ExportDeliveryInfoResponse.fromMap(Map<String, dynamic> map) {
    return ExportDeliveryInfoResponse(
      destination: pulumi.Input.fromValue(ExportDeliveryDestinationResponse.fromMap((map['destination']! as Map).cast<String, dynamic>())),
    );
  }
}
