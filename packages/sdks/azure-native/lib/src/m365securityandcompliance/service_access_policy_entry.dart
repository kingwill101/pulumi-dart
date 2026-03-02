// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An access policy entry.
class ServiceAccessPolicyEntry {
  /// An Azure AD object ID (User or Apps) that is allowed access to the FHIR service.
  final pulumi.Input<String> objectId;

  /// Creates a new [ServiceAccessPolicyEntry].
  /// [objectId] An Azure AD object ID (User or Apps) that is allowed access to the FHIR service.
  ServiceAccessPolicyEntry({
    required this.objectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectId': objectId,
    };
  }

  factory ServiceAccessPolicyEntry.fromMap(Map<String, dynamic> map) {
    return ServiceAccessPolicyEntry(
      objectId: (map['objectId'] as String).input(),
    );
  }
}

