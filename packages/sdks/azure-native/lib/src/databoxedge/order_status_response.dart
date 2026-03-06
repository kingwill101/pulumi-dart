// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tracking_info_response.dart';

/// Represents a single status change.
class OrderStatusResponse {
  /// Dictionary to hold generic information which is not stored
  /// by the already existing properties
  final pulumi.Input<Map<String, String>> additionalOrderDetails;
  /// Comments related to this status change.
  final pulumi.Input<String>? comments;
  /// Status of the order as per the allowed status types.
  final pulumi.Input<String> status;
  /// Tracking information related to the state in the ordering flow
  final pulumi.Input<TrackingInfoResponse> trackingInformation;
  /// Time of status update.
  final pulumi.Input<String> updateDateTime;

  /// Creates a new [OrderStatusResponse].
  /// [additionalOrderDetails] Dictionary to hold generic information which is not stored
  /// [comments] Comments related to this status change.
  /// [status] Status of the order as per the allowed status types.
  /// [trackingInformation] Tracking information related to the state in the ordering flow
  /// [updateDateTime] Time of status update.
  const OrderStatusResponse({
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
      'trackingInformation': pulumi.Input.mapInputValue<TrackingInfoResponse, Map<String, dynamic>>(trackingInformation, (value) => value.toMap()),
      'updateDateTime': updateDateTime,
    };
  }

  factory OrderStatusResponse.fromMap(Map<String, dynamic> map) {
    return OrderStatusResponse(
      additionalOrderDetails: pulumi.Input.fromValue((map['additionalOrderDetails'] as Map).cast<String, String>()),
      comments: (() { final guardedValue = map['comments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
      trackingInformation: pulumi.Input.fromValue(TrackingInfoResponse.fromMap((map['trackingInformation']! as Map).cast<String, dynamic>())),
      updateDateTime: pulumi.Input.fromValue(map['updateDateTime'] as String),
    );
  }
}

