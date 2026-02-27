// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// ResourceInfo represents the information/status of an app connector resource. Such as: - remote_agent - container - runtime - appgateway - appconnector - appconnection - tunnel - logagent
class GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfoResponse {
  /// Specific details for the resource. This is for internal use only.
  final Map<String, String> resource;

  /// Overall health status. Overall status is derived based on the status of each sub level resources.
  final String status;

  /// List of Info for the sub level resources.
  final List<GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfoResponse> sub;

  /// The timestamp to collect the info. It is suggested to be set by the topmost level resource only.
  final String time;

  GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfoResponse({
    required this.resource,
    required this.status,
    required this.sub,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resource'] = resource;
    map['status'] = status;
    map['sub'] = Input.encodeList<
        GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfoResponse,
        Map<String, dynamic>>(sub, (value) => value.toMap());
    map['time'] = time;
    return map;
  }

  factory GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfoResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfoResponse(
      resource: (map['resource'] as Map).cast<String, String>(),
      status: map['status'] as String,
      sub: Input.decodeList<
              GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfoResponse>(
          map['sub'],
          (value) =>
              GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfoResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
      time: map['time'] as String,
    );
  }
}
