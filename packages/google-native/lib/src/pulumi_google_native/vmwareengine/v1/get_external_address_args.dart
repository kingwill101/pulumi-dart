// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getExternalAddress.
class GetExternalAddressArgs {
  final Input<String> externalAddressId;
  final Input<String> location;
  final Input<String> privateCloudId;
  final Input<String>? project;

  GetExternalAddressArgs({
    required this.externalAddressId,
    required this.location,
    required this.privateCloudId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['externalAddressId'] = externalAddressId;
    map['location'] = location;
    map['privateCloudId'] = privateCloudId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetExternalAddressArgs.fromMap(Map<String, dynamic> map) {
    return GetExternalAddressArgs(
      externalAddressId: Input.asInput<String>(map['externalAddressId']),
      location: Input.asInput<String>(map['location']),
      privateCloudId: Input.asInput<String>(map['privateCloudId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
