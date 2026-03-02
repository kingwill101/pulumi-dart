// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Availability information of a product system.
class AvailabilityInformationResponse {
  /// Current availability stage of the product.
  final pulumi.Input<String> availabilityStage;
  /// Reason why the product is disabled.
  final pulumi.Input<String> disabledReason;
  /// Message for why the product is disabled.
  final pulumi.Input<String> disabledReasonMessage;

  /// Creates a new [AvailabilityInformationResponse].
  /// [availabilityStage] Current availability stage of the product.
  /// [disabledReason] Reason why the product is disabled.
  /// [disabledReasonMessage] Message for why the product is disabled.
  AvailabilityInformationResponse({
    required this.availabilityStage,
    required this.disabledReason,
    required this.disabledReasonMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityStage': availabilityStage,
      'disabledReason': disabledReason,
      'disabledReasonMessage': disabledReasonMessage,
    };
  }

  factory AvailabilityInformationResponse.fromMap(Map<String, dynamic> map) {
    return AvailabilityInformationResponse(
      availabilityStage: (map['availabilityStage'] as String).input(),
      disabledReason: (map['disabledReason'] as String).input(),
      disabledReasonMessage: (map['disabledReasonMessage'] as String).input(),
    );
  }
}

