// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_error_response.dart';
import 'identity_provider_details_response.dart';
import 'version_details_response.dart';

/// Recovery services provider properties.
class RecoveryServicesProviderPropertiesResponse {
  /// The scenarios allowed on this provider.
  final List<String>? allowedScenarios;
  /// The authentication identity details.
  final IdentityProviderDetailsResponse? authenticationIdentityDetails;
  /// The Bios Id.
  final String? biosId;
  /// A value indicating whether DRA is responsive.
  final String? connectionStatus;
  /// The data plane authentication identity details.
  final IdentityProviderDetailsResponse? dataPlaneAuthenticationIdentityDetails;
  /// The DRA Id.
  final String? draIdentifier;
  /// The fabric friendly name.
  final String? fabricFriendlyName;
  /// Type of the site.
  final String? fabricType;
  /// Friendly name of the DRA.
  final String? friendlyName;
  /// The recovery services provider health error details.
  final List<HealthErrorResponse>? healthErrorDetails;
  /// Time when last heartbeat was sent by the DRA.
  final String? lastHeartBeat;
  /// The machine Id.
  final String? machineId;
  /// The machine name.
  final String? machineName;
  /// Number of protected VMs currently managed by the DRA.
  final int? protectedItemCount;
  /// The provider version.
  final String? providerVersion;
  /// The provider version details.
  final VersionDetailsResponse? providerVersionDetails;
  /// Expiry date of the version.
  final String? providerVersionExpiryDate;
  /// DRA version status.
  final String? providerVersionState;
  /// The resource access identity details.
  final IdentityProviderDetailsResponse? resourceAccessIdentityDetails;
  /// The fabric provider.
  final String? serverVersion;

  /// Creates a new [RecoveryServicesProviderPropertiesResponse].
  /// [allowedScenarios] The scenarios allowed on this provider.
  /// [authenticationIdentityDetails] The authentication identity details.
  /// [biosId] The Bios Id.
  /// [connectionStatus] A value indicating whether DRA is responsive.
  /// [dataPlaneAuthenticationIdentityDetails] The data plane authentication identity details.
  /// [draIdentifier] The DRA Id.
  /// [fabricFriendlyName] The fabric friendly name.
  /// [fabricType] Type of the site.
  /// [friendlyName] Friendly name of the DRA.
  /// [healthErrorDetails] The recovery services provider health error details.
  /// [lastHeartBeat] Time when last heartbeat was sent by the DRA.
  /// [machineId] The machine Id.
  /// [machineName] The machine name.
  /// [protectedItemCount] Number of protected VMs currently managed by the DRA.
  /// [providerVersion] The provider version.
  /// [providerVersionDetails] The provider version details.
  /// [providerVersionExpiryDate] Expiry date of the version.
  /// [providerVersionState] DRA version status.
  /// [resourceAccessIdentityDetails] The resource access identity details.
  /// [serverVersion] The fabric provider.
  RecoveryServicesProviderPropertiesResponse({
    this.allowedScenarios,
    this.authenticationIdentityDetails,
    this.biosId,
    this.connectionStatus,
    this.dataPlaneAuthenticationIdentityDetails,
    this.draIdentifier,
    this.fabricFriendlyName,
    this.fabricType,
    this.friendlyName,
    this.healthErrorDetails,
    this.lastHeartBeat,
    this.machineId,
    this.machineName,
    this.protectedItemCount,
    this.providerVersion,
    this.providerVersionDetails,
    this.providerVersionExpiryDate,
    this.providerVersionState,
    this.resourceAccessIdentityDetails,
    this.serverVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedScenarios': ?allowedScenarios,
      'authenticationIdentityDetails': ?authenticationIdentityDetails == null ? null : authenticationIdentityDetails!.toMap(),
      'biosId': ?biosId,
      'connectionStatus': ?connectionStatus,
      'dataPlaneAuthenticationIdentityDetails': ?dataPlaneAuthenticationIdentityDetails == null ? null : dataPlaneAuthenticationIdentityDetails!.toMap(),
      'draIdentifier': ?draIdentifier,
      'fabricFriendlyName': ?fabricFriendlyName,
      'fabricType': ?fabricType,
      'friendlyName': ?friendlyName,
      'healthErrorDetails': ?healthErrorDetails == null ? null : pulumi.Input.encodeList<HealthErrorResponse, Map<String, dynamic>>(healthErrorDetails!, (value) => value.toMap()),
      'lastHeartBeat': ?lastHeartBeat,
      'machineId': ?machineId,
      'machineName': ?machineName,
      'protectedItemCount': ?protectedItemCount,
      'providerVersion': ?providerVersion,
      'providerVersionDetails': ?providerVersionDetails == null ? null : providerVersionDetails!.toMap(),
      'providerVersionExpiryDate': ?providerVersionExpiryDate,
      'providerVersionState': ?providerVersionState,
      'resourceAccessIdentityDetails': ?resourceAccessIdentityDetails == null ? null : resourceAccessIdentityDetails!.toMap(),
      'serverVersion': ?serverVersion,
    };
  }

  factory RecoveryServicesProviderPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RecoveryServicesProviderPropertiesResponse(
      allowedScenarios: map['allowedScenarios'] == null ? null : (map['allowedScenarios'] as List).cast<String>(),
      authenticationIdentityDetails: map['authenticationIdentityDetails'] == null ? null : IdentityProviderDetailsResponse.fromMap((map['authenticationIdentityDetails'] as Map).cast<String, dynamic>()),
      biosId: map['biosId'] == null ? null : map['biosId'] as String,
      connectionStatus: map['connectionStatus'] == null ? null : map['connectionStatus'] as String,
      dataPlaneAuthenticationIdentityDetails: map['dataPlaneAuthenticationIdentityDetails'] == null ? null : IdentityProviderDetailsResponse.fromMap((map['dataPlaneAuthenticationIdentityDetails'] as Map).cast<String, dynamic>()),
      draIdentifier: map['draIdentifier'] == null ? null : map['draIdentifier'] as String,
      fabricFriendlyName: map['fabricFriendlyName'] == null ? null : map['fabricFriendlyName'] as String,
      fabricType: map['fabricType'] == null ? null : map['fabricType'] as String,
      friendlyName: map['friendlyName'] == null ? null : map['friendlyName'] as String,
      healthErrorDetails: map['healthErrorDetails'] == null ? null : pulumi.Input.decodeList<HealthErrorResponse>(map['healthErrorDetails'], (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      lastHeartBeat: map['lastHeartBeat'] == null ? null : map['lastHeartBeat'] as String,
      machineId: map['machineId'] == null ? null : map['machineId'] as String,
      machineName: map['machineName'] == null ? null : map['machineName'] as String,
      protectedItemCount: map['protectedItemCount'] == null ? null : map['protectedItemCount'] as int,
      providerVersion: map['providerVersion'] == null ? null : map['providerVersion'] as String,
      providerVersionDetails: map['providerVersionDetails'] == null ? null : VersionDetailsResponse.fromMap((map['providerVersionDetails'] as Map).cast<String, dynamic>()),
      providerVersionExpiryDate: map['providerVersionExpiryDate'] == null ? null : map['providerVersionExpiryDate'] as String,
      providerVersionState: map['providerVersionState'] == null ? null : map['providerVersionState'] as String,
      resourceAccessIdentityDetails: map['resourceAccessIdentityDetails'] == null ? null : IdentityProviderDetailsResponse.fromMap((map['resourceAccessIdentityDetails'] as Map).cast<String, dynamic>()),
      serverVersion: map['serverVersion'] == null ? null : map['serverVersion'] as String,
    );
  }
}

