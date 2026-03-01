// ignore_for_file: unused_element, unnecessary_cast


/// The integration account RosettaNet ProcessConfiguration activity behavior.
class RosettaNetPipActivityBehaviorResponse {
  /// The value indicating whether the RosettaNet PIP is used for a single action.
  final String actionType;
  /// The value indicating whether authorization is required.
  final bool isAuthorizationRequired;
  /// The value indicating whether secured transport is required.
  final bool isSecuredTransportRequired;
  /// The value indicating whether non-repudiation is for origin and content.
  final bool nonRepudiationOfOriginAndContent;
  /// The persistent confidentiality encryption scope.
  final String persistentConfidentialityScope;
  /// The value indicating whether the RosettaNet PIP communication is synchronous.
  final String responseType;
  /// The value indicating retry count.
  final int retryCount;
  /// The time to perform in seconds.
  final int timeToPerformInSeconds;

  /// Creates a new [RosettaNetPipActivityBehaviorResponse].
  /// [actionType] The value indicating whether the RosettaNet PIP is used for a single action.
  /// [isAuthorizationRequired] The value indicating whether authorization is required.
  /// [isSecuredTransportRequired] The value indicating whether secured transport is required.
  /// [nonRepudiationOfOriginAndContent] The value indicating whether non-repudiation is for origin and content.
  /// [persistentConfidentialityScope] The persistent confidentiality encryption scope.
  /// [responseType] The value indicating whether the RosettaNet PIP communication is synchronous.
  /// [retryCount] The value indicating retry count.
  /// [timeToPerformInSeconds] The time to perform in seconds.
  RosettaNetPipActivityBehaviorResponse({
    required this.actionType,
    required this.isAuthorizationRequired,
    required this.isSecuredTransportRequired,
    required this.nonRepudiationOfOriginAndContent,
    required this.persistentConfidentialityScope,
    required this.responseType,
    required this.retryCount,
    required this.timeToPerformInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
      'isAuthorizationRequired': isAuthorizationRequired,
      'isSecuredTransportRequired': isSecuredTransportRequired,
      'nonRepudiationOfOriginAndContent': nonRepudiationOfOriginAndContent,
      'persistentConfidentialityScope': persistentConfidentialityScope,
      'responseType': responseType,
      'retryCount': retryCount,
      'timeToPerformInSeconds': timeToPerformInSeconds,
    };
  }

  factory RosettaNetPipActivityBehaviorResponse.fromMap(Map<String, dynamic> map) {
    return RosettaNetPipActivityBehaviorResponse(
      actionType: map['actionType'] as String,
      isAuthorizationRequired: map['isAuthorizationRequired'] as bool,
      isSecuredTransportRequired: map['isSecuredTransportRequired'] as bool,
      nonRepudiationOfOriginAndContent: map['nonRepudiationOfOriginAndContent'] as bool,
      persistentConfidentialityScope: map['persistentConfidentialityScope'] as String,
      responseType: map['responseType'] as String,
      retryCount: map['retryCount'] as int,
      timeToPerformInSeconds: map['timeToPerformInSeconds'] as int,
    );
  }
}

