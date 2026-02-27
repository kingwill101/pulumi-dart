// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getOrganizationAddressGroup.
class GetOrganizationAddressGroupArgs {
  final Input<String> addressGroupId;
  final Input<String> location;
  final Input<String> organizationId;

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
      addressGroupId: Input.asInput<String>(map['addressGroupId']),
      location: Input.asInput<String>(map['location']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
