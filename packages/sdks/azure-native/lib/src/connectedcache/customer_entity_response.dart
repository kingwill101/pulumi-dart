// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model representing Customer resource for ConnectedCache resource
class CustomerEntityResponse {
  /// Customer resource client tenant Id of subscription.
  final pulumi.Input<String?>? clientTenantId;
  /// Customer resource contact email.
  final pulumi.Input<String?>? contactEmail;
  /// Customer resource contact full name.
  final pulumi.Input<String?>? contactName;
  /// Customer resource contact phone.
  final pulumi.Input<String?>? contactPhone;
  /// Customer resource create async operation Id.
  final pulumi.Input<String> createAsyncOperationId;
  /// Customer resource Guid Id.
  final pulumi.Input<String> customerId;
  /// Customer resource name.
  final pulumi.Input<String?>? customerName;
  /// Customer resource deletion async operation Id.
  final pulumi.Input<String> deleteAsyncOperationId;
  /// Customer resource Azure fully qualified resource Id.
  final pulumi.Input<String?>? fullyQualifiedResourceId;
  /// Customer resource flag for enterprise management as boolean.
  final pulumi.Input<bool?>? isEnterpriseManaged;
  /// Customer resource entitlement flag as boolean.
  final pulumi.Input<bool?>? isEntitled;
  /// Customer resource last Azure sync timestamp.
  final pulumi.Input<String> lastSyncWithAzureTimestamp;
  /// Customer resource Mcc release version.
  final pulumi.Input<int?>? releaseVersion;
  /// Customer resource flag for resending signup code as boolean.
  final pulumi.Input<bool?>? resendSignupCode;
  /// Customer resource flag for migration.
  final pulumi.Input<bool?>? shouldMigrate;
  /// Customer resource sync attempts.
  final pulumi.Input<int> synchWithAzureAttemptsCount;
  /// Customer resource flag for requiring verification of signup code as boolean.
  final pulumi.Input<bool?>? verifySignupCode;

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
  const CustomerEntityResponse({
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
      clientTenantId: (() { final guardedValue = map['clientTenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contactEmail: (() { final guardedValue = map['contactEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contactName: (() { final guardedValue = map['contactName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contactPhone: (() { final guardedValue = map['contactPhone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createAsyncOperationId: pulumi.Input.fromValue(map['createAsyncOperationId'] as String),
      customerId: pulumi.Input.fromValue(map['customerId'] as String),
      customerName: (() { final guardedValue = map['customerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteAsyncOperationId: pulumi.Input.fromValue(map['deleteAsyncOperationId'] as String),
      fullyQualifiedResourceId: (() { final guardedValue = map['fullyQualifiedResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isEnterpriseManaged: (() { final guardedValue = map['isEnterpriseManaged']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isEntitled: (() { final guardedValue = map['isEntitled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastSyncWithAzureTimestamp: pulumi.Input.fromValue(map['lastSyncWithAzureTimestamp'] as String),
      releaseVersion: (() { final guardedValue = map['releaseVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      resendSignupCode: (() { final guardedValue = map['resendSignupCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      shouldMigrate: (() { final guardedValue = map['shouldMigrate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      synchWithAzureAttemptsCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['synchWithAzureAttemptsCount'])),
      verifySignupCode: (() { final guardedValue = map['verifySignupCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
