// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rosetta_net_action_type.dart';
import 'rosetta_net_pip_confidentiality_scope.dart';
import 'rosetta_net_response_type.dart';

/// The integration account RosettaNet ProcessConfiguration activity behavior.
class RosettaNetPipActivityBehavior {
  /// The value indicating whether the RosettaNet PIP is used for a single action.
  final pulumi.Input<RosettaNetActionType> actionType;
  /// The value indicating whether authorization is required.
  final pulumi.Input<bool> isAuthorizationRequired;
  /// The value indicating whether secured transport is required.
  final pulumi.Input<bool> isSecuredTransportRequired;
  /// The value indicating whether non-repudiation is for origin and content.
  final pulumi.Input<bool> nonRepudiationOfOriginAndContent;
  /// The persistent confidentiality encryption scope.
  final pulumi.Input<RosettaNetPipConfidentialityScope> persistentConfidentialityScope;
  /// The value indicating whether the RosettaNet PIP communication is synchronous.
  final pulumi.Input<RosettaNetResponseType> responseType;
  /// The value indicating retry count.
  final pulumi.Input<int> retryCount;
  /// The time to perform in seconds.
  final pulumi.Input<int> timeToPerformInSeconds;

  /// Creates a new [RosettaNetPipActivityBehavior].
  /// [actionType] The value indicating whether the RosettaNet PIP is used for a single action.
  /// [isAuthorizationRequired] The value indicating whether authorization is required.
  /// [isSecuredTransportRequired] The value indicating whether secured transport is required.
  /// [nonRepudiationOfOriginAndContent] The value indicating whether non-repudiation is for origin and content.
  /// [persistentConfidentialityScope] The persistent confidentiality encryption scope.
  /// [responseType] The value indicating whether the RosettaNet PIP communication is synchronous.
  /// [retryCount] The value indicating retry count.
  /// [timeToPerformInSeconds] The time to perform in seconds.
  const RosettaNetPipActivityBehavior({
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
      'actionType': pulumi.Input.mapInputValue<RosettaNetActionType, String>(actionType, (value) => value.wireValue),
      'isAuthorizationRequired': isAuthorizationRequired,
      'isSecuredTransportRequired': isSecuredTransportRequired,
      'nonRepudiationOfOriginAndContent': nonRepudiationOfOriginAndContent,
      'persistentConfidentialityScope': pulumi.Input.mapInputValue<RosettaNetPipConfidentialityScope, String>(persistentConfidentialityScope, (value) => value.wireValue),
      'responseType': pulumi.Input.mapInputValue<RosettaNetResponseType, String>(responseType, (value) => value.wireValue),
      'retryCount': retryCount,
      'timeToPerformInSeconds': timeToPerformInSeconds,
    };
  }

  factory RosettaNetPipActivityBehavior.fromMap(Map<String, dynamic> map) {
    return RosettaNetPipActivityBehavior(
      actionType: pulumi.Input.fromValue(RosettaNetActionType.fromValue(map['actionType']! as String)),
      isAuthorizationRequired: pulumi.Input.fromValue(map['isAuthorizationRequired'] as bool),
      isSecuredTransportRequired: pulumi.Input.fromValue(map['isSecuredTransportRequired'] as bool),
      nonRepudiationOfOriginAndContent: pulumi.Input.fromValue(map['nonRepudiationOfOriginAndContent'] as bool),
      persistentConfidentialityScope: pulumi.Input.fromValue(RosettaNetPipConfidentialityScope.fromValue(map['persistentConfidentialityScope']! as String)),
      responseType: pulumi.Input.fromValue(RosettaNetResponseType.fromValue(map['responseType']! as String)),
      retryCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['retryCount'])),
      timeToPerformInSeconds: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['timeToPerformInSeconds'])),
    );
  }
}
