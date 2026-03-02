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
  final pulumi.Input<String> applicationState;
  /// The application type.
  final pulumi.Input<String>? applicationType;
  /// The list of roles in the cluster.
  final pulumi.Input<ComputeProfileResponse>? computeProfile;
  /// The application create date time.
  final pulumi.Input<String> createdDate;
  /// The list of errors.
  final pulumi.Input<List<ErrorsResponse>>? errors;
  /// The list of application HTTPS endpoints.
  final pulumi.Input<List<ApplicationGetHttpsEndpointResponse>>? httpsEndpoints;
  /// The list of install script actions.
  final pulumi.Input<List<RuntimeScriptActionResponse>>? installScriptActions;
  /// The marketplace identifier.
  final pulumi.Input<String> marketplaceIdentifier;
  /// The private link configurations.
  final pulumi.Input<List<PrivateLinkConfigurationResponse>>? privateLinkConfigurations;
  /// The provisioning state of the application.
  final pulumi.Input<String> provisioningState;
  /// The list of application SSH endpoints.
  final pulumi.Input<List<ApplicationGetEndpointResponse>>? sshEndpoints;
  /// The list of uninstall script actions.
  final pulumi.Input<List<RuntimeScriptActionResponse>>? uninstallScriptActions;

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
      'computeProfile': ?pulumi.Input.mapOptionalInputValue<ComputeProfileResponse, Map<String, dynamic>>(computeProfile, (value) => value.toMap()),
      'createdDate': createdDate,
      'errors': ?pulumi.Input.mapOptionalInputValue<List<ErrorsResponse>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<ErrorsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'httpsEndpoints': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGetHttpsEndpointResponse>, List<Map<String, dynamic>>>(httpsEndpoints, (value) => pulumi.Input.encodeList<ApplicationGetHttpsEndpointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'installScriptActions': ?pulumi.Input.mapOptionalInputValue<List<RuntimeScriptActionResponse>, List<Map<String, dynamic>>>(installScriptActions, (value) => pulumi.Input.encodeList<RuntimeScriptActionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'marketplaceIdentifier': marketplaceIdentifier,
      'privateLinkConfigurations': ?pulumi.Input.mapOptionalInputValue<List<PrivateLinkConfigurationResponse>, List<Map<String, dynamic>>>(privateLinkConfigurations, (value) => pulumi.Input.encodeList<PrivateLinkConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'sshEndpoints': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGetEndpointResponse>, List<Map<String, dynamic>>>(sshEndpoints, (value) => pulumi.Input.encodeList<ApplicationGetEndpointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uninstallScriptActions': ?pulumi.Input.mapOptionalInputValue<List<RuntimeScriptActionResponse>, List<Map<String, dynamic>>>(uninstallScriptActions, (value) => pulumi.Input.encodeList<RuntimeScriptActionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApplicationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationPropertiesResponse(
      applicationState: (map['applicationState'] as String).input(),
      applicationType: map['applicationType'] == null ? null : (map['applicationType']! as String).input(),
      computeProfile: map['computeProfile'] == null ? null : (ComputeProfileResponse.fromMap((map['computeProfile']! as Map).cast<String, dynamic>())).input(),
      createdDate: (map['createdDate'] as String).input(),
      errors: map['errors'] == null ? null : (pulumi.Input.decodeList<ErrorsResponse>(map['errors']!, (value) => ErrorsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      httpsEndpoints: map['httpsEndpoints'] == null ? null : (pulumi.Input.decodeList<ApplicationGetHttpsEndpointResponse>(map['httpsEndpoints']!, (value) => ApplicationGetHttpsEndpointResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      installScriptActions: map['installScriptActions'] == null ? null : (pulumi.Input.decodeList<RuntimeScriptActionResponse>(map['installScriptActions']!, (value) => RuntimeScriptActionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      marketplaceIdentifier: (map['marketplaceIdentifier'] as String).input(),
      privateLinkConfigurations: map['privateLinkConfigurations'] == null ? null : (pulumi.Input.decodeList<PrivateLinkConfigurationResponse>(map['privateLinkConfigurations']!, (value) => PrivateLinkConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      sshEndpoints: map['sshEndpoints'] == null ? null : (pulumi.Input.decodeList<ApplicationGetEndpointResponse>(map['sshEndpoints']!, (value) => ApplicationGetEndpointResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      uninstallScriptActions: map['uninstallScriptActions'] == null ? null : (pulumi.Input.decodeList<RuntimeScriptActionResponse>(map['uninstallScriptActions']!, (value) => RuntimeScriptActionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

