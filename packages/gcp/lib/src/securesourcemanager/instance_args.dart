// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_private_config.dart';
import 'instance_workforce_identity_federation_config.dart';

/// {@template pulumi_securesourcemanager_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_securesourcemanager_instance_instance_args_doc}
class InstanceArgs {
  /// The deletion policy for the instance. Setting `ABANDON` allows the resource
  /// to be abandoned, rather than deleted. Setting `DELETE` deletes the resource
  /// and all its contents. Setting `PREVENT` prevents the resource from accidental
  /// deletion by erroring out during plan.
  /// Default is `PREVENT`.  Possible values are:
  /// * DELETE
  /// * PREVENT
  /// * ABANDON
  final pulumi.Input<String>? deletionPolicy;

  /// The name for the Instance.
  final pulumi.Input<String> instanceId;

  /// Customer-managed encryption key name, in the format projects/*/locations/*/keyRings/*/cryptoKeys/*.
  final pulumi.Input<String>? kmsKey;

  /// Labels as key value pairs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location for the Instance.
  final pulumi.Input<String> location;

  /// Private settings for private instance.
  /// Structure is documented below.
  final pulumi.Input<InstancePrivateConfig>? privateConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Configuration for Workforce Identity Federation to support third party identity provider.
  /// If unset, defaults to the Google OIDC IdP.
  /// Structure is documented below.
  final pulumi.Input<InstanceWorkforceIdentityFederationConfig>?
  workforceIdentityFederationConfig;

  /// Creates a new [InstanceArgs].
  /// [deletionPolicy] The deletion policy for the instance. Setting `ABANDON` allows the resource
  /// [instanceId] The name for the Instance.
  /// [kmsKey] Customer-managed encryption key name, in the format projects/*/locations/*/keyRings/*/cryptoKeys/*.
  /// [labels] Labels as key value pairs.
  /// [location] The location for the Instance.
  /// [privateConfig] Private settings for private instance.
  /// [project] The ID of the project in which the resource belongs.
  /// [workforceIdentityFederationConfig] Configuration for Workforce Identity Federation to support third party identity provider.
  InstanceArgs({
    String? deletionPolicy,
    required String instanceId,
    String? kmsKey,
    Map<String, String>? labels,
    required String location,
    InstancePrivateConfig? privateConfig,
    String? project,
    InstanceWorkforceIdentityFederationConfig?
    workforceIdentityFederationConfig,
  }) : deletionPolicy = pulumi.Input.asOptionalInput<String>(deletionPolicy),
       instanceId = pulumi.Input.asInput<String>(instanceId),
       kmsKey = pulumi.Input.asOptionalInput<String>(kmsKey),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asInput<String>(location),
       privateConfig = pulumi.Input.asOptionalInput<InstancePrivateConfig>(
         privateConfig,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       workforceIdentityFederationConfig =
           pulumi.Input.asOptionalInput<
             InstanceWorkforceIdentityFederationConfig
           >(workforceIdentityFederationConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'instanceId': instanceId,
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'location': location,
      'privateConfig':
          ?pulumi.Input.mapOptionalInputValue<
            InstancePrivateConfig,
            Map<String, dynamic>
          >(privateConfig, (value) => value.toMap()),
      'project': ?project,
      'workforceIdentityFederationConfig':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceWorkforceIdentityFederationConfig,
            Map<String, dynamic>
          >(workforceIdentityFederationConfig, (value) => value.toMap()),
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      deletionPolicy: map['deletionPolicy'] == null
          ? null
          : map['deletionPolicy'] as String,
      instanceId: map['instanceId'] as String,
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      privateConfig: map['privateConfig'] == null
          ? null
          : InstancePrivateConfig.fromMap(
              (map['privateConfig'] as Map).cast<String, dynamic>(),
            ),
      project: map['project'] == null ? null : map['project'] as String,
      workforceIdentityFederationConfig:
          map['workforceIdentityFederationConfig'] == null
          ? null
          : InstanceWorkforceIdentityFederationConfig.fromMap(
              (map['workforceIdentityFederationConfig'] as Map)
                  .cast<String, dynamic>(),
            ),
    );
  }
}
