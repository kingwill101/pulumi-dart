// ignore_for_file: unused_element, unnecessary_cast

import 'provisioning_issue_properties_response.dart';

/// Describes Provisioning issue for given Network Security Perimeter configuration
class ProvisioningIssueResponse {
  /// Name of the issue
  final String? name;
  /// Properties of Provisioning Issue
  final ProvisioningIssuePropertiesResponse properties;

  /// Creates a new [ProvisioningIssueResponse].
  /// [name] Name of the issue
  /// [properties] Properties of Provisioning Issue
  ProvisioningIssueResponse({
    this.name,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': properties.toMap(),
    };
  }

  factory ProvisioningIssueResponse.fromMap(Map<String, dynamic> map) {
    return ProvisioningIssueResponse(
      name: map['name'] == null ? null : map['name'] as String,
      properties: ProvisioningIssuePropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

