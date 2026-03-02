// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_response.dart';
import 'eligible_authorization_response.dart';

/// The properties of the registration definition associated with the registration assignment.
class RegistrationAssignmentPropertiesResponseProperties {
  /// The collection of authorization objects describing the access Azure Active Directory principals in the managedBy tenant will receive on the delegated resource in the managed tenant.
  final pulumi.Input<List<AuthorizationResponse>>? authorizations;
  /// The description of the registration definition.
  final pulumi.Input<String>? description;
  /// The collection of eligible authorization objects describing the just-in-time access Azure Active Directory principals in the managedBy tenant will receive on the delegated resource in the managed tenant.
  final pulumi.Input<List<EligibleAuthorizationResponse>>? eligibleAuthorizations;
  /// The identifier of the managedBy tenant.
  final pulumi.Input<String>? managedByTenantId;
  /// The name of the managedBy tenant.
  final pulumi.Input<String>? managedByTenantName;
  /// The identifier of the managed tenant.
  final pulumi.Input<String>? manageeTenantId;
  /// The name of the managed tenant.
  final pulumi.Input<String>? manageeTenantName;
  /// The current provisioning state of the registration definition.
  final pulumi.Input<String>? provisioningState;
  /// The name of the registration definition.
  final pulumi.Input<String>? registrationDefinitionName;

  /// Creates a new [RegistrationAssignmentPropertiesResponseProperties].
  /// [authorizations] The collection of authorization objects describing the access Azure Active Directory principals in the managedBy tenant will receive on the delegated resource in the managed tenant.
  /// [description] The description of the registration definition.
  /// [eligibleAuthorizations] The collection of eligible authorization objects describing the just-in-time access Azure Active Directory principals in the managedBy tenant will receive on the delegated resource in the managed tenant.
  /// [managedByTenantId] The identifier of the managedBy tenant.
  /// [managedByTenantName] The name of the managedBy tenant.
  /// [manageeTenantId] The identifier of the managed tenant.
  /// [manageeTenantName] The name of the managed tenant.
  /// [provisioningState] The current provisioning state of the registration definition.
  /// [registrationDefinitionName] The name of the registration definition.
  RegistrationAssignmentPropertiesResponseProperties({
    this.authorizations,
    this.description,
    this.eligibleAuthorizations,
    this.managedByTenantId,
    this.managedByTenantName,
    this.manageeTenantId,
    this.manageeTenantName,
    this.provisioningState,
    this.registrationDefinitionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizations': ?pulumi.Input.mapOptionalInputValue<List<AuthorizationResponse>, List<Map<String, dynamic>>>(authorizations, (value) => pulumi.Input.encodeList<AuthorizationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'eligibleAuthorizations': ?pulumi.Input.mapOptionalInputValue<List<EligibleAuthorizationResponse>, List<Map<String, dynamic>>>(eligibleAuthorizations, (value) => pulumi.Input.encodeList<EligibleAuthorizationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'managedByTenantId': ?managedByTenantId,
      'managedByTenantName': ?managedByTenantName,
      'manageeTenantId': ?manageeTenantId,
      'manageeTenantName': ?manageeTenantName,
      'provisioningState': ?provisioningState,
      'registrationDefinitionName': ?registrationDefinitionName,
    };
  }

  factory RegistrationAssignmentPropertiesResponseProperties.fromMap(Map<String, dynamic> map) {
    return RegistrationAssignmentPropertiesResponseProperties(
      authorizations: map['authorizations'] == null ? null : (pulumi.Input.decodeList<AuthorizationResponse>(map['authorizations']!, (value) => AuthorizationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      eligibleAuthorizations: map['eligibleAuthorizations'] == null ? null : (pulumi.Input.decodeList<EligibleAuthorizationResponse>(map['eligibleAuthorizations']!, (value) => EligibleAuthorizationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      managedByTenantId: map['managedByTenantId'] == null ? null : (map['managedByTenantId']! as String).input(),
      managedByTenantName: map['managedByTenantName'] == null ? null : (map['managedByTenantName']! as String).input(),
      manageeTenantId: map['manageeTenantId'] == null ? null : (map['manageeTenantId']! as String).input(),
      manageeTenantName: map['manageeTenantName'] == null ? null : (map['manageeTenantName']! as String).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState']! as String).input(),
      registrationDefinitionName: map['registrationDefinitionName'] == null ? null : (map['registrationDefinitionName']! as String).input(),
    );
  }
}

