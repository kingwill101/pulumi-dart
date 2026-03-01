// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';
import 'solution_dependency_response.dart';

/// Solution Version Properties
class SolutionVersionPropertiesResponse {
  /// The type of the latest action performed on this solution version.
  final String actionType;
  /// Resolved configuration values
  final String configuration;
  /// Error Details if any failure is there
  final ErrorDetailResponse errorDetails;
  /// External validation id
  final String externalValidationId;
  /// The URI for tracking the latest action performed on this solution version.
  final String latestActionTrackingUri;
  /// Provisioning state of resource
  final String provisioningState;
  /// Review id of resolved config for this solution version
  final String reviewId;
  /// Revision number of resolved config for this solution version
  final int revision;
  /// Solution Dependency Context
  final List<SolutionDependencyResponse> solutionDependencies;
  /// Solution instance name
  final String solutionInstanceName;
  /// Solution Template Version Id
  final String solutionTemplateVersionId;
  /// App components spec
  final dynamic specification;
  /// State of solution instance
  final String state;
  /// Name of applicable target's display name
  final String targetDisplayName;
  /// Configuration on the line level across all solution template versions
  final String targetLevelConfiguration;

  /// Creates a new [SolutionVersionPropertiesResponse].
  /// [actionType] The type of the latest action performed on this solution version.
  /// [configuration] Resolved configuration values
  /// [errorDetails] Error Details if any failure is there
  /// [externalValidationId] External validation id
  /// [latestActionTrackingUri] The URI for tracking the latest action performed on this solution version.
  /// [provisioningState] Provisioning state of resource
  /// [reviewId] Review id of resolved config for this solution version
  /// [revision] Revision number of resolved config for this solution version
  /// [solutionDependencies] Solution Dependency Context
  /// [solutionInstanceName] Solution instance name
  /// [solutionTemplateVersionId] Solution Template Version Id
  /// [specification] App components spec
  /// [state] State of solution instance
  /// [targetDisplayName] Name of applicable target's display name
  /// [targetLevelConfiguration] Configuration on the line level across all solution template versions
  SolutionVersionPropertiesResponse({
    required this.actionType,
    required this.configuration,
    required this.errorDetails,
    required this.externalValidationId,
    required this.latestActionTrackingUri,
    required this.provisioningState,
    required this.reviewId,
    required this.revision,
    required this.solutionDependencies,
    required this.solutionInstanceName,
    required this.solutionTemplateVersionId,
    required this.specification,
    required this.state,
    required this.targetDisplayName,
    required this.targetLevelConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
      'configuration': configuration,
      'errorDetails': errorDetails.toMap(),
      'externalValidationId': externalValidationId,
      'latestActionTrackingUri': latestActionTrackingUri,
      'provisioningState': provisioningState,
      'reviewId': reviewId,
      'revision': revision,
      'solutionDependencies': pulumi.Input.encodeList<SolutionDependencyResponse, Map<String, dynamic>>(solutionDependencies, (value) => value.toMap()),
      'solutionInstanceName': solutionInstanceName,
      'solutionTemplateVersionId': solutionTemplateVersionId,
      'specification': specification,
      'state': state,
      'targetDisplayName': targetDisplayName,
      'targetLevelConfiguration': targetLevelConfiguration,
    };
  }

  factory SolutionVersionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SolutionVersionPropertiesResponse(
      actionType: map['actionType'] as String,
      configuration: map['configuration'] as String,
      errorDetails: ErrorDetailResponse.fromMap((map['errorDetails'] as Map).cast<String, dynamic>()),
      externalValidationId: map['externalValidationId'] as String,
      latestActionTrackingUri: map['latestActionTrackingUri'] as String,
      provisioningState: map['provisioningState'] as String,
      reviewId: map['reviewId'] as String,
      revision: map['revision'] as int,
      solutionDependencies: pulumi.Input.decodeList<SolutionDependencyResponse>(map['solutionDependencies'], (value) => SolutionDependencyResponse.fromMap((value as Map).cast<String, dynamic>())),
      solutionInstanceName: map['solutionInstanceName'] as String,
      solutionTemplateVersionId: map['solutionTemplateVersionId'] as String,
      specification: map['specification'],
      state: map['state'] as String,
      targetDisplayName: map['targetDisplayName'] as String,
      targetLevelConfiguration: map['targetLevelConfiguration'] as String,
    );
  }
}

