// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_beyondcorp_appconnectors_v1alpha_resource_info_status.dart';

/// ResourceInfo represents the information/status of an app connector resource. Such as: - remote_agent - container - runtime - appgateway - appconnector - appconnection - tunnel - logagent
class GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo {
  /// Unique Id for the resource.
  final String id;

  /// Specific details for the resource. This is for internal use only.
  final Map<String, String>? resource;

  /// Overall health status. Overall status is derived based on the status of each sub level resources.
  final GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfoStatus? status;

  /// List of Info for the sub level resources.
  final List<GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo>? sub;

  /// The timestamp to collect the info. It is suggested to be set by the topmost level resource only.
  final String? time;

  GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo({
    required this.id,
    this.resource,
    this.status,
    this.sub,
    this.time,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    final resourceValue = resource;
    if (resourceValue != null) {
      map['resource'] = resourceValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue.value;
    }
    final subValue = sub;
    if (subValue != null) {
      map['sub'] = Input.encodeList<
          GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo,
          Map<String, dynamic>>(subValue, (value) => value.toMap());
    }
    final timeValue = time;
    if (timeValue != null) {
      map['time'] = timeValue;
    }
    return map;
  }

  factory GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo(
      id: map['id'] as String,
      resource: map['resource'] == null
          ? null
          : (map['resource'] as Map).cast<String, String>(),
      status: map['status'] == null
          ? null
          : GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfoStatus
              .fromValue(map['status'] as String),
      sub: map['sub'] == null
          ? null
          : Input.decodeList<
                  GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo>(
              map['sub'],
              (value) =>
                  GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo.fromMap(
                      (value as Map).cast<String, dynamic>())),
      time: map['time'] == null ? null : map['time'] as String,
    );
  }
}
