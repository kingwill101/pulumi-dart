// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'resource_info_status.dart';

/// ResourceInfo represents the information/status of the associated resource.
class ResourceInfo {
  /// Unique Id for the resource.
  final String id;

  /// Specific details for the resource.
  final Map<String, String>? resource;

  /// Overall health status. Overall status is derived based on the status of each sub level resources.
  final ResourceInfoStatus? status;

  /// List of Info for the sub level resources.
  final List<ResourceInfo>? sub;

  /// The timestamp to collect the info. It is suggested to be set by the topmost level resource only.
  final String? time;

  ResourceInfo({
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
      map['sub'] = Input.encodeList<ResourceInfo, Map<String, dynamic>>(
          subValue, (value) => value.toMap());
    }
    final timeValue = time;
    if (timeValue != null) {
      map['time'] = timeValue;
    }
    return map;
  }

  factory ResourceInfo.fromMap(Map<String, dynamic> map) {
    return ResourceInfo(
      id: map['id'] as String,
      resource: map['resource'] == null
          ? null
          : (map['resource'] as Map).cast<String, String>(),
      status: map['status'] == null
          ? null
          : ResourceInfoStatus.fromValue(map['status'] as String),
      sub: map['sub'] == null
          ? null
          : Input.decodeList<ResourceInfo>(
              map['sub'],
              (value) =>
                  ResourceInfo.fromMap((value as Map).cast<String, dynamic>())),
      time: map['time'] == null ? null : map['time'] as String,
    );
  }
}
