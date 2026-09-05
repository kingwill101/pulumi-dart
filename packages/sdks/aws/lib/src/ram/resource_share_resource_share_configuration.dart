// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceShareResourceShareConfiguration {
  /// Whether consumer account retains access to resource share after leaving AWS organization.
  final pulumi.Input<bool?>? retainSharingOnAccountLeaveOrganization;

  /// Creates a new [ResourceShareResourceShareConfiguration].
  /// [retainSharingOnAccountLeaveOrganization] Whether consumer account retains access to resource share after leaving AWS organization.
  const ResourceShareResourceShareConfiguration({
    this.retainSharingOnAccountLeaveOrganization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retainSharingOnAccountLeaveOrganization': ?retainSharingOnAccountLeaveOrganization,
    };
  }

  factory ResourceShareResourceShareConfiguration.fromMap(Map<String, dynamic> map) {
    return ResourceShareResourceShareConfiguration(
      retainSharingOnAccountLeaveOrganization: (() { final guardedValue = map['retainSharingOnAccountLeaveOrganization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
