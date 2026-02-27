// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../instance_private_config/instance_private_config.dart';
import '../instance_workforce_identity_federation_config/instance_workforce_identity_federation_config.dart';

/// The set of arguments for Instance.
class InstanceArgs14 {
  /// The deletion policy for the instance. Setting `ABANDON` allows the resource
  /// to be abandoned, rather than deleted. Setting `DELETE` deletes the resource
  /// and all its contents. Setting `PREVENT` prevents the resource from accidental
  /// deletion by erroring out during plan.
  /// Default is `PREVENT`.  Possible values are:
  /// * DELETE
  /// * PREVENT
  /// * ABANDON
  final Input<String>? deletionPolicy;

  /// The name for the Instance.
  final Input<String> instanceId;

  /// Customer-managed encryption key name, in the format projects/*/locations/*/keyRings/*/cryptoKeys/*.
  final Input<String>? kmsKey;

  /// Labels as key value pairs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location for the Instance.
  final Input<String> location;

  /// Private settings for private instance.
  /// Structure is documented below.
  final Input<InstancePrivateConfig>? privateConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Configuration for Workforce Identity Federation to support third party identity provider.
  /// If unset, defaults to the Google OIDC IdP.
  /// Structure is documented below.
  final Input<InstanceWorkforceIdentityFederationConfig>?
      workforceIdentityFederationConfig;

  InstanceArgs14({
    this.deletionPolicy,
    required this.instanceId,
    this.kmsKey,
    this.labels,
    required this.location,
    this.privateConfig,
    this.project,
    this.workforceIdentityFederationConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deletionPolicyValue = deletionPolicy;
    if (deletionPolicyValue != null) {
      map['deletionPolicy'] = deletionPolicyValue;
    }
    map['instanceId'] = instanceId;
    final kmsKeyValue = kmsKey;
    if (kmsKeyValue != null) {
      map['kmsKey'] = kmsKeyValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final privateConfigValue = privateConfig;
    if (privateConfigValue != null) {
      map['privateConfig'] = Input.mapOptionalInputValue<InstancePrivateConfig,
          Map<String, dynamic>>(privateConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final workforceIdentityFederationConfigValue =
        workforceIdentityFederationConfig;
    if (workforceIdentityFederationConfigValue != null) {
      map['workforceIdentityFederationConfig'] = Input.mapOptionalInputValue<
              InstanceWorkforceIdentityFederationConfig, Map<String, dynamic>>(
          workforceIdentityFederationConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory InstanceArgs14.fromMap(Map<String, dynamic> map) {
    return InstanceArgs14(
      deletionPolicy: Input.asOptionalInput<String>(map['deletionPolicy']),
      instanceId: Input.asInput<String>(map['instanceId']),
      kmsKey: Input.asOptionalInput<String>(map['kmsKey']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      privateConfig:
          Input.asOptionalInput<InstancePrivateConfig>(map['privateConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      workforceIdentityFederationConfig:
          Input.asOptionalInput<InstanceWorkforceIdentityFederationConfig>(
              map['workforceIdentityFederationConfig']),
    );
  }
}
