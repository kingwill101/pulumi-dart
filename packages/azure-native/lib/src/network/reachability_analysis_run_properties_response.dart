// ignore_for_file: unused_element, unnecessary_cast

import 'intent_content_response.dart';

/// Represents the Reachability Analysis Run properties.
class ReachabilityAnalysisRunPropertiesResponse {
  final String analysisResult;
  final String? description;
  final String errorMessage;
  /// Intent information.
  final IntentContentResponse intentContent;
  /// Id of the intent resource to run analysis on.
  final String intentId;
  /// Provisioning states of a resource.
  final String provisioningState;

  /// Creates a new [ReachabilityAnalysisRunPropertiesResponse].
  /// [analysisResult] Required.
  /// [description] Optional.
  /// [errorMessage] Required.
  /// [intentContent] Intent information.
  /// [intentId] Id of the intent resource to run analysis on.
  /// [provisioningState] Provisioning states of a resource.
  ReachabilityAnalysisRunPropertiesResponse({
    required this.analysisResult,
    this.description,
    required this.errorMessage,
    required this.intentContent,
    required this.intentId,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysisResult': analysisResult,
      'description': ?description,
      'errorMessage': errorMessage,
      'intentContent': intentContent.toMap(),
      'intentId': intentId,
      'provisioningState': provisioningState,
    };
  }

  factory ReachabilityAnalysisRunPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ReachabilityAnalysisRunPropertiesResponse(
      analysisResult: map['analysisResult'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      errorMessage: map['errorMessage'] as String,
      intentContent: IntentContentResponse.fromMap((map['intentContent'] as Map).cast<String, dynamic>()),
      intentId: map['intentId'] as String,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

