// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_get_endpoint.dart';
import 'application_get_https_endpoint.dart';
import 'compute_profile.dart';
import 'errors.dart';
import 'private_link_configuration.dart';
import 'runtime_script_action.dart';

/// The HDInsight cluster application GET response.
class ApplicationProperties {
  /// The application type.
  final pulumi.Input<String>? applicationType;
  /// The list of roles in the cluster.
  final pulumi.Input<ComputeProfile>? computeProfile;
  /// The list of errors.
  final pulumi.Input<List<Errors>>? errors;
  /// The list of application HTTPS endpoints.
  final pulumi.Input<List<ApplicationGetHttpsEndpoint>>? httpsEndpoints;
  /// The list of install script actions.
  final pulumi.Input<List<RuntimeScriptAction>>? installScriptActions;
  /// The private link configurations.
  final pulumi.Input<List<PrivateLinkConfiguration>>? privateLinkConfigurations;
  /// The list of application SSH endpoints.
  final pulumi.Input<List<ApplicationGetEndpoint>>? sshEndpoints;
  /// The list of uninstall script actions.
  final pulumi.Input<List<RuntimeScriptAction>>? uninstallScriptActions;

  /// Creates a new [ApplicationProperties].
  /// [applicationType] The application type.
  /// [computeProfile] The list of roles in the cluster.
  /// [errors] The list of errors.
  /// [httpsEndpoints] The list of application HTTPS endpoints.
  /// [installScriptActions] The list of install script actions.
  /// [privateLinkConfigurations] The private link configurations.
  /// [sshEndpoints] The list of application SSH endpoints.
  /// [uninstallScriptActions] The list of uninstall script actions.
  ApplicationProperties({
    this.applicationType,
    this.computeProfile,
    this.errors,
    this.httpsEndpoints,
    this.installScriptActions,
    this.privateLinkConfigurations,
    this.sshEndpoints,
    this.uninstallScriptActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationType': ?applicationType,
      'computeProfile': ?pulumi.Input.mapOptionalInputValue<ComputeProfile, Map<String, dynamic>>(computeProfile, (value) => value.toMap()),
      'errors': ?pulumi.Input.mapOptionalInputValue<List<Errors>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<Errors, Map<String, dynamic>>(value, (value) => value.toMap())),
      'httpsEndpoints': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGetHttpsEndpoint>, List<Map<String, dynamic>>>(httpsEndpoints, (value) => pulumi.Input.encodeList<ApplicationGetHttpsEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'installScriptActions': ?pulumi.Input.mapOptionalInputValue<List<RuntimeScriptAction>, List<Map<String, dynamic>>>(installScriptActions, (value) => pulumi.Input.encodeList<RuntimeScriptAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateLinkConfigurations': ?pulumi.Input.mapOptionalInputValue<List<PrivateLinkConfiguration>, List<Map<String, dynamic>>>(privateLinkConfigurations, (value) => pulumi.Input.encodeList<PrivateLinkConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sshEndpoints': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGetEndpoint>, List<Map<String, dynamic>>>(sshEndpoints, (value) => pulumi.Input.encodeList<ApplicationGetEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uninstallScriptActions': ?pulumi.Input.mapOptionalInputValue<List<RuntimeScriptAction>, List<Map<String, dynamic>>>(uninstallScriptActions, (value) => pulumi.Input.encodeList<RuntimeScriptAction, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApplicationProperties.fromMap(Map<String, dynamic> map) {
    return ApplicationProperties(
      applicationType: map['applicationType'] == null ? null : (map['applicationType'] as String).input(),
      computeProfile: map['computeProfile'] == null ? null : (ComputeProfile.fromMap((map['computeProfile'] as Map).cast<String, dynamic>())).input(),
      errors: map['errors'] == null ? null : (pulumi.Input.decodeList<Errors>(map['errors'], (value) => Errors.fromMap((value as Map).cast<String, dynamic>()))).input(),
      httpsEndpoints: map['httpsEndpoints'] == null ? null : (pulumi.Input.decodeList<ApplicationGetHttpsEndpoint>(map['httpsEndpoints'], (value) => ApplicationGetHttpsEndpoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      installScriptActions: map['installScriptActions'] == null ? null : (pulumi.Input.decodeList<RuntimeScriptAction>(map['installScriptActions'], (value) => RuntimeScriptAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      privateLinkConfigurations: map['privateLinkConfigurations'] == null ? null : (pulumi.Input.decodeList<PrivateLinkConfiguration>(map['privateLinkConfigurations'], (value) => PrivateLinkConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sshEndpoints: map['sshEndpoints'] == null ? null : (pulumi.Input.decodeList<ApplicationGetEndpoint>(map['sshEndpoints'], (value) => ApplicationGetEndpoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      uninstallScriptActions: map['uninstallScriptActions'] == null ? null : (pulumi.Input.decodeList<RuntimeScriptAction>(map['uninstallScriptActions'], (value) => RuntimeScriptAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

