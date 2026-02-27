// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAddressGroup.
class GetAddressGroupNetworksecurityV1beta1Args {
  final pulumi.Input<String> addressGroupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetAddressGroupNetworksecurityV1beta1Args({
    required this.addressGroupId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['addressGroupId'] = addressGroupId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAddressGroupNetworksecurityV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetAddressGroupNetworksecurityV1beta1Args(
      addressGroupId: pulumi.Input.asInput<String>(map['addressGroupId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
