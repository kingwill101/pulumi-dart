// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_addon_pod_identity_association.dart';

/// Result data returned by getAddon.
class GetAddonResult {
  final String addonName;

  /// Version of EKS add-on.
  final String addonVersion;

  /// ARN of the EKS add-on.
  final String arn;
  final String clusterName;

  /// Configuration values for the addon with a single JSON string.
  final String configurationValues;

  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the EKS add-on was created.
  final String createdAt;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the EKS add-on was updated.
  final String modifiedAt;

  /// Pod identity association for the EKS add-on.
  final List<GetAddonPodIdentityAssociation> podIdentityAssociations;
  final String region;

  /// ARN of IAM role used for EKS add-on. If value is empty -
  /// then add-on uses the IAM role assigned to the EKS Cluster node.
  final String serviceAccountRoleArn;
  final Map<String, String> tags;

  /// Creates a new [GetAddonResult].
  /// [addonName] Required.
  /// [addonVersion] Version of EKS add-on.
  /// [arn] ARN of the EKS add-on.
  /// [clusterName] Required.
  /// [configurationValues] Configuration values for the addon with a single JSON string.
  /// [createdAt] Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the EKS add-on was created.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [modifiedAt] Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the EKS add-on was updated.
  /// [podIdentityAssociations] Pod identity association for the EKS add-on.
  /// [region] Required.
  /// [serviceAccountRoleArn] ARN of IAM role used for EKS add-on. If value is empty -
  /// [tags] Required.
  GetAddonResult({
    required this.addonName,
    required this.addonVersion,
    required this.arn,
    required this.clusterName,
    required this.configurationValues,
    required this.createdAt,
    required this.id,
    required this.modifiedAt,
    required this.podIdentityAssociations,
    required this.region,
    required this.serviceAccountRoleArn,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addonName': addonName,
      'addonVersion': addonVersion,
      'arn': arn,
      'clusterName': clusterName,
      'configurationValues': configurationValues,
      'createdAt': createdAt,
      'id': id,
      'modifiedAt': modifiedAt,
      'podIdentityAssociations':
          pulumi.Input.encodeList<
            GetAddonPodIdentityAssociation,
            Map<String, dynamic>
          >(podIdentityAssociations, (value) => value.toMap()),
      'region': region,
      'serviceAccountRoleArn': serviceAccountRoleArn,
      'tags': tags,
    };
  }

  factory GetAddonResult.fromMap(Map<String, dynamic> map) {
    return GetAddonResult(
      addonName: map['addonName'] as String,
      addonVersion: map['addonVersion'] as String,
      arn: map['arn'] as String,
      clusterName: map['clusterName'] as String,
      configurationValues: map['configurationValues'] as String,
      createdAt: map['createdAt'] as String,
      id: map['id'] as String,
      modifiedAt: map['modifiedAt'] as String,
      podIdentityAssociations:
          pulumi.Input.decodeList<GetAddonPodIdentityAssociation>(
            map['podIdentityAssociations'],
            (value) => GetAddonPodIdentityAssociation.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      region: map['region'] as String,
      serviceAccountRoleArn: map['serviceAccountRoleArn'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
