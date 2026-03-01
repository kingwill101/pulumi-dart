// ignore_for_file: unused_element, unnecessary_cast

import 'tracking_info_response.dart';

/// Represents a single status change.
class OrderStatusResponse {
  /// Dictionary to hold generic information which is not stored
  /// by the already existing properties
  final Map<String, String> additionalOrderDetails;
  /// Comments related to this status change.
  final String? comments;
  /// Status of the order as per the allowed status types.
  final String status;
  /// Tracking information related to the state in the ordering flow
  final TrackingInfoResponse trackingInformation;
  /// Time of status update.
  final String updateDateTime;

  /// Creates a new [OrderStatusResponse].
  /// [additionalOrderDetails] Dictionary to hold generic information which is not stored
  /// [comments] Comments related to this status change.
  /// [status] Status of the order as per the allowed status types.
  /// [trackingInformation] Tracking information related to the state in the ordering flow
  /// [updateDateTime] Time of status update.
  OrderStatusResponse({
    required this.additionalOrderDetails,
    this.comments,
    required this.status,
    required this.trackingInformation,
    required this.updateDateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalOrderDetails': additionalOrderDetails,
      'comments': ?comments,
      'status': status,
      'trackingInformation': trackingInformation.toMap(),
      'updateDateTime': updateDateTime,
    };
  }

  factory OrderStatusResponse.fromMap(Map<String, dynamic> map) {
    return OrderStatusResponse(
      additionalOrderDetails: (map['additionalOrderDetails'] as Map).cast<String, String>(),
      comments: map['comments'] == null ? null : map['comments'] as String,
      status: map['status'] as String,
      trackingInformation: TrackingInfoResponse.fromMap((map['trackingInformation'] as Map).cast<String, dynamic>()),
      updateDateTime: map['updateDateTime'] as String,
    );
  }
}

