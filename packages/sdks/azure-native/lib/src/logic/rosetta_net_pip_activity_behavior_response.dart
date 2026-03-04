// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The integration account RosettaNet ProcessConfiguration activity behavior.
class RosettaNetPipActivityBehaviorResponse {
  /// The value indicating whether the RosettaNet PIP is used for a single action.
  final pulumi.Input<String> actionType;

  /// The value indicating whether authorization is required.
  final pulumi.Input<bool> isAuthorizationRequired;

  /// The value indicating whether secured transport is required.
  final pulumi.Input<bool> isSecuredTransportRequired;

  /// The value indicating whether non-repudiation is for origin and content.
  final pulumi.Input<bool> nonRepudiationOfOriginAndContent;

  /// The persistent confidentiality encryption scope.
  final pulumi.Input<String> persistentConfidentialityScope;

  /// The value indicating whether the RosettaNet PIP communication is synchronous.
  final pulumi.Input<String> responseType;

  /// The value indicating retry count.
  final pulumi.Input<int> retryCount;

  /// The time to perform in seconds.
  final pulumi.Input<int> timeToPerformInSeconds;

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

  factory RosettaNetPipActivityBehaviorResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return RosettaNetPipActivityBehaviorResponse(
      actionType: pulumi.Input.fromValue(map['actionType'] as String),
      isAuthorizationRequired: pulumi.Input.fromValue(
        map['isAuthorizationRequired'] as bool,
      ),
      isSecuredTransportRequired: pulumi.Input.fromValue(
        map['isSecuredTransportRequired'] as bool,
      ),
      nonRepudiationOfOriginAndContent: pulumi.Input.fromValue(
        map['nonRepudiationOfOriginAndContent'] as bool,
      ),
      persistentConfidentialityScope: pulumi.Input.fromValue(
        map['persistentConfidentialityScope'] as String,
      ),
      responseType: pulumi.Input.fromValue(map['responseType'] as String),
      retryCount: pulumi.Input.fromValue(map['retryCount'] as int),
      timeToPerformInSeconds: pulumi.Input.fromValue(
        map['timeToPerformInSeconds'] as int,
      ),
    );
  }
}
