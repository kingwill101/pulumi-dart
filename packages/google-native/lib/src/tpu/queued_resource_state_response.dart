// ignore_for_file: unused_element, unnecessary_cast

import 'failed_data_response.dart';

/// QueuedResourceState defines the details of the QueuedResource request.
class QueuedResourceStateResponse {
  /// Further data for the accepted state.
  final Map<String, dynamic> acceptedData;
  /// Further data for the active state.
  final Map<String, dynamic> activeData;
  /// Further data for the creating state.
  final Map<String, dynamic> creatingData;
  /// Further data for the deleting state.
  final Map<String, dynamic> deletingData;
  /// Further data for the failed state.
  final FailedDataResponse failedData;
  /// Further data for the provisioning state.
  final Map<String, dynamic> provisioningData;
  /// State of the QueuedResource request.
  final String state;
  /// The initiator of the QueuedResources's current state.
  final String stateInitiator;
  /// Further data for the suspended state.
  final Map<String, dynamic> suspendedData;
  /// Further data for the suspending state.
  final Map<String, dynamic> suspendingData;

  /// Creates a new [QueuedResourceStateResponse].
  /// [acceptedData] Further data for the accepted state.
  /// [activeData] Further data for the active state.
  /// [creatingData] Further data for the creating state.
  /// [deletingData] Further data for the deleting state.
  /// [failedData] Further data for the failed state.
  /// [provisioningData] Further data for the provisioning state.
  /// [state] State of the QueuedResource request.
  /// [stateInitiator] The initiator of the QueuedResources's current state.
  /// [suspendedData] Further data for the suspended state.
  /// [suspendingData] Further data for the suspending state.
  QueuedResourceStateResponse({
    required this.acceptedData,
    required this.activeData,
    required this.creatingData,
    required this.deletingData,
    required this.failedData,
    required this.provisioningData,
    required this.state,
    required this.stateInitiator,
    required this.suspendedData,
    required this.suspendingData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptedData': acceptedData,
      'activeData': activeData,
      'creatingData': creatingData,
      'deletingData': deletingData,
      'failedData': failedData.toMap(),
      'provisioningData': provisioningData,
      'state': state,
      'stateInitiator': stateInitiator,
      'suspendedData': suspendedData,
      'suspendingData': suspendingData,
    };
  }

  factory QueuedResourceStateResponse.fromMap(Map<String, dynamic> map) {
    return QueuedResourceStateResponse(
      acceptedData: (map['acceptedData'] as Map).cast<String, dynamic>(),
      activeData: (map['activeData'] as Map).cast<String, dynamic>(),
      creatingData: (map['creatingData'] as Map).cast<String, dynamic>(),
      deletingData: (map['deletingData'] as Map).cast<String, dynamic>(),
      failedData: FailedDataResponse.fromMap((map['failedData'] as Map).cast<String, dynamic>()),
      provisioningData: (map['provisioningData'] as Map).cast<String, dynamic>(),
      state: map['state'] as String,
      stateInitiator: map['stateInitiator'] as String,
      suspendedData: (map['suspendedData'] as Map).cast<String, dynamic>(),
      suspendingData: (map['suspendingData'] as Map).cast<String, dynamic>(),
    );
  }
}

