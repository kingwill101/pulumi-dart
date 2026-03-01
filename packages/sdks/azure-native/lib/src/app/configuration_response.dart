// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dapr_response.dart';
import 'identity_settings_response.dart';
import 'ingress_response.dart';
import 'registry_credentials_response.dart';
import 'runtime_response.dart';
import 'secret_response.dart';
import 'service_response.dart';

/// Non versioned Container App configuration properties that define the mutable settings of a Container app
class ConfigurationResponse {
  /// ActiveRevisionsMode controls how active revisions are handled for the Container app:
  /// <list><item>Single: Only one revision can be active at a time. Traffic weights cannot be used. This is the default.</item><item>Multiple: Multiple revisions can be active, including optional traffic weights and labels.</item><item>Labels: Only revisions with labels are active. Traffic weights can be applied to labels.</item></list>
  final String? activeRevisionsMode;
  /// Dapr configuration for the Container App.
  final DaprResponse? dapr;
  /// Optional settings for Managed Identities that are assigned to the Container App. If a Managed Identity is not specified here, default settings will be used.
  final List<IdentitySettingsResponse>? identitySettings;
  /// Ingress configurations.
  final IngressResponse? ingress;
  /// Optional. Max inactive revisions a Container App can have.
  final int? maxInactiveRevisions;
  /// Collection of private container registry credentials for containers used by the Container app
  final List<RegistryCredentialsResponse>? registries;
  /// Optional. The percent of the total number of replicas that must be brought up before revision transition occurs. Defaults to 100 when none is given. Value must be greater than 0 and less than or equal to 100.
  final int? revisionTransitionThreshold;
  /// App runtime configuration for the Container App.
  final RuntimeResponse? runtime;
  /// Collection of secrets used by a Container app
  final List<SecretResponse>? secrets;
  /// Container App to be a dev Container App Service
  final ServiceResponse? service;
  /// Required in labels revisions mode. Label to apply to newly created revision.
  final String? targetLabel;

  /// Creates a new [ConfigurationResponse].
  /// [activeRevisionsMode] ActiveRevisionsMode controls how active revisions are handled for the Container app:
  /// [dapr] Dapr configuration for the Container App.
  /// [identitySettings] Optional settings for Managed Identities that are assigned to the Container App. If a Managed Identity is not specified here, default settings will be used.
  /// [ingress] Ingress configurations.
  /// [maxInactiveRevisions] Optional. Max inactive revisions a Container App can have.
  /// [registries] Collection of private container registry credentials for containers used by the Container app
  /// [revisionTransitionThreshold] Optional. The percent of the total number of replicas that must be brought up before revision transition occurs. Defaults to 100 when none is given. Value must be greater than 0 and less than or equal to 100.
  /// [runtime] App runtime configuration for the Container App.
  /// [secrets] Collection of secrets used by a Container app
  /// [service] Container App to be a dev Container App Service
  /// [targetLabel] Required in labels revisions mode. Label to apply to newly created revision.
  ConfigurationResponse({
    this.activeRevisionsMode,
    this.dapr,
    this.identitySettings,
    this.ingress,
    this.maxInactiveRevisions,
    this.registries,
    this.revisionTransitionThreshold,
    this.runtime,
    this.secrets,
    this.service,
    this.targetLabel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeRevisionsMode': ?activeRevisionsMode,
      'dapr': ?dapr == null ? null : dapr!.toMap(),
      'identitySettings': ?identitySettings == null ? null : pulumi.Input.encodeList<IdentitySettingsResponse, Map<String, dynamic>>(identitySettings!, (value) => value.toMap()),
      'ingress': ?ingress == null ? null : ingress!.toMap(),
      'maxInactiveRevisions': ?maxInactiveRevisions,
      'registries': ?registries == null ? null : pulumi.Input.encodeList<RegistryCredentialsResponse, Map<String, dynamic>>(registries!, (value) => value.toMap()),
      'revisionTransitionThreshold': ?revisionTransitionThreshold,
      'runtime': ?runtime == null ? null : runtime!.toMap(),
      'secrets': ?secrets == null ? null : pulumi.Input.encodeList<SecretResponse, Map<String, dynamic>>(secrets!, (value) => value.toMap()),
      'service': ?service == null ? null : service!.toMap(),
      'targetLabel': ?targetLabel,
    };
  }

  factory ConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationResponse(
      activeRevisionsMode: map['activeRevisionsMode'] == null ? null : map['activeRevisionsMode'] as String,
      dapr: map['dapr'] == null ? null : DaprResponse.fromMap((map['dapr'] as Map).cast<String, dynamic>()),
      identitySettings: map['identitySettings'] == null ? null : pulumi.Input.decodeList<IdentitySettingsResponse>(map['identitySettings'], (value) => IdentitySettingsResponse.fromMap((value as Map).cast<String, dynamic>())),
      ingress: map['ingress'] == null ? null : IngressResponse.fromMap((map['ingress'] as Map).cast<String, dynamic>()),
      maxInactiveRevisions: map['maxInactiveRevisions'] == null ? null : map['maxInactiveRevisions'] as int,
      registries: map['registries'] == null ? null : pulumi.Input.decodeList<RegistryCredentialsResponse>(map['registries'], (value) => RegistryCredentialsResponse.fromMap((value as Map).cast<String, dynamic>())),
      revisionTransitionThreshold: map['revisionTransitionThreshold'] == null ? null : map['revisionTransitionThreshold'] as int,
      runtime: map['runtime'] == null ? null : RuntimeResponse.fromMap((map['runtime'] as Map).cast<String, dynamic>()),
      secrets: map['secrets'] == null ? null : pulumi.Input.decodeList<SecretResponse>(map['secrets'], (value) => SecretResponse.fromMap((value as Map).cast<String, dynamic>())),
      service: map['service'] == null ? null : ServiceResponse.fromMap((map['service'] as Map).cast<String, dynamic>()),
      targetLabel: map['targetLabel'] == null ? null : map['targetLabel'] as String,
    );
  }
}

