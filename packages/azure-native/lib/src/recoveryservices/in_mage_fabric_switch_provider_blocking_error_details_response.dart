// ignore_for_file: unused_element, unnecessary_cast


/// InMageFabric switch provider blocking error details.
class InMageFabricSwitchProviderBlockingErrorDetailsResponse {
  /// The error code.
  final String errorCode;
  /// The error message.
  final String errorMessage;
  /// The error message parameters.
  final Map<String, String> errorMessageParameters;
  /// The error tags.
  final Map<String, String> errorTags;
  /// The possible causes.
  final String possibleCauses;
  /// The recommended action.
  final String recommendedAction;

  /// Creates a new [InMageFabricSwitchProviderBlockingErrorDetailsResponse].
  /// [errorCode] The error code.
  /// [errorMessage] The error message.
  /// [errorMessageParameters] The error message parameters.
  /// [errorTags] The error tags.
  /// [possibleCauses] The possible causes.
  /// [recommendedAction] The recommended action.
  InMageFabricSwitchProviderBlockingErrorDetailsResponse({
    required this.errorCode,
    required this.errorMessage,
    required this.errorMessageParameters,
    required this.errorTags,
    required this.possibleCauses,
    required this.recommendedAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': errorCode,
      'errorMessage': errorMessage,
      'errorMessageParameters': errorMessageParameters,
      'errorTags': errorTags,
      'possibleCauses': possibleCauses,
      'recommendedAction': recommendedAction,
    };
  }

  factory InMageFabricSwitchProviderBlockingErrorDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageFabricSwitchProviderBlockingErrorDetailsResponse(
      errorCode: map['errorCode'] as String,
      errorMessage: map['errorMessage'] as String,
      errorMessageParameters: (map['errorMessageParameters'] as Map).cast<String, String>(),
      errorTags: (map['errorTags'] as Map).cast<String, String>(),
      possibleCauses: map['possibleCauses'] as String,
      recommendedAction: map['recommendedAction'] as String,
    );
  }
}

