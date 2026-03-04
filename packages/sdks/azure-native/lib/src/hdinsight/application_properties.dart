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
      'computeProfile':
          ?pulumi.Input.mapOptionalInputValue<
            ComputeProfile,
            Map<String, dynamic>
          >(computeProfile, (value) => value.toMap()),
      'errors':
          ?pulumi.Input.mapOptionalInputValue<
            List<Errors>,
            List<Map<String, dynamic>>
          >(
            errors,
            (value) => pulumi.Input.encodeList<Errors, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'httpsEndpoints':
          ?pulumi.Input.mapOptionalInputValue<
            List<ApplicationGetHttpsEndpoint>,
            List<Map<String, dynamic>>
          >(
            httpsEndpoints,
            (value) =>
                pulumi.Input.encodeList<
                  ApplicationGetHttpsEndpoint,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'installScriptActions':
          ?pulumi.Input.mapOptionalInputValue<
            List<RuntimeScriptAction>,
            List<Map<String, dynamic>>
          >(
            installScriptActions,
            (value) =>
                pulumi.Input.encodeList<
                  RuntimeScriptAction,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'privateLinkConfigurations':
          ?pulumi.Input.mapOptionalInputValue<
            List<PrivateLinkConfiguration>,
            List<Map<String, dynamic>>
          >(
            privateLinkConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  PrivateLinkConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'sshEndpoints':
          ?pulumi.Input.mapOptionalInputValue<
            List<ApplicationGetEndpoint>,
            List<Map<String, dynamic>>
          >(
            sshEndpoints,
            (value) =>
                pulumi.Input.encodeList<
                  ApplicationGetEndpoint,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'uninstallScriptActions':
          ?pulumi.Input.mapOptionalInputValue<
            List<RuntimeScriptAction>,
            List<Map<String, dynamic>>
          >(
            uninstallScriptActions,
            (value) =>
                pulumi.Input.encodeList<
                  RuntimeScriptAction,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ApplicationProperties.fromMap(Map<String, dynamic> map) {
    return ApplicationProperties(
      applicationType: (() {
        final guardedValue = map['applicationType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      computeProfile: (() {
        final guardedValue = map['computeProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ComputeProfile.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      errors: (() {
        final guardedValue = map['errors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Errors>(
            guardedValue,
            (value) => Errors.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      httpsEndpoints: (() {
        final guardedValue = map['httpsEndpoints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ApplicationGetHttpsEndpoint>(
            guardedValue,
            (value) => ApplicationGetHttpsEndpoint.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      installScriptActions: (() {
        final guardedValue = map['installScriptActions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RuntimeScriptAction>(
            guardedValue,
            (value) => RuntimeScriptAction.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      privateLinkConfigurations: (() {
        final guardedValue = map['privateLinkConfigurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PrivateLinkConfiguration>(
            guardedValue,
            (value) => PrivateLinkConfiguration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      sshEndpoints: (() {
        final guardedValue = map['sshEndpoints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ApplicationGetEndpoint>(
            guardedValue,
            (value) => ApplicationGetEndpoint.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      uninstallScriptActions: (() {
        final guardedValue = map['uninstallScriptActions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RuntimeScriptAction>(
            guardedValue,
            (value) => RuntimeScriptAction.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
