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
  CustomerEntity({
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
      clientTenantId: map['clientTenantId'] == null ? null : (map['clientTenantId']! as String).input(),
      contactEmail: map['contactEmail'] == null ? null : (map['contactEmail']! as String).input(),
      contactName: map['contactName'] == null ? null : (map['contactName']! as String).input(),
      contactPhone: map['contactPhone'] == null ? null : (map['contactPhone']! as String).input(),
      customerName: map['customerName'] == null ? null : (map['customerName']! as String).input(),
      fullyQualifiedResourceId: map['fullyQualifiedResourceId'] == null ? null : (map['fullyQualifiedResourceId']! as String).input(),
      isEnterpriseManaged: map['isEnterpriseManaged'] == null ? null : (map['isEnterpriseManaged']! as bool).input(),
      isEntitled: map['isEntitled'] == null ? null : (map['isEntitled']! as bool).input(),
      releaseVersion: map['releaseVersion'] == null ? null : (map['releaseVersion']! as int).input(),
      resendSignupCode: map['resendSignupCode'] == null ? null : (map['resendSignupCode']! as bool).input(),
      shouldMigrate: map['shouldMigrate'] == null ? null : (map['shouldMigrate']! as bool).input(),
      verifySignupCode: map['verifySignupCode'] == null ? null : (map['verifySignupCode']! as bool).input(),
      verifySignupPhrase: map['verifySignupPhrase'] == null ? null : (map['verifySignupPhrase']! as String).input(),
    );
  }
}

