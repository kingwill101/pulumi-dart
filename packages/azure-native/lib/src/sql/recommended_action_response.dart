// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'recommended_action_error_info_response.dart';
import 'recommended_action_impact_record_response.dart';
import 'recommended_action_implementation_info_response.dart';
import 'recommended_action_metric_info_response.dart';
import 'recommended_action_state_info_response.dart';

/// Database, Server or Elastic Pool Recommended Action.
class RecommendedActionResponse {
  /// Gets additional details specific to this recommended action.
  final Map<String, String> details;
  /// Gets the error details if and why this recommended action is put to error state.
  final RecommendedActionErrorInfoResponse errorDetails;
  /// Gets the estimated impact info for this recommended action e.g., Estimated CPU gain, Estimated Disk Space change
  final List<RecommendedActionImpactRecordResponse> estimatedImpact;
  /// Gets the time taken for applying this recommended action on user resource. e.g., time taken for index creation
  final String executeActionDuration;
  /// Gets if approval for applying this recommended action was given by user/system.
  final String executeActionInitiatedBy;
  /// Gets the time when this recommended action was approved for execution.
  final String executeActionInitiatedTime;
  /// Gets the time when system started applying this recommended action on the user resource. e.g., index creation start time
  final String executeActionStartTime;
  /// Resource ID.
  final String id;
  /// Gets the implementation details of this recommended action for user to apply it manually.
  final RecommendedActionImplementationInfoResponse implementationDetails;
  /// Gets if this recommended action was suggested some time ago but user chose to ignore this and system added a new recommended action again.
  final bool isArchivedAction;
  /// Gets if this recommended action is actionable by user
  final bool isExecutableAction;
  /// Gets if changes applied by this recommended action can be reverted by user
  final bool isRevertableAction;
  /// Resource kind.
  final String kind;
  /// Gets time when this recommended action was last refreshed.
  final String lastRefresh;
  /// Gets the linked objects, if any.
  final List<String> linkedObjects;
  /// Resource location.
  final String location;
  /// Resource name.
  final String name;
  /// Gets the observed/actual impact info for this recommended action e.g., Actual CPU gain, Actual Disk Space change
  final List<RecommendedActionImpactRecordResponse> observedImpact;
  /// Gets the reason for recommending this action. e.g., DuplicateIndex
  final String recommendationReason;
  /// Gets the time taken for reverting changes of this recommended action on user resource. e.g., time taken for dropping the created index.
  final String revertActionDuration;
  /// Gets if approval for reverting this recommended action was given by user/system.
  final String revertActionInitiatedBy;
  /// Gets the time when this recommended action was approved for revert.
  final String revertActionInitiatedTime;
  /// Gets the time when system started reverting changes of this recommended action on user resource. e.g., time when index drop is executed.
  final String revertActionStartTime;
  /// Gets the impact of this recommended action. Possible values are 1 - Low impact, 2 - Medium Impact and 3 - High Impact
  final int score;
  /// Gets the info of the current state the recommended action is in.
  final RecommendedActionStateInfoResponse state;
  /// Gets the time series info of metrics for this recommended action e.g., CPU consumption time series
  final List<RecommendedActionMetricInfoResponse> timeSeries;
  /// Resource type.
  final String type;
  /// Gets the time since when this recommended action is valid.
  final String validSince;

  /// Creates a new [RecommendedActionResponse].
  /// [details] Gets additional details specific to this recommended action.
  /// [errorDetails] Gets the error details if and why this recommended action is put to error state.
  /// [estimatedImpact] Gets the estimated impact info for this recommended action e.g., Estimated CPU gain, Estimated Disk Space change
  /// [executeActionDuration] Gets the time taken for applying this recommended action on user resource. e.g., time taken for index creation
  /// [executeActionInitiatedBy] Gets if approval for applying this recommended action was given by user/system.
  /// [executeActionInitiatedTime] Gets the time when this recommended action was approved for execution.
  /// [executeActionStartTime] Gets the time when system started applying this recommended action on the user resource. e.g., index creation start time
  /// [id] Resource ID.
  /// [implementationDetails] Gets the implementation details of this recommended action for user to apply it manually.
  /// [isArchivedAction] Gets if this recommended action was suggested some time ago but user chose to ignore this and system added a new recommended action again.
  /// [isExecutableAction] Gets if this recommended action is actionable by user
  /// [isRevertableAction] Gets if changes applied by this recommended action can be reverted by user
  /// [kind] Resource kind.
  /// [lastRefresh] Gets time when this recommended action was last refreshed.
  /// [linkedObjects] Gets the linked objects, if any.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [observedImpact] Gets the observed/actual impact info for this recommended action e.g., Actual CPU gain, Actual Disk Space change
  /// [recommendationReason] Gets the reason for recommending this action. e.g., DuplicateIndex
  /// [revertActionDuration] Gets the time taken for reverting changes of this recommended action on user resource. e.g., time taken for dropping the created index.
  /// [revertActionInitiatedBy] Gets if approval for reverting this recommended action was given by user/system.
  /// [revertActionInitiatedTime] Gets the time when this recommended action was approved for revert.
  /// [revertActionStartTime] Gets the time when system started reverting changes of this recommended action on user resource. e.g., time when index drop is executed.
  /// [score] Gets the impact of this recommended action. Possible values are 1 - Low impact, 2 - Medium Impact and 3 - High Impact
  /// [state] Gets the info of the current state the recommended action is in.
  /// [timeSeries] Gets the time series info of metrics for this recommended action e.g., CPU consumption time series
  /// [type] Resource type.
  /// [validSince] Gets the time since when this recommended action is valid.
  RecommendedActionResponse({
    required this.details,
    required this.errorDetails,
    required this.estimatedImpact,
    required this.executeActionDuration,
    required this.executeActionInitiatedBy,
    required this.executeActionInitiatedTime,
    required this.executeActionStartTime,
    required this.id,
    required this.implementationDetails,
    required this.isArchivedAction,
    required this.isExecutableAction,
    required this.isRevertableAction,
    required this.kind,
    required this.lastRefresh,
    required this.linkedObjects,
    required this.location,
    required this.name,
    required this.observedImpact,
    required this.recommendationReason,
    required this.revertActionDuration,
    required this.revertActionInitiatedBy,
    required this.revertActionInitiatedTime,
    required this.revertActionStartTime,
    required this.score,
    required this.state,
    required this.timeSeries,
    required this.type,
    required this.validSince,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': details,
      'errorDetails': errorDetails.toMap(),
      'estimatedImpact': pulumi.Input.encodeList<RecommendedActionImpactRecordResponse, Map<String, dynamic>>(estimatedImpact, (value) => value.toMap()),
      'executeActionDuration': executeActionDuration,
      'executeActionInitiatedBy': executeActionInitiatedBy,
      'executeActionInitiatedTime': executeActionInitiatedTime,
      'executeActionStartTime': executeActionStartTime,
      'id': id,
      'implementationDetails': implementationDetails.toMap(),
      'isArchivedAction': isArchivedAction,
      'isExecutableAction': isExecutableAction,
      'isRevertableAction': isRevertableAction,
      'kind': kind,
      'lastRefresh': lastRefresh,
      'linkedObjects': linkedObjects,
      'location': location,
      'name': name,
      'observedImpact': pulumi.Input.encodeList<RecommendedActionImpactRecordResponse, Map<String, dynamic>>(observedImpact, (value) => value.toMap()),
      'recommendationReason': recommendationReason,
      'revertActionDuration': revertActionDuration,
      'revertActionInitiatedBy': revertActionInitiatedBy,
      'revertActionInitiatedTime': revertActionInitiatedTime,
      'revertActionStartTime': revertActionStartTime,
      'score': score,
      'state': state.toMap(),
      'timeSeries': pulumi.Input.encodeList<RecommendedActionMetricInfoResponse, Map<String, dynamic>>(timeSeries, (value) => value.toMap()),
      'type': type,
      'validSince': validSince,
    };
  }

  factory RecommendedActionResponse.fromMap(Map<String, dynamic> map) {
    return RecommendedActionResponse(
      details: (map['details'] as Map).cast<String, String>(),
      errorDetails: RecommendedActionErrorInfoResponse.fromMap((map['errorDetails'] as Map).cast<String, dynamic>()),
      estimatedImpact: pulumi.Input.decodeList<RecommendedActionImpactRecordResponse>(map['estimatedImpact'], (value) => RecommendedActionImpactRecordResponse.fromMap((value as Map).cast<String, dynamic>())),
      executeActionDuration: map['executeActionDuration'] as String,
      executeActionInitiatedBy: map['executeActionInitiatedBy'] as String,
      executeActionInitiatedTime: map['executeActionInitiatedTime'] as String,
      executeActionStartTime: map['executeActionStartTime'] as String,
      id: map['id'] as String,
      implementationDetails: RecommendedActionImplementationInfoResponse.fromMap((map['implementationDetails'] as Map).cast<String, dynamic>()),
      isArchivedAction: map['isArchivedAction'] as bool,
      isExecutableAction: map['isExecutableAction'] as bool,
      isRevertableAction: map['isRevertableAction'] as bool,
      kind: map['kind'] as String,
      lastRefresh: map['lastRefresh'] as String,
      linkedObjects: (map['linkedObjects'] as List).cast<String>(),
      location: map['location'] as String,
      name: map['name'] as String,
      observedImpact: pulumi.Input.decodeList<RecommendedActionImpactRecordResponse>(map['observedImpact'], (value) => RecommendedActionImpactRecordResponse.fromMap((value as Map).cast<String, dynamic>())),
      recommendationReason: map['recommendationReason'] as String,
      revertActionDuration: map['revertActionDuration'] as String,
      revertActionInitiatedBy: map['revertActionInitiatedBy'] as String,
      revertActionInitiatedTime: map['revertActionInitiatedTime'] as String,
      revertActionStartTime: map['revertActionStartTime'] as String,
      score: map['score'] as int,
      state: RecommendedActionStateInfoResponse.fromMap((map['state'] as Map).cast<String, dynamic>()),
      timeSeries: pulumi.Input.decodeList<RecommendedActionMetricInfoResponse>(map['timeSeries'], (value) => RecommendedActionMetricInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
      validSince: map['validSince'] as String,
    );
  }
}

