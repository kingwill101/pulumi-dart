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
  final String? applicationType;
  /// The list of roles in the cluster.
  final ComputeProfile? computeProfile;
  /// The list of errors.
  final List<Errors>? errors;
  /// The list of application HTTPS endpoints.
  final List<ApplicationGetHttpsEndpoint>? httpsEndpoints;
  /// The list of install script actions.
  final List<RuntimeScriptAction>? installScriptActions;
  /// The private link configurations.
  final List<PrivateLinkConfiguration>? privateLinkConfigurations;
  /// The list of application SSH endpoints.
  final List<ApplicationGetEndpoint>? sshEndpoints;
  /// The list of uninstall script actions.
  final List<RuntimeScriptAction>? uninstallScriptActions;

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
      'computeProfile': ?computeProfile == null ? null : computeProfile!.toMap(),
      'errors': ?errors == null ? null : pulumi.Input.encodeList<Errors, Map<String, dynamic>>(errors!, (value) => value.toMap()),
      'httpsEndpoints': ?httpsEndpoints == null ? null : pulumi.Input.encodeList<ApplicationGetHttpsEndpoint, Map<String, dynamic>>(httpsEndpoints!, (value) => value.toMap()),
      'installScriptActions': ?installScriptActions == null ? null : pulumi.Input.encodeList<RuntimeScriptAction, Map<String, dynamic>>(installScriptActions!, (value) => value.toMap()),
      'privateLinkConfigurations': ?privateLinkConfigurations == null ? null : pulumi.Input.encodeList<PrivateLinkConfiguration, Map<String, dynamic>>(privateLinkConfigurations!, (value) => value.toMap()),
      'sshEndpoints': ?sshEndpoints == null ? null : pulumi.Input.encodeList<ApplicationGetEndpoint, Map<String, dynamic>>(sshEndpoints!, (value) => value.toMap()),
      'uninstallScriptActions': ?uninstallScriptActions == null ? null : pulumi.Input.encodeList<RuntimeScriptAction, Map<String, dynamic>>(uninstallScriptActions!, (value) => value.toMap()),
    };
  }

  factory ApplicationProperties.fromMap(Map<String, dynamic> map) {
    return ApplicationProperties(
      applicationType: map['applicationType'] == null ? null : map['applicationType'] as String,
      computeProfile: map['computeProfile'] == null ? null : ComputeProfile.fromMap((map['computeProfile'] as Map).cast<String, dynamic>()),
      errors: map['errors'] == null ? null : pulumi.Input.decodeList<Errors>(map['errors'], (value) => Errors.fromMap((value as Map).cast<String, dynamic>())),
      httpsEndpoints: map['httpsEndpoints'] == null ? null : pulumi.Input.decodeList<ApplicationGetHttpsEndpoint>(map['httpsEndpoints'], (value) => ApplicationGetHttpsEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      installScriptActions: map['installScriptActions'] == null ? null : pulumi.Input.decodeList<RuntimeScriptAction>(map['installScriptActions'], (value) => RuntimeScriptAction.fromMap((value as Map).cast<String, dynamic>())),
      privateLinkConfigurations: map['privateLinkConfigurations'] == null ? null : pulumi.Input.decodeList<PrivateLinkConfiguration>(map['privateLinkConfigurations'], (value) => PrivateLinkConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      sshEndpoints: map['sshEndpoints'] == null ? null : pulumi.Input.decodeList<ApplicationGetEndpoint>(map['sshEndpoints'], (value) => ApplicationGetEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      uninstallScriptActions: map['uninstallScriptActions'] == null ? null : pulumi.Input.decodeList<RuntimeScriptAction>(map['uninstallScriptActions'], (value) => RuntimeScriptAction.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

