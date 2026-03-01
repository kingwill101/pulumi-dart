// ignore_for_file: unused_element, unnecessary_cast


/// Model representing Customer resource for ConnectedCache resource
class CustomerEntityResponse {
  /// Customer resource client tenant Id of subscription.
  final String? clientTenantId;
  /// Customer resource contact email.
  final String? contactEmail;
  /// Customer resource contact full name.
  final String? contactName;
  /// Customer resource contact phone.
  final String? contactPhone;
  /// Customer resource create async operation Id.
  final String createAsyncOperationId;
  /// Customer resource Guid Id.
  final String customerId;
  /// Customer resource name.
  final String? customerName;
  /// Customer resource deletion async operation Id.
  final String deleteAsyncOperationId;
  /// Customer resource Azure fully qualified resource Id.
  final String? fullyQualifiedResourceId;
  /// Customer resource flag for enterprise management as boolean.
  final bool? isEnterpriseManaged;
  /// Customer resource entitlement flag as boolean.
  final bool? isEntitled;
  /// Customer resource last Azure sync timestamp.
  final String lastSyncWithAzureTimestamp;
  /// Customer resource Mcc release version.
  final int? releaseVersion;
  /// Customer resource flag for resending signup code as boolean.
  final bool? resendSignupCode;
  /// Customer resource flag for migration.
  final bool? shouldMigrate;
  /// Customer resource sync attempts.
  final int synchWithAzureAttemptsCount;
  /// Customer resource flag for requiring verification of signup code as boolean.
  final bool? verifySignupCode;

  /// Creates a new [CustomerEntityResponse].
  /// [clientTenantId] Customer resource client tenant Id of subscription.
  /// [contactEmail] Customer resource contact email.
  /// [contactName] Customer resource contact full name.
  /// [contactPhone] Customer resource contact phone.
  /// [createAsyncOperationId] Customer resource create async operation Id.
  /// [customerId] Customer resource Guid Id.
  /// [customerName] Customer resource name.
  /// [deleteAsyncOperationId] Customer resource deletion async operation Id.
  /// [fullyQualifiedResourceId] Customer resource Azure fully qualified resource Id.
  /// [isEnterpriseManaged] Customer resource flag for enterprise management as boolean.
  /// [isEntitled] Customer resource entitlement flag as boolean.
  /// [lastSyncWithAzureTimestamp] Customer resource last Azure sync timestamp.
  /// [releaseVersion] Customer resource Mcc release version.
  /// [resendSignupCode] Customer resource flag for resending signup code as boolean.
  /// [shouldMigrate] Customer resource flag for migration.
  /// [synchWithAzureAttemptsCount] Customer resource sync attempts.
  /// [verifySignupCode] Customer resource flag for requiring verification of signup code as boolean.
  CustomerEntityResponse({
    this.clientTenantId,
    this.contactEmail,
    this.contactName,
    this.contactPhone,
    required this.createAsyncOperationId,
    required this.customerId,
    this.customerName,
    required this.deleteAsyncOperationId,
    this.fullyQualifiedResourceId,
    this.isEnterpriseManaged,
    this.isEntitled,
    required this.lastSyncWithAzureTimestamp,
    this.releaseVersion,
    this.resendSignupCode,
    this.shouldMigrate,
    required this.synchWithAzureAttemptsCount,
    this.verifySignupCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientTenantId': ?clientTenantId,
      'contactEmail': ?contactEmail,
      'contactName': ?contactName,
      'contactPhone': ?contactPhone,
      'createAsyncOperationId': createAsyncOperationId,
      'customerId': customerId,
      'customerName': ?customerName,
      'deleteAsyncOperationId': deleteAsyncOperationId,
      'fullyQualifiedResourceId': ?fullyQualifiedResourceId,
      'isEnterpriseManaged': ?isEnterpriseManaged,
      'isEntitled': ?isEntitled,
      'lastSyncWithAzureTimestamp': lastSyncWithAzureTimestamp,
      'releaseVersion': ?releaseVersion,
      'resendSignupCode': ?resendSignupCode,
      'shouldMigrate': ?shouldMigrate,
      'synchWithAzureAttemptsCount': synchWithAzureAttemptsCount,
      'verifySignupCode': ?verifySignupCode,
    };
  }

  factory CustomerEntityResponse.fromMap(Map<String, dynamic> map) {
    return CustomerEntityResponse(
      clientTenantId: map['clientTenantId'] == null ? null : map['clientTenantId'] as String,
      contactEmail: map['contactEmail'] == null ? null : map['contactEmail'] as String,
      contactName: map['contactName'] == null ? null : map['contactName'] as String,
      contactPhone: map['contactPhone'] == null ? null : map['contactPhone'] as String,
      createAsyncOperationId: map['createAsyncOperationId'] as String,
      customerId: map['customerId'] as String,
      customerName: map['customerName'] == null ? null : map['customerName'] as String,
      deleteAsyncOperationId: map['deleteAsyncOperationId'] as String,
      fullyQualifiedResourceId: map['fullyQualifiedResourceId'] == null ? null : map['fullyQualifiedResourceId'] as String,
      isEnterpriseManaged: map['isEnterpriseManaged'] == null ? null : map['isEnterpriseManaged'] as bool,
      isEntitled: map['isEntitled'] == null ? null : map['isEntitled'] as bool,
      lastSyncWithAzureTimestamp: map['lastSyncWithAzureTimestamp'] as String,
      releaseVersion: map['releaseVersion'] == null ? null : map['releaseVersion'] as int,
      resendSignupCode: map['resendSignupCode'] == null ? null : map['resendSignupCode'] as bool,
      shouldMigrate: map['shouldMigrate'] == null ? null : map['shouldMigrate'] as bool,
      synchWithAzureAttemptsCount: map['synchWithAzureAttemptsCount'] as int,
      verifySignupCode: map['verifySignupCode'] == null ? null : map['verifySignupCode'] as bool,
    );
  }
}

