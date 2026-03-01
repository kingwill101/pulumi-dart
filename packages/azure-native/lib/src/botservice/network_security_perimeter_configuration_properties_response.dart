// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_security_perimeter_response.dart';
import 'profile_response.dart';
import 'provisioning_issue_response.dart';
import 'resource_association_response.dart';

/// Properties of Network Security Perimeter configuration
class NetworkSecurityPerimeterConfigurationPropertiesResponse {
  /// Information about Network Security Perimeter
  final NetworkSecurityPerimeterResponse networkSecurityPerimeter;
  /// Information about profile
  final ProfileResponse profile;
  /// List of Provisioning Issues if any
  final List<ProvisioningIssueResponse>? provisioningIssues;
  final String? provisioningState;
  /// Information about resource association
  final ResourceAssociationResponse resourceAssociation;

  /// Creates a new [NetworkSecurityPerimeterConfigurationPropertiesResponse].
  /// [networkSecurityPerimeter] Information about Network Security Perimeter
  /// [profile] Information about profile
  /// [provisioningIssues] List of Provisioning Issues if any
  /// [provisioningState] Optional.
  /// [resourceAssociation] Information about resource association
  NetworkSecurityPerimeterConfigurationPropertiesResponse({
    required this.networkSecurityPerimeter,
    required this.profile,
    this.provisioningIssues,
    this.provisioningState,
    required this.resourceAssociation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkSecurityPerimeter': networkSecurityPerimeter.toMap(),
      'profile': profile.toMap(),
      'provisioningIssues': ?provisioningIssues == null ? null : pulumi.Input.encodeList<ProvisioningIssueResponse, Map<String, dynamic>>(provisioningIssues!, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'resourceAssociation': resourceAssociation.toMap(),
    };
  }

  factory NetworkSecurityPerimeterConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityPerimeterConfigurationPropertiesResponse(
      networkSecurityPerimeter: NetworkSecurityPerimeterResponse.fromMap((map['networkSecurityPerimeter'] as Map).cast<String, dynamic>()),
      profile: ProfileResponse.fromMap((map['profile'] as Map).cast<String, dynamic>()),
      provisioningIssues: map['provisioningIssues'] == null ? null : pulumi.Input.decodeList<ProvisioningIssueResponse>(map['provisioningIssues'], (value) => ProvisioningIssueResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      resourceAssociation: ResourceAssociationResponse.fromMap((map['resourceAssociation'] as Map).cast<String, dynamic>()),
    );
  }
}

