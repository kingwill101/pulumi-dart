// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_addon_pod_identity_association.dart';

/// Result data returned by getAddon.
class GetAddonResult {
  final String? addonName;
  /// Version of EKS add-on.
  final String? addonVersion;
  /// ARN of the EKS add-on.
  final String? arn;
  final String? clusterName;
  /// Configuration values for the addon with a single JSON string.
  final String? configurationValues;
  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the EKS add-on was created.
  final String? createdAt;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the EKS add-on was updated.
  final String? modifiedAt;
  /// Pod identity association for the EKS add-on.
  final List<GetAddonPodIdentityAssociation>? podIdentityAssociations;
  final String? region;
  /// ARN of IAM role used for EKS add-on. If value is empty -
  /// then add-on uses the IAM role assigned to the EKS Cluster node.
  final String? serviceAccountRoleArn;
  final Map<String, String>? tags;

  /// Creates a new [GetAddonResult].
  /// [addonName] Optional.
  /// [addonVersion] Version of EKS add-on.
  /// [arn] ARN of the EKS add-on.
  /// [clusterName] Optional.
  /// [configurationValues] Configuration values for the addon with a single JSON string.
  /// [createdAt] Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the EKS add-on was created.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [modifiedAt] Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the EKS add-on was updated.
  /// [podIdentityAssociations] Pod identity association for the EKS add-on.
  /// [region] Optional.
  /// [serviceAccountRoleArn] ARN of IAM role used for EKS add-on. If value is empty -
  /// [tags] Optional.
  const GetAddonResult({
    this.addonName,
    this.addonVersion,
    this.arn,
    this.clusterName,
    this.configurationValues,
    this.createdAt,
    this.id,
    this.modifiedAt,
    this.podIdentityAssociations,
    this.region,
    this.serviceAccountRoleArn,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonName': ?addonName,
      'addonVersion': ?addonVersion,
      'arn': ?arn,
      'clusterName': ?clusterName,
      'configurationValues': ?configurationValues,
      'createdAt': ?createdAt,
      'id': ?id,
      'modifiedAt': ?modifiedAt,
      'podIdentityAssociations': ?(() { final guardedValue = podIdentityAssociations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAddonPodIdentityAssociation, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'serviceAccountRoleArn': ?serviceAccountRoleArn,
      'tags': ?tags,
    };
  }

  factory GetAddonResult.fromMap(Map<String, dynamic> map) {
    return GetAddonResult(
      addonName: (() { final guardedValue = map['addonName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      addonVersion: (() { final guardedValue = map['addonVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configurationValues: (() { final guardedValue = map['configurationValues']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      podIdentityAssociations: (() { final guardedValue = map['podIdentityAssociations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAddonPodIdentityAssociation>(guardedValue, (value) => GetAddonPodIdentityAssociation.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceAccountRoleArn: (() { final guardedValue = map['serviceAccountRoleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
