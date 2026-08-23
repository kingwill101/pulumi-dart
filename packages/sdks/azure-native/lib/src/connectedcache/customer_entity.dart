// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model representing Customer resource for ConnectedCache resource
class CustomerEntity {
  /// Customer resource client tenant Id of subscription.
  final pulumi.Input<String>? clientTenantId;
  /// Customer resource contact email.
  final pulumi.Input<String>? contactEmail;
  /// Customer resource contact full name.
  final pulumi.Input<String>? contactName;
  /// Customer resource contact phone.
  final pulumi.Input<String>? contactPhone;
  /// Customer resource name.
  final pulumi.Input<String>? customerName;
  /// Customer resource Azure fully qualified resource Id.
  final pulumi.Input<String>? fullyQualifiedResourceId;
  /// Customer resource flag for enterprise management as boolean.
  final pulumi.Input<bool>? isEnterpriseManaged;
  /// Customer resource entitlement flag as boolean.
  final pulumi.Input<bool>? isEntitled;
  /// Customer resource Mcc release version.
  final pulumi.Input<int>? releaseVersion;
  /// Customer resource flag for resending signup code as boolean.
  final pulumi.Input<bool>? resendSignupCode;
  /// Customer resource flag for migration.
  final pulumi.Input<bool>? shouldMigrate;
  /// Customer resource flag for requiring verification of signup code as boolean.
  final pulumi.Input<bool>? verifySignupCode;
  /// Customer resource phrase for verifying signup.
  final pulumi.Input<String>? verifySignupPhrase;

  /// Creates a new [CustomerEntity].
  /// [clientTenantId] Customer resource client tenant Id of subscription.
  /// [contactEmail] Customer resource contact email.
  /// [contactName] Customer resource contact full name.
  /// [contactPhone] Customer resource contact phone.
  /// [customerName] Customer resource name.
  /// [fullyQualifiedResourceId] Customer resource Azure fully qualified resource Id.
  /// [isEnterpriseManaged] Customer resource flag for enterprise management as boolean.
  /// [isEntitled] Customer resource entitlement flag as boolean.
  /// [releaseVersion] Customer resource Mcc release version.
  /// [resendSignupCode] Customer resource flag for resending signup code as boolean.
  /// [shouldMigrate] Customer resource flag for migration.
  /// [verifySignupCode] Customer resource flag for requiring verification of signup code as boolean.
  /// [verifySignupPhrase] Customer resource phrase for verifying signup.
  const CustomerEntity({
    this.clientTenantId,
    this.contactEmail,
    this.contactName,
    this.contactPhone,
    this.customerName,
    this.fullyQualifiedResourceId,
    this.isEnterpriseManaged,
    this.isEntitled,
    this.releaseVersion,
    this.resendSignupCode,
    this.shouldMigrate,
    this.verifySignupCode,
    this.verifySignupPhrase,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientTenantId': ?clientTenantId,
      'contactEmail': ?contactEmail,
      'contactName': ?contactName,
      'contactPhone': ?contactPhone,
      'customerName': ?customerName,
      'fullyQualifiedResourceId': ?fullyQualifiedResourceId,
      'isEnterpriseManaged': ?isEnterpriseManaged,
      'isEntitled': ?isEntitled,
      'releaseVersion': ?releaseVersion,
      'resendSignupCode': ?resendSignupCode,
      'shouldMigrate': ?shouldMigrate,
      'verifySignupCode': ?verifySignupCode,
      'verifySignupPhrase': ?verifySignupPhrase,
    };
  }

  factory CustomerEntity.fromMap(Map<String, dynamic> map) {
    return CustomerEntity(
      clientTenantId: (() { final guardedValue = map['clientTenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contactEmail: (() { final guardedValue = map['contactEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contactName: (() { final guardedValue = map['contactName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contactPhone: (() { final guardedValue = map['contactPhone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerName: (() { final guardedValue = map['customerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fullyQualifiedResourceId: (() { final guardedValue = map['fullyQualifiedResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isEnterpriseManaged: (() { final guardedValue = map['isEnterpriseManaged']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isEntitled: (() { final guardedValue = map['isEntitled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      releaseVersion: (() { final guardedValue = map['releaseVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resendSignupCode: (() { final guardedValue = map['resendSignupCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      shouldMigrate: (() { final guardedValue = map['shouldMigrate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      verifySignupCode: (() { final guardedValue = map['verifySignupCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      verifySignupPhrase: (() { final guardedValue = map['verifySignupPhrase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
