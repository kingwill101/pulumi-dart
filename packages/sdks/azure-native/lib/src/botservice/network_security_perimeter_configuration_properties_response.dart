// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_security_perimeter_response.dart';
import 'profile_response.dart';
import 'provisioning_issue_response.dart';
import 'resource_association_response.dart';

/// Properties of Network Security Perimeter configuration
class NetworkSecurityPerimeterConfigurationPropertiesResponse {
  /// Information about Network Security Perimeter
  final pulumi.Input<NetworkSecurityPerimeterResponse> networkSecurityPerimeter;
  /// Information about profile
  final pulumi.Input<ProfileResponse> profile;
  /// List of Provisioning Issues if any
  final pulumi.Input<List<ProvisioningIssueResponse>>? provisioningIssues;
  final pulumi.Input<String>? provisioningState;
  /// Information about resource association
  final pulumi.Input<ResourceAssociationResponse> resourceAssociation;

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
      'networkSecurityPerimeter': pulumi.Input.mapInputValue<NetworkSecurityPerimeterResponse, Map<String, dynamic>>(networkSecurityPerimeter, (value) => value.toMap()),
      'profile': pulumi.Input.mapInputValue<ProfileResponse, Map<String, dynamic>>(profile, (value) => value.toMap()),
      'provisioningIssues': ?pulumi.Input.mapOptionalInputValue<List<ProvisioningIssueResponse>, List<Map<String, dynamic>>>(provisioningIssues, (value) => pulumi.Input.encodeList<ProvisioningIssueResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': ?provisioningState,
      'resourceAssociation': pulumi.Input.mapInputValue<ResourceAssociationResponse, Map<String, dynamic>>(resourceAssociation, (value) => value.toMap()),
    };
  }

  factory NetworkSecurityPerimeterConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return NetworkSecurityPerimeterConfigurationPropertiesResponse(
      networkSecurityPerimeter: (NetworkSecurityPerimeterResponse.fromMap((map['networkSecurityPerimeter'] as Map).cast<String, dynamic>())).input(),
      profile: (ProfileResponse.fromMap((map['profile'] as Map).cast<String, dynamic>())).input(),
      provisioningIssues: map['provisioningIssues'] == null ? null : (pulumi.Input.decodeList<ProvisioningIssueResponse>(map['provisioningIssues'], (value) => ProvisioningIssueResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState'] as String).input(),
      resourceAssociation: (ResourceAssociationResponse.fromMap((map['resourceAssociation'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

