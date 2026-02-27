// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getManagedZoneIamPolicy.
class GetManagedZoneIamPolicyDnsV1beta2Args {
  final pulumi.Input<String> managedZone;
  final pulumi.Input<String>? project;

  GetManagedZoneIamPolicyDnsV1beta2Args({
    required this.managedZone,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['managedZone'] = managedZone;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetManagedZoneIamPolicyDnsV1beta2Args.fromMap(
      Map<String, dynamic> map) {
    return GetManagedZoneIamPolicyDnsV1beta2Args(
      managedZone: pulumi.Input.asInput<String>(map['managedZone']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
