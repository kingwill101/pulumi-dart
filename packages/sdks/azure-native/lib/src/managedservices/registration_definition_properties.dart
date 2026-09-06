// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization.dart';
import 'eligible_authorization.dart';

/// The properties of a registration definition.
class RegistrationDefinitionProperties {
  /// The collection of authorization objects describing the access Azure Active Directory principals in the managedBy tenant will receive on the delegated resource in the managed tenant.
  final pulumi.Input<List<Authorization>> authorizations;
  /// The description of the registration definition.
  final pulumi.Input<String?>? description;
  /// The collection of eligible authorization objects describing the just-in-time access Azure Active Directory principals in the managedBy tenant will receive on the delegated resource in the managed tenant.
  final pulumi.Input<List<EligibleAuthorization>?>? eligibleAuthorizations;
  /// The identifier of the managedBy tenant.
  final pulumi.Input<String> managedByTenantId;
  /// The name of the registration definition.
  final pulumi.Input<String?>? registrationDefinitionName;

  /// Creates a new [RegistrationDefinitionProperties].
  /// [authorizations] The collection of authorization objects describing the access Azure Active Directory principals in the managedBy tenant will receive on the delegated resource in the managed tenant.
  /// [description] The description of the registration definition.
  /// [eligibleAuthorizations] The collection of eligible authorization objects describing the just-in-time access Azure Active Directory principals in the managedBy tenant will receive on the delegated resource in the managed tenant.
  /// [managedByTenantId] The identifier of the managedBy tenant.
  /// [registrationDefinitionName] The name of the registration definition.
  const RegistrationDefinitionProperties({
    required this.authorizations,
    this.description,
    this.eligibleAuthorizations,
    required this.managedByTenantId,
    this.registrationDefinitionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizations': pulumi.Input.mapInputValue<List<Authorization>, List<Map<String, dynamic>>>(authorizations, (value) => pulumi.Input.encodeList<Authorization, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'eligibleAuthorizations': ?pulumi.Input.mapOptionalInputValue<List<EligibleAuthorization>, List<Map<String, dynamic>>>(eligibleAuthorizations, (value) => pulumi.Input.encodeList<EligibleAuthorization, Map<String, dynamic>>(value, (value) => value.toMap())),
      'managedByTenantId': managedByTenantId,
      'registrationDefinitionName': ?registrationDefinitionName,
    };
  }

  factory RegistrationDefinitionProperties.fromMap(Map<String, dynamic> map) {
    return RegistrationDefinitionProperties(
      authorizations: pulumi.Input.fromValue(pulumi.Input.decodeList<Authorization>(map['authorizations']!, (value) => Authorization.fromMap((value as Map).cast<String, dynamic>()))),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eligibleAuthorizations: (() { final guardedValue = map['eligibleAuthorizations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EligibleAuthorization>(guardedValue, (value) => EligibleAuthorization.fromMap((value as Map).cast<String, dynamic>()))); })(),
      managedByTenantId: pulumi.Input.fromValue(map['managedByTenantId'] as String),
      registrationDefinitionName: (() { final guardedValue = map['registrationDefinitionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
