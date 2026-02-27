// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// ResourceInfo represents the information/status of the associated resource.
class ResourceInfoResponse {
  /// Specific details for the resource.
  final Map<String, String> resource;

  /// Overall health status. Overall status is derived based on the status of each sub level resources.
  final String status;

  /// List of Info for the sub level resources.
  final List<ResourceInfoResponse> sub;

  /// The timestamp to collect the info. It is suggested to be set by the topmost level resource only.
  final String time;

  ResourceInfoResponse({
    required this.resource,
    required this.status,
    required this.sub,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resource'] = resource;
    map['status'] = status;
    map['sub'] = Input.encodeList<ResourceInfoResponse, Map<String, dynamic>>(
        sub, (value) => value.toMap());
    map['time'] = time;
    return map;
  }

  factory ResourceInfoResponse.fromMap(Map<String, dynamic> map) {
    return ResourceInfoResponse(
      resource: (map['resource'] as Map).cast<String, String>(),
      status: map['status'] as String,
      sub: Input.decodeList<ResourceInfoResponse>(
          map['sub'],
          (value) => ResourceInfoResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      time: map['time'] as String,
    );
  }
}
