// ignore_for_file: unused_element, unnecessary_cast


/// Availability information of a product system.
class AvailabilityInformationResponse {
  /// Current availability stage of the product.
  final String availabilityStage;
  /// Reason why the product is disabled.
  final String disabledReason;
  /// Message for why the product is disabled.
  final String disabledReasonMessage;

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
      availabilityStage: map['availabilityStage'] as String,
      disabledReason: map['disabledReason'] as String,
      disabledReasonMessage: map['disabledReasonMessage'] as String,
    );
  }
}

