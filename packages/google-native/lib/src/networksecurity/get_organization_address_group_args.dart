// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1_get_organization_address_group_args_doc}
/// Arguments for getOrganizationAddressGroup.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1_get_organization_address_group_args_doc}
class GetOrganizationAddressGroupArgs {
  final pulumi.Input<String> addressGroupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetOrganizationAddressGroupArgs].
  /// [addressGroupId] Required.
  /// [location] Required.
  /// [organizationId] Required.
  GetOrganizationAddressGroupArgs({
    required String addressGroupId,
    required String location,
    required String organizationId,
  })  : addressGroupId = pulumi.Input.asInput<String>(addressGroupId),
        location = pulumi.Input.asInput<String>(location),
        organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['addressGroupId'] = addressGroupId;
    map['location'] = location;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetOrganizationAddressGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationAddressGroupArgs(
      addressGroupId: map['addressGroupId'] as String,
      location: map['location'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
