// ignore_for_file: unused_element, unnecessary_cast

import 'limit_response_patch_flowcontrol_apiserver_k8s_io_v1alpha1.dart';

/// LimitedPriorityLevelConfiguration specifies how to handle requests that are subject to limits. It addresses two issues:
/// * How are requests for this priority level limited?
/// * What should be done with requests that exceed the limit?
class LimitedPriorityLevelConfigurationPatchFlowcontrolApiserverK8sIoV1alpha1 {
  /// `assuredConcurrencyShares` (ACS) configures the execution limit, which is a limit on the number of requests of this priority level that may be exeucting at a given time.  ACS must be a positive number. The server's concurrency limit (SCL) is divided among the concurrency-controlled priority levels in proportion to their assured concurrency shares. This produces the assured concurrency value (ACV) --- the number of requests that may be executing at a time --- for each such priority level:
  ///
  /// ACV(l) = ceil( SCL * ACS(l) / ( sum[priority levels k] ACS(k) ) )
  ///
  /// bigger numbers of ACS mean more reserved concurrent requests (at the expense of every other PL). This field has a default value of 30.
  final int? assuredConcurrencyShares;
  /// `limitResponse` indicates what to do with requests that can not be executed right now
  final LimitResponsePatchFlowcontrolApiserverK8sIoV1alpha1? limitResponse;

  /// Creates a new [LimitedPriorityLevelConfigurationPatchFlowcontrolApiserverK8sIoV1alpha1].
  /// [assuredConcurrencyShares] `assuredConcurrencyShares` (ACS) configures the execution limit, which is a limit on the number of requests of this priority level that may be exeucting at a given time.  ACS must be a positive number. The server's concurrency limit (SCL) is divided among the concurrency-controlled priority levels in proportion to their assured concurrency shares. This produces the assured concurrency value (ACV) --- the number of requests that may be executing at a time --- for each such priority level:
  /// [limitResponse] `limitResponse` indicates what to do with requests that can not be executed right now
  LimitedPriorityLevelConfigurationPatchFlowcontrolApiserverK8sIoV1alpha1({
    this.assuredConcurrencyShares,
    this.limitResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assuredConcurrencyShares': ?assuredConcurrencyShares,
      'limitResponse': ?limitResponse == null ? null : limitResponse!.toMap(),
    };
  }

  factory LimitedPriorityLevelConfigurationPatchFlowcontrolApiserverK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return LimitedPriorityLevelConfigurationPatchFlowcontrolApiserverK8sIoV1alpha1(
      assuredConcurrencyShares: map['assuredConcurrencyShares'] == null ? null : map['assuredConcurrencyShares'] as int,
      limitResponse: map['limitResponse'] == null ? null : LimitResponsePatchFlowcontrolApiserverK8sIoV1alpha1.fromMap((map['limitResponse'] as Map).cast<String, dynamic>()),
    );
  }
}

