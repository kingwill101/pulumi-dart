// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_delivery_destination_response.dart';

/// The delivery information associated with a report.
class ReportDeliveryInfoResponse {
  /// Has destination for the report being delivered.
  final pulumi.Input<ReportDeliveryDestinationResponse> destination;

  /// Creates a new [ReportDeliveryInfoResponse].
  /// [destination] Has destination for the report being delivered.
  const ReportDeliveryInfoResponse({
    required this.destination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': pulumi.Input.mapInputValue<ReportDeliveryDestinationResponse, Map<String, dynamic>>(destination, (value) => value.toMap()),
    };
  }

  factory ReportDeliveryInfoResponse.fromMap(Map<String, dynamic> map) {
    return ReportDeliveryInfoResponse(
      destination: pulumi.Input.fromValue(ReportDeliveryDestinationResponse.fromMap((map['destination']! as Map).cast<String, dynamic>())),
    );
  }
}

