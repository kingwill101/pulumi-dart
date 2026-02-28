// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_accesscontextmanager_v1_gcp_user_access_binding_args_doc}
/// The set of arguments for GcpUserAccessBinding.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_v1_gcp_user_access_binding_args_doc}
class GcpUserAccessBindingArgs {
  /// Optional. Access level that a user must have to be granted access. Only one access level is supported, not multiple. This repeated field must have exactly one element. Example: "accessPolicies/9522/accessLevels/device_trusted"
  final pulumi.Input<List<String>>? accessLevels;

  /// Optional. Dry run access level that will be evaluated but will not be enforced. The access denial based on dry run policy will be logged. Only one access level is supported, not multiple. This list must have exactly one element. Example: "accessPolicies/9522/accessLevels/device_trusted"
  final pulumi.Input<List<String>>? dryRunAccessLevels;

  /// Immutable. Google Group id whose members are subject to this binding's restrictions. See "id" in the [G Suite Directory API's Groups resource] (https://developers.google.com/admin-sdk/directory/v1/reference/groups#resource). If a group's email address/alias is changed, this resource will continue to point at the changed group. This field does not accept group email addresses or aliases. Example: "01d520gv4vjcrht"
  final pulumi.Input<String> groupKey;

  /// Immutable. Assigned by the server during creation. The last segment has an arbitrary length and has only URI unreserved characters (as defined by [RFC 3986 Section 2.3](https://tools.ietf.org/html/rfc3986#section-2.3)). Should not be specified by the client during creation. Example: "organizations/256/gcpUserAccessBindings/b3-BhcX_Ud5N"
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GcpUserAccessBindingArgs].
  /// [accessLevels] Optional. Access level that a user must have to be granted access. Only one access level is supported, not multiple. This repeated field must have exactly one element. Example: "accessPolicies/9522/accessLevels/device_trusted"
  /// [dryRunAccessLevels] Optional. Dry run access level that will be evaluated but will not be enforced. The access denial based on dry run policy will be logged. Only one access level is supported, not multiple. This list must have exactly one element. Example: "accessPolicies/9522/accessLevels/device_trusted"
  /// [groupKey] Immutable. Google Group id whose members are subject to this binding's restrictions. See "id" in the [G Suite Directory API's Groups resource] (https://developers.google.com/admin-sdk/directory/v1/reference/groups#resource). If a group's email address/alias is changed, this resource will continue to point at the changed group. This field does not accept group email addresses or aliases. Example: "01d520gv4vjcrht"
  /// [name] Immutable. Assigned by the server during creation. The last segment has an arbitrary length and has only URI unreserved characters (as defined by [RFC 3986 Section 2.3](https://tools.ietf.org/html/rfc3986#section-2.3)). Should not be specified by the client during creation. Example: "organizations/256/gcpUserAccessBindings/b3-BhcX_Ud5N"
  /// [organizationId] Required.
  GcpUserAccessBindingArgs({
    List<String>? accessLevels,
    List<String>? dryRunAccessLevels,
    required String groupKey,
    String? name,
    required String organizationId,
  })  : accessLevels = pulumi.Input.asOptionalInput<List<String>>(accessLevels),
        dryRunAccessLevels =
            pulumi.Input.asOptionalInput<List<String>>(dryRunAccessLevels),
        groupKey = pulumi.Input.asInput<String>(groupKey),
        name = pulumi.Input.asOptionalInput<String>(name),
        organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessLevelsValue = accessLevels;
    if (accessLevelsValue != null) {
      map['accessLevels'] = accessLevelsValue;
    }
    final dryRunAccessLevelsValue = dryRunAccessLevels;
    if (dryRunAccessLevelsValue != null) {
      map['dryRunAccessLevels'] = dryRunAccessLevelsValue;
    }
    map['groupKey'] = groupKey;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['organizationId'] = organizationId;
    return map;
  }

  factory GcpUserAccessBindingArgs.fromMap(Map<String, dynamic> map) {
    return GcpUserAccessBindingArgs(
      accessLevels: map['accessLevels'] == null
          ? null
          : (map['accessLevels'] as List).cast<String>(),
      dryRunAccessLevels: map['dryRunAccessLevels'] == null
          ? null
          : (map['dryRunAccessLevels'] as List).cast<String>(),
      groupKey: map['groupKey'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
