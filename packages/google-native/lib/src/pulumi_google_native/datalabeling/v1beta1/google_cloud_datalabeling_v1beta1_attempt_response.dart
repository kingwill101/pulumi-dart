// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_rpc_status_response4.dart';

/// Records a failed evaluation job run.
class GoogleCloudDatalabelingV1beta1AttemptResponse {
  final String attemptTime;

  /// Details of errors that occurred.
  final List<GoogleRpcStatusResponse4> partialFailures;

  GoogleCloudDatalabelingV1beta1AttemptResponse({
    required this.attemptTime,
    required this.partialFailures,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attemptTime'] = attemptTime;
    map['partialFailures'] =
        Input.encodeList<GoogleRpcStatusResponse4, Map<String, dynamic>>(
            partialFailures, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudDatalabelingV1beta1AttemptResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1AttemptResponse(
      attemptTime: map['attemptTime'] as String,
      partialFailures: Input.decodeList<GoogleRpcStatusResponse4>(
          map['partialFailures'],
          (value) => GoogleRpcStatusResponse4.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
