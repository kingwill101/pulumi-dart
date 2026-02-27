// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getExternalAddress.
class GetExternalAddressArgs {
  final pulumi.Input<String> externalAddressId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> privateCloudId;
  final pulumi.Input<String>? project;

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
      externalAddressId: pulumi.Input.asInput<String>(map['externalAddressId']),
      location: pulumi.Input.asInput<String>(map['location']),
      privateCloudId: pulumi.Input.asInput<String>(map['privateCloudId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
