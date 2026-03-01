// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization.dart';
import 'eligible_authorization.dart';

/// The properties of a registration definition.
class RegistrationDefinitionProperties {
  /// The collection of authorization objects describing the access Azure Active Directory principals in the managedBy tenant will receive on the delegated resource in the managed tenant.
  final List<Authorization> authorizations;
  /// The description of the registration definition.
  final String? description;
  /// The collection of eligible authorization objects describing the just-in-time access Azure Active Directory principals in the managedBy tenant will receive on the delegated resource in the managed tenant.
  final List<EligibleAuthorization>? eligibleAuthorizations;
  /// The identifier of the managedBy tenant.
  final String managedByTenantId;
  /// The name of the registration definition.
  final String? registrationDefinitionName;

  /// Creates a new [RegistrationDefinitionProperties].
  /// [authorizations] The collection of authorization objects describing the access Azure Active Directory principals in the managedBy tenant will receive on the delegated resource in the managed tenant.
  /// [description] The description of the registration definition.
  /// [eligibleAuthorizations] The collection of eligible authorization objects describing the just-in-time access Azure Active Directory principals in the managedBy tenant will receive on the delegated resource in the managed tenant.
  /// [managedByTenantId] The identifier of the managedBy tenant.
  /// [registrationDefinitionName] The name of the registration definition.
  RegistrationDefinitionProperties({
    required this.authorizations,
    this.description,
    this.eligibleAuthorizations,
    required this.managedByTenantId,
    this.registrationDefinitionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizations': pulumi.Input.encodeList<Authorization, Map<String, dynamic>>(authorizations, (value) => value.toMap()),
      'description': ?description,
      'eligibleAuthorizations': ?eligibleAuthorizations == null ? null : pulumi.Input.encodeList<EligibleAuthorization, Map<String, dynamic>>(eligibleAuthorizations!, (value) => value.toMap()),
      'managedByTenantId': managedByTenantId,
      'registrationDefinitionName': ?registrationDefinitionName,
    };
  }

  factory RegistrationDefinitionProperties.fromMap(Map<String, dynamic> map) {
    return RegistrationDefinitionProperties(
      authorizations: pulumi.Input.decodeList<Authorization>(map['authorizations'], (value) => Authorization.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      eligibleAuthorizations: map['eligibleAuthorizations'] == null ? null : pulumi.Input.decodeList<EligibleAuthorization>(map['eligibleAuthorizations'], (value) => EligibleAuthorization.fromMap((value as Map).cast<String, dynamic>())),
      managedByTenantId: map['managedByTenantId'] as String,
      registrationDefinitionName: map['registrationDefinitionName'] == null ? null : map['registrationDefinitionName'] as String,
    );
  }
}

