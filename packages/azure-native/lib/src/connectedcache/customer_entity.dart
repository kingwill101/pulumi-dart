// ignore_for_file: unused_element, unnecessary_cast


/// Model representing Customer resource for ConnectedCache resource
class CustomerEntity {
  /// Customer resource client tenant Id of subscription.
  final String? clientTenantId;
  /// Customer resource contact email.
  final String? contactEmail;
  /// Customer resource contact full name.
  final String? contactName;
  /// Customer resource contact phone.
  final String? contactPhone;
  /// Customer resource name.
  final String? customerName;
  /// Customer resource Azure fully qualified resource Id.
  final String? fullyQualifiedResourceId;
  /// Customer resource flag for enterprise management as boolean.
  final bool? isEnterpriseManaged;
  /// Customer resource entitlement flag as boolean.
  final bool? isEntitled;
  /// Customer resource Mcc release version.
  final int? releaseVersion;
  /// Customer resource flag for resending signup code as boolean.
  final bool? resendSignupCode;
  /// Customer resource flag for migration.
  final bool? shouldMigrate;
  /// Customer resource flag for requiring verification of signup code as boolean.
  final bool? verifySignupCode;
  /// Customer resource phrase for verifying signup.
  final String? verifySignupPhrase;

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
      clientTenantId: map['clientTenantId'] == null ? null : map['clientTenantId'] as String,
      contactEmail: map['contactEmail'] == null ? null : map['contactEmail'] as String,
      contactName: map['contactName'] == null ? null : map['contactName'] as String,
      contactPhone: map['contactPhone'] == null ? null : map['contactPhone'] as String,
      customerName: map['customerName'] == null ? null : map['customerName'] as String,
      fullyQualifiedResourceId: map['fullyQualifiedResourceId'] == null ? null : map['fullyQualifiedResourceId'] as String,
      isEnterpriseManaged: map['isEnterpriseManaged'] == null ? null : map['isEnterpriseManaged'] as bool,
      isEntitled: map['isEntitled'] == null ? null : map['isEntitled'] as bool,
      releaseVersion: map['releaseVersion'] == null ? null : map['releaseVersion'] as int,
      resendSignupCode: map['resendSignupCode'] == null ? null : map['resendSignupCode'] as bool,
      shouldMigrate: map['shouldMigrate'] == null ? null : map['shouldMigrate'] as bool,
      verifySignupCode: map['verifySignupCode'] == null ? null : map['verifySignupCode'] as bool,
      verifySignupPhrase: map['verifySignupPhrase'] == null ? null : map['verifySignupPhrase'] as String,
    );
  }
}

