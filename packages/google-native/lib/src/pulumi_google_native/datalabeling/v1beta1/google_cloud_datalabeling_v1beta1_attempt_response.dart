// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_rpc_status_response_datalabeling_v1beta1.dart';

/// Records a failed evaluation job run.
class GoogleCloudDatalabelingV1beta1AttemptResponse {
  final String attemptTime;

  /// Details of errors that occurred.
  final List<GoogleRpcStatusResponseDatalabelingV1beta1> partialFailures;

  GoogleCloudDatalabelingV1beta1AttemptResponse({
    required this.attemptTime,
    required this.partialFailures,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attemptTime'] = attemptTime;
    map['partialFailures'] = pulumi.Input.encodeList<
        GoogleRpcStatusResponseDatalabelingV1beta1,
        Map<String, dynamic>>(partialFailures, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudDatalabelingV1beta1AttemptResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1AttemptResponse(
      attemptTime: map['attemptTime'] as String,
      partialFailures:
          pulumi.Input.decodeList<GoogleRpcStatusResponseDatalabelingV1beta1>(
              map['partialFailures'],
              (value) => GoogleRpcStatusResponseDatalabelingV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
