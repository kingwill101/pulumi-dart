// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for GcpUserAccessBinding.
class GcpUserAccessBindingArgs {
  /// Optional. Access level that a user must have to be granted access. Only one access level is supported, not multiple. This repeated field must have exactly one element. Example: "accessPolicies/9522/accessLevels/device_trusted"
  final Input<List<String>>? accessLevels;

  /// Optional. Dry run access level that will be evaluated but will not be enforced. The access denial based on dry run policy will be logged. Only one access level is supported, not multiple. This list must have exactly one element. Example: "accessPolicies/9522/accessLevels/device_trusted"
  final Input<List<String>>? dryRunAccessLevels;

  /// Immutable. Google Group id whose members are subject to this binding's restrictions. See "id" in the [G Suite Directory API's Groups resource] (https://developers.google.com/admin-sdk/directory/v1/reference/groups#resource). If a group's email address/alias is changed, this resource will continue to point at the changed group. This field does not accept group email addresses or aliases. Example: "01d520gv4vjcrht"
  final Input<String> groupKey;

  /// Immutable. Assigned by the server during creation. The last segment has an arbitrary length and has only URI unreserved characters (as defined by [RFC 3986 Section 2.3](https://tools.ietf.org/html/rfc3986#section-2.3)). Should not be specified by the client during creation. Example: "organizations/256/gcpUserAccessBindings/b3-BhcX_Ud5N"
  final Input<String>? name;
  final Input<String> organizationId;

  GcpUserAccessBindingArgs({
    this.accessLevels,
    this.dryRunAccessLevels,
    required this.groupKey,
    this.name,
    required this.organizationId,
  });

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
      accessLevels: Input.asOptionalInput<List<String>>(map['accessLevels']),
      dryRunAccessLevels:
          Input.asOptionalInput<List<String>>(map['dryRunAccessLevels']),
      groupKey: Input.asInput<String>(map['groupKey']),
      name: Input.asOptionalInput<String>(map['name']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
