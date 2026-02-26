// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for FirewallPolicy.
class FirewallPolicyArgs {
  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// The parent of the firewall policy.
  final Input<String> parent;

  /// User-provided name of the Organization firewall policy. The name should be unique in the organization in which the firewall policy is created.
  /// This field is not applicable to network firewall policies. This name must be set on creation and cannot be changed. The name must be 1-63 characters long, and comply with RFC1035.
  /// Specifically, the name must be 1-63 characters long and match the regular expression a-z? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String> shortName;

  FirewallPolicyArgs({
    this.description,
    required this.parent,
    required this.shortName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['parent'] = parent;
    map['shortName'] = shortName;
    return map;
  }

  factory FirewallPolicyArgs.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyArgs(
      description: Input.asOptionalInput<String>(map['description']),
      parent: Input.asInput<String>(map['parent']),
      shortName: Input.asInput<String>(map['shortName']),
    );
  }
}
