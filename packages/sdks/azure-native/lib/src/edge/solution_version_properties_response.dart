// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';
import 'solution_dependency_response.dart';

/// Solution Version Properties
class SolutionVersionPropertiesResponse {
  /// The type of the latest action performed on this solution version.
  final pulumi.Input<String> actionType;
  /// Resolved configuration values
  final pulumi.Input<String> configuration;
  /// Error Details if any failure is there
  final pulumi.Input<ErrorDetailResponse> errorDetails;
  /// External validation id
  final pulumi.Input<String> externalValidationId;
  /// The URI for tracking the latest action performed on this solution version.
  final pulumi.Input<String> latestActionTrackingUri;
  /// Provisioning state of resource
  final pulumi.Input<String> provisioningState;
  /// Review id of resolved config for this solution version
  final pulumi.Input<String> reviewId;
  /// Revision number of resolved config for this solution version
  final pulumi.Input<int> revision;
  /// Solution Dependency Context
  final pulumi.Input<List<SolutionDependencyResponse>> solutionDependencies;
  /// Solution instance name
  final pulumi.Input<String> solutionInstanceName;
  /// Solution Template Version Id
  final pulumi.Input<String> solutionTemplateVersionId;
  /// App components spec
  final pulumi.Input<dynamic> specification;
  /// State of solution instance
  final pulumi.Input<String> state;
  /// Name of applicable target's display name
  final pulumi.Input<String> targetDisplayName;
  /// Configuration on the line level across all solution template versions
  final pulumi.Input<String> targetLevelConfiguration;

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
      'errorDetails': pulumi.Input.mapInputValue<ErrorDetailResponse, Map<String, dynamic>>(errorDetails, (value) => value.toMap()),
      'externalValidationId': externalValidationId,
      'latestActionTrackingUri': latestActionTrackingUri,
      'provisioningState': provisioningState,
      'reviewId': reviewId,
      'revision': revision,
      'solutionDependencies': pulumi.Input.mapInputValue<List<SolutionDependencyResponse>, List<Map<String, dynamic>>>(solutionDependencies, (value) => pulumi.Input.encodeList<SolutionDependencyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      actionType: (map['actionType'] as String).input(),
      configuration: (map['configuration'] as String).input(),
      errorDetails: (ErrorDetailResponse.fromMap((map['errorDetails'] as Map).cast<String, dynamic>())).input(),
      externalValidationId: (map['externalValidationId'] as String).input(),
      latestActionTrackingUri: (map['latestActionTrackingUri'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      reviewId: (map['reviewId'] as String).input(),
      revision: (map['revision'] as int).input(),
      solutionDependencies: (pulumi.Input.decodeList<SolutionDependencyResponse>(map['solutionDependencies'], (value) => SolutionDependencyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      solutionInstanceName: (map['solutionInstanceName'] as String).input(),
      solutionTemplateVersionId: (map['solutionTemplateVersionId'] as String).input(),
      specification: (map['specification']).input(),
      state: (map['state'] as String).input(),
      targetDisplayName: (map['targetDisplayName'] as String).input(),
      targetLevelConfiguration: (map['targetLevelConfiguration'] as String).input(),
    );
  }
}

