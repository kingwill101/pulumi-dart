// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOrganizationAddressGroup.
class GetOrganizationAddressGroupArgs {
  final pulumi.Input<String> addressGroupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;

  GetOrganizationAddressGroupArgs({
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

  factory GetOrganizationAddressGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationAddressGroupArgs(
      addressGroupId: pulumi.Input.asInput<String>(map['addressGroupId']),
      location: pulumi.Input.asInput<String>(map['location']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
