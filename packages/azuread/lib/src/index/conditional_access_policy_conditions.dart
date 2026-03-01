// ignore_for_file: unused_element, unnecessary_cast

import 'conditional_access_policy_conditions_applications.dart';
import 'conditional_access_policy_conditions_client_applications.dart';
import 'conditional_access_policy_conditions_devices.dart';
import 'conditional_access_policy_conditions_locations.dart';
import 'conditional_access_policy_conditions_platforms.dart';
import 'conditional_access_policy_conditions_users.dart';

class ConditionalAccessPolicyConditions {
  /// An `applications` block as documented below, which specifies applications and user actions included in and excluded from the policy.
  final ConditionalAccessPolicyConditionsApplications applications;
  /// A list of authentication flow transfer methods included in the policy. Possible values are: `authenticationTransfer` and `deviceCodeFlow`.
  final List<String>? authenticationFlowTransferMethods;
  /// A list of client application types included in the policy. Possible values are: `all`, `browser`, `mobileAppsAndDesktopClients`, `exchangeActiveSync`, `easSupported` and `other`.
  final List<String> clientAppTypes;
  /// An `client_applications` block as documented below, which specifies service principals included in and excluded from the policy.
  final ConditionalAccessPolicyConditionsClientApplications? clientApplications;
  /// A `devices` block as documented below, which describes devices to be included in and excluded from the policy. A `devices` block can be added to an existing policy, but removing the `devices` block forces a new resource to be created.
  final ConditionalAccessPolicyConditionsDevices? devices;
  /// The insider risk level in the policy. Possible values are: `minor`, `moderate`, `elevated`, `unknownFutureValue`.
  final String? insiderRiskLevels;
  /// A `locations` block as documented below, which specifies locations included in and excluded from the policy.
  final ConditionalAccessPolicyConditionsLocations? locations;
  /// A `platforms` block as documented below, which specifies platforms included in and excluded from the policy.
  final ConditionalAccessPolicyConditionsPlatforms? platforms;
  /// A list of service principal sign-in risk levels included in the policy. Possible values are: `low`, `medium`, `high`, `none`, `unknownFutureValue`.
  final List<String>? servicePrincipalRiskLevels;
  /// A list of user sign-in risk levels included in the policy. Possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`.
  final List<String>? signInRiskLevels;
  /// A list of user risk levels included in the policy. Possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`.
  final List<String>? userRiskLevels;
  /// A `users` block as documented below, which specifies users, groups, and roles included in and excluded from the policy.
  final ConditionalAccessPolicyConditionsUsers users;

  /// Creates a new [ConditionalAccessPolicyConditions].
  /// [applications] An `applications` block as documented below, which specifies applications and user actions included in and excluded from the policy.
  /// [authenticationFlowTransferMethods] A list of authentication flow transfer methods included in the policy. Possible values are: `authenticationTransfer` and `deviceCodeFlow`.
  /// [clientAppTypes] A list of client application types included in the policy. Possible values are: `all`, `browser`, `mobileAppsAndDesktopClients`, `exchangeActiveSync`, `easSupported` and `other`.
  /// [clientApplications] An `client_applications` block as documented below, which specifies service principals included in and excluded from the policy.
  /// [devices] A `devices` block as documented below, which describes devices to be included in and excluded from the policy. A `devices` block can be added to an existing policy, but removing the `devices` block forces a new resource to be created.
  /// [insiderRiskLevels] The insider risk level in the policy. Possible values are: `minor`, `moderate`, `elevated`, `unknownFutureValue`.
  /// [locations] A `locations` block as documented below, which specifies locations included in and excluded from the policy.
  /// [platforms] A `platforms` block as documented below, which specifies platforms included in and excluded from the policy.
  /// [servicePrincipalRiskLevels] A list of service principal sign-in risk levels included in the policy. Possible values are: `low`, `medium`, `high`, `none`, `unknownFutureValue`.
  /// [signInRiskLevels] A list of user sign-in risk levels included in the policy. Possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`.
  /// [userRiskLevels] A list of user risk levels included in the policy. Possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`.
  /// [users] A `users` block as documented below, which specifies users, groups, and roles included in and excluded from the policy.
  ConditionalAccessPolicyConditions({
    required this.applications,
    this.authenticationFlowTransferMethods,
    required this.clientAppTypes,
    this.clientApplications,
    this.devices,
    this.insiderRiskLevels,
    this.locations,
    this.platforms,
    this.servicePrincipalRiskLevels,
    this.signInRiskLevels,
    this.userRiskLevels,
    required this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applications': applications.toMap(),
      'authenticationFlowTransferMethods': ?authenticationFlowTransferMethods,
      'clientAppTypes': clientAppTypes,
      'clientApplications': ?clientApplications == null ? null : clientApplications!.toMap(),
      'devices': ?devices == null ? null : devices!.toMap(),
      'insiderRiskLevels': ?insiderRiskLevels,
      'locations': ?locations == null ? null : locations!.toMap(),
      'platforms': ?platforms == null ? null : platforms!.toMap(),
      'servicePrincipalRiskLevels': ?servicePrincipalRiskLevels,
      'signInRiskLevels': ?signInRiskLevels,
      'userRiskLevels': ?userRiskLevels,
      'users': users.toMap(),
    };
  }

  factory ConditionalAccessPolicyConditions.fromMap(Map<String, dynamic> map) {
    return ConditionalAccessPolicyConditions(
      applications: ConditionalAccessPolicyConditionsApplications.fromMap((map['applications'] as Map).cast<String, dynamic>()),
      authenticationFlowTransferMethods: map['authenticationFlowTransferMethods'] == null ? null : (map['authenticationFlowTransferMethods'] as List).cast<String>(),
      clientAppTypes: (map['clientAppTypes'] as List).cast<String>(),
      clientApplications: map['clientApplications'] == null ? null : ConditionalAccessPolicyConditionsClientApplications.fromMap((map['clientApplications'] as Map).cast<String, dynamic>()),
      devices: map['devices'] == null ? null : ConditionalAccessPolicyConditionsDevices.fromMap((map['devices'] as Map).cast<String, dynamic>()),
      insiderRiskLevels: map['insiderRiskLevels'] == null ? null : map['insiderRiskLevels'] as String,
      locations: map['locations'] == null ? null : ConditionalAccessPolicyConditionsLocations.fromMap((map['locations'] as Map).cast<String, dynamic>()),
      platforms: map['platforms'] == null ? null : ConditionalAccessPolicyConditionsPlatforms.fromMap((map['platforms'] as Map).cast<String, dynamic>()),
      servicePrincipalRiskLevels: map['servicePrincipalRiskLevels'] == null ? null : (map['servicePrincipalRiskLevels'] as List).cast<String>(),
      signInRiskLevels: map['signInRiskLevels'] == null ? null : (map['signInRiskLevels'] as List).cast<String>(),
      userRiskLevels: map['userRiskLevels'] == null ? null : (map['userRiskLevels'] as List).cast<String>(),
      users: ConditionalAccessPolicyConditionsUsers.fromMap((map['users'] as Map).cast<String, dynamic>()),
    );
  }
}

