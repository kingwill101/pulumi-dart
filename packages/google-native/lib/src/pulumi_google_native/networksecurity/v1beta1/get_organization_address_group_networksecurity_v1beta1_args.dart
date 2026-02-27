// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOrganizationAddressGroup.
class GetOrganizationAddressGroupNetworksecurityV1beta1Args {
  final pulumi.Input<String> addressGroupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;

  GetOrganizationAddressGroupNetworksecurityV1beta1Args({
    required this.addressGroupId,
    required this.location,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['addressGroupId'] = addressGroupId;
    map['location'] = location;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetOrganizationAddressGroupNetworksecurityV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetOrganizationAddressGroupNetworksecurityV1beta1Args(
      addressGroupId: pulumi.Input.asInput<String>(map['addressGroupId']),
      location: pulumi.Input.asInput<String>(map['location']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
