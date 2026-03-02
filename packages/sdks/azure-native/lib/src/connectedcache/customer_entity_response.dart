// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model representing Customer resource for ConnectedCache resource
class CustomerEntityResponse {
  /// Customer resource client tenant Id of subscription.
  final pulumi.Input<String>? clientTenantId;
  /// Customer resource contact email.
  final pulumi.Input<String>? contactEmail;
  /// Customer resource contact full name.
  final pulumi.Input<String>? contactName;
  /// Customer resource contact phone.
  final pulumi.Input<String>? contactPhone;
  /// Customer resource create async operation Id.
  final pulumi.Input<String> createAsyncOperationId;
  /// Customer resource Guid Id.
  final pulumi.Input<String> customerId;
  /// Customer resource name.
  final pulumi.Input<String>? customerName;
  /// Customer resource deletion async operation Id.
  final pulumi.Input<String> deleteAsyncOperationId;
  /// Customer resource Azure fully qualified resource Id.
  final pulumi.Input<String>? fullyQualifiedResourceId;
  /// Customer resource flag for enterprise management as boolean.
  final pulumi.Input<bool>? isEnterpriseManaged;
  /// Customer resource entitlement flag as boolean.
  final pulumi.Input<bool>? isEntitled;
  /// Customer resource last Azure sync timestamp.
  final pulumi.Input<String> lastSyncWithAzureTimestamp;
  /// Customer resource Mcc release version.
  final pulumi.Input<int>? releaseVersion;
  /// Customer resource flag for resending signup code as boolean.
  final pulumi.Input<bool>? resendSignupCode;
  /// Customer resource flag for migration.
  final pulumi.Input<bool>? shouldMigrate;
  /// Customer resource sync attempts.
  final pulumi.Input<int> synchWithAzureAttemptsCount;
  /// Customer resource flag for requiring verification of signup code as boolean.
  final pulumi.Input<bool>? verifySignupCode;

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
      clientTenantId: map['clientTenantId'] == null ? null : (map['clientTenantId'] as String).input(),
      contactEmail: map['contactEmail'] == null ? null : (map['contactEmail'] as String).input(),
      contactName: map['contactName'] == null ? null : (map['contactName'] as String).input(),
      contactPhone: map['contactPhone'] == null ? null : (map['contactPhone'] as String).input(),
      createAsyncOperationId: (map['createAsyncOperationId'] as String).input(),
      customerId: (map['customerId'] as String).input(),
      customerName: map['customerName'] == null ? null : (map['customerName'] as String).input(),
      deleteAsyncOperationId: (map['deleteAsyncOperationId'] as String).input(),
      fullyQualifiedResourceId: map['fullyQualifiedResourceId'] == null ? null : (map['fullyQualifiedResourceId'] as String).input(),
      isEnterpriseManaged: map['isEnterpriseManaged'] == null ? null : (map['isEnterpriseManaged'] as bool).input(),
      isEntitled: map['isEntitled'] == null ? null : (map['isEntitled'] as bool).input(),
      lastSyncWithAzureTimestamp: (map['lastSyncWithAzureTimestamp'] as String).input(),
      releaseVersion: map['releaseVersion'] == null ? null : (map['releaseVersion'] as int).input(),
      resendSignupCode: map['resendSignupCode'] == null ? null : (map['resendSignupCode'] as bool).input(),
      shouldMigrate: map['shouldMigrate'] == null ? null : (map['shouldMigrate'] as bool).input(),
      synchWithAzureAttemptsCount: (map['synchWithAzureAttemptsCount'] as int).input(),
      verifySignupCode: map['verifySignupCode'] == null ? null : (map['verifySignupCode'] as bool).input(),
    );
  }
}

