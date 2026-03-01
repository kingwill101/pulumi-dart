// ignore_for_file: unused_element, unnecessary_cast

import 'rosetta_net_action_type.dart';
import 'rosetta_net_pip_confidentiality_scope.dart';
import 'rosetta_net_response_type.dart';

/// The integration account RosettaNet ProcessConfiguration activity behavior.
class RosettaNetPipActivityBehavior {
  /// The value indicating whether the RosettaNet PIP is used for a single action.
  final RosettaNetActionType actionType;
  /// The value indicating whether authorization is required.
  final bool isAuthorizationRequired;
  /// The value indicating whether secured transport is required.
  final bool isSecuredTransportRequired;
  /// The value indicating whether non-repudiation is for origin and content.
  final bool nonRepudiationOfOriginAndContent;
  /// The persistent confidentiality encryption scope.
  final RosettaNetPipConfidentialityScope persistentConfidentialityScope;
  /// The value indicating whether the RosettaNet PIP communication is synchronous.
  final RosettaNetResponseType responseType;
  /// The value indicating retry count.
  final int retryCount;
  /// The time to perform in seconds.
  final int timeToPerformInSeconds;

  /// Creates a new [RosettaNetPipActivityBehavior].
  /// [actionType] The value indicating whether the RosettaNet PIP is used for a single action.
  /// [isAuthorizationRequired] The value indicating whether authorization is required.
  /// [isSecuredTransportRequired] The value indicating whether secured transport is required.
  /// [nonRepudiationOfOriginAndContent] The value indicating whether non-repudiation is for origin and content.
  /// [persistentConfidentialityScope] The persistent confidentiality encryption scope.
  /// [responseType] The value indicating whether the RosettaNet PIP communication is synchronous.
  /// [retryCount] The value indicating retry count.
  /// [timeToPerformInSeconds] The time to perform in seconds.
  RosettaNetPipActivityBehavior({
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
      'actionType': actionType.value,
      'isAuthorizationRequired': isAuthorizationRequired,
      'isSecuredTransportRequired': isSecuredTransportRequired,
      'nonRepudiationOfOriginAndContent': nonRepudiationOfOriginAndContent,
      'persistentConfidentialityScope': persistentConfidentialityScope.value,
      'responseType': responseType.value,
      'retryCount': retryCount,
      'timeToPerformInSeconds': timeToPerformInSeconds,
    };
  }

  factory RosettaNetPipActivityBehavior.fromMap(Map<String, dynamic> map) {
    return RosettaNetPipActivityBehavior(
      actionType: RosettaNetActionType.fromValue(map['actionType'] as String),
      isAuthorizationRequired: map['isAuthorizationRequired'] as bool,
      isSecuredTransportRequired: map['isSecuredTransportRequired'] as bool,
      nonRepudiationOfOriginAndContent: map['nonRepudiationOfOriginAndContent'] as bool,
      persistentConfidentialityScope: RosettaNetPipConfidentialityScope.fromValue(map['persistentConfidentialityScope'] as String),
      responseType: RosettaNetResponseType.fromValue(map['responseType'] as String),
      retryCount: map['retryCount'] as int,
      timeToPerformInSeconds: map['timeToPerformInSeconds'] as int,
    );
  }
}

