// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_get_endpoint_response.dart';
import 'application_get_https_endpoint_response.dart';
import 'compute_profile_response.dart';
import 'errors_response.dart';
import 'private_link_configuration_response.dart';
import 'runtime_script_action_response.dart';

/// The HDInsight cluster application GET response.
class ApplicationPropertiesResponse {
  /// The application state.
  final String applicationState;
  /// The application type.
  final String? applicationType;
  /// The list of roles in the cluster.
  final ComputeProfileResponse? computeProfile;
  /// The application create date time.
  final String createdDate;
  /// The list of errors.
  final List<ErrorsResponse>? errors;
  /// The list of application HTTPS endpoints.
  final List<ApplicationGetHttpsEndpointResponse>? httpsEndpoints;
  /// The list of install script actions.
  final List<RuntimeScriptActionResponse>? installScriptActions;
  /// The marketplace identifier.
  final String marketplaceIdentifier;
  /// The private link configurations.
  final List<PrivateLinkConfigurationResponse>? privateLinkConfigurations;
  /// The provisioning state of the application.
  final String provisioningState;
  /// The list of application SSH endpoints.
  final List<ApplicationGetEndpointResponse>? sshEndpoints;
  /// The list of uninstall script actions.
  final List<RuntimeScriptActionResponse>? uninstallScriptActions;

  /// Creates a new [ApplicationPropertiesResponse].
  /// [applicationState] The application state.
  /// [applicationType] The application type.
  /// [computeProfile] The list of roles in the cluster.
  /// [createdDate] The application create date time.
  /// [errors] The list of errors.
  /// [httpsEndpoints] The list of application HTTPS endpoints.
  /// [installScriptActions] The list of install script actions.
  /// [marketplaceIdentifier] The marketplace identifier.
  /// [privateLinkConfigurations] The private link configurations.
  /// [provisioningState] The provisioning state of the application.
  /// [sshEndpoints] The list of application SSH endpoints.
  /// [uninstallScriptActions] The list of uninstall script actions.
  ApplicationPropertiesResponse({
    required this.applicationState,
    this.applicationType,
    this.computeProfile,
    required this.createdDate,
    this.errors,
    this.httpsEndpoints,
    this.installScriptActions,
    required this.marketplaceIdentifier,
    this.privateLinkConfigurations,
    required this.provisioningState,
    this.sshEndpoints,
    this.uninstallScriptActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationState': applicationState,
      'applicationType': ?applicationType,
      'computeProfile': ?computeProfile == null ? null : computeProfile!.toMap(),
      'createdDate': createdDate,
      'errors': ?errors == null ? null : pulumi.Input.encodeList<ErrorsResponse, Map<String, dynamic>>(errors!, (value) => value.toMap()),
      'httpsEndpoints': ?httpsEndpoints == null ? null : pulumi.Input.encodeList<ApplicationGetHttpsEndpointResponse, Map<String, dynamic>>(httpsEndpoints!, (value) => value.toMap()),
      'installScriptActions': ?installScriptActions == null ? null : pulumi.Input.encodeList<RuntimeScriptActionResponse, Map<String, dynamic>>(installScriptActions!, (value) => value.toMap()),
      'marketplaceIdentifier': marketplaceIdentifier,
      'privateLinkConfigurations': ?privateLinkConfigurations == null ? null : pulumi.Input.encodeList<PrivateLinkConfigurationResponse, Map<String, dynamic>>(privateLinkConfigurations!, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'sshEndpoints': ?sshEndpoints == null ? null : pulumi.Input.encodeList<ApplicationGetEndpointResponse, Map<String, dynamic>>(sshEndpoints!, (value) => value.toMap()),
      'uninstallScriptActions': ?uninstallScriptActions == null ? null : pulumi.Input.encodeList<RuntimeScriptActionResponse, Map<String, dynamic>>(uninstallScriptActions!, (value) => value.toMap()),
    };
  }

  factory ApplicationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationPropertiesResponse(
      applicationState: map['applicationState'] as String,
      applicationType: map['applicationType'] == null ? null : map['applicationType'] as String,
      computeProfile: map['computeProfile'] == null ? null : ComputeProfileResponse.fromMap((map['computeProfile'] as Map).cast<String, dynamic>()),
      createdDate: map['createdDate'] as String,
      errors: map['errors'] == null ? null : pulumi.Input.decodeList<ErrorsResponse>(map['errors'], (value) => ErrorsResponse.fromMap((value as Map).cast<String, dynamic>())),
      httpsEndpoints: map['httpsEndpoints'] == null ? null : pulumi.Input.decodeList<ApplicationGetHttpsEndpointResponse>(map['httpsEndpoints'], (value) => ApplicationGetHttpsEndpointResponse.fromMap((value as Map).cast<String, dynamic>())),
      installScriptActions: map['installScriptActions'] == null ? null : pulumi.Input.decodeList<RuntimeScriptActionResponse>(map['installScriptActions'], (value) => RuntimeScriptActionResponse.fromMap((value as Map).cast<String, dynamic>())),
      marketplaceIdentifier: map['marketplaceIdentifier'] as String,
      privateLinkConfigurations: map['privateLinkConfigurations'] == null ? null : pulumi.Input.decodeList<PrivateLinkConfigurationResponse>(map['privateLinkConfigurations'], (value) => PrivateLinkConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      sshEndpoints: map['sshEndpoints'] == null ? null : pulumi.Input.decodeList<ApplicationGetEndpointResponse>(map['sshEndpoints'], (value) => ApplicationGetEndpointResponse.fromMap((value as Map).cast<String, dynamic>())),
      uninstallScriptActions: map['uninstallScriptActions'] == null ? null : pulumi.Input.decodeList<RuntimeScriptActionResponse>(map['uninstallScriptActions'], (value) => RuntimeScriptActionResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

