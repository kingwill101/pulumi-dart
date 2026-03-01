// ignore_for_file: unused_element, unnecessary_cast

import 'report_delivery_destination.dart';

/// The delivery information associated with a report.
class ReportDeliveryInfo {
  /// Has destination for the report being delivered.
  final ReportDeliveryDestination destination;

  /// Creates a new [ReportDeliveryInfo].
  /// [destination] Has destination for the report being delivered.
  ReportDeliveryInfo({
    required this.destination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': destination.toMap(),
    };
  }

  factory ReportDeliveryInfo.fromMap(Map<String, dynamic> map) {
    return ReportDeliveryInfo(
      destination: ReportDeliveryDestination.fromMap((map['destination'] as Map).cast<String, dynamic>()),
    );
  }
}

