// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provisioning_issue_properties_response.dart';

/// Describes Provisioning issue for given Network Security Perimeter configuration
class ProvisioningIssueResponse {
  /// Name of the issue
  final pulumi.Input<String>? name;
  /// Properties of Provisioning Issue
  final pulumi.Input<ProvisioningIssuePropertiesResponse> properties;

  /// Creates a new [ProvisioningIssueResponse].
  /// [name] Name of the issue
  /// [properties] Properties of Provisioning Issue
  const ProvisioningIssueResponse({
    this.name,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': pulumi.Input.mapInputValue<ProvisioningIssuePropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory ProvisioningIssueResponse.fromMap(Map<String, dynamic> map) {
    return ProvisioningIssueResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(ProvisioningIssuePropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>())),
    );
  }
}
