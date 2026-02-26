// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_regional_secret_customer_managed_encryption/get_regional_secret_customer_managed_encryption.dart';
import '../get_regional_secret_rotation/get_regional_secret_rotation.dart';
import '../get_regional_secret_topic/get_regional_secret_topic.dart';

/// Result data returned by getRegionalSecret.
class GetRegionalSecretResult {
  final Map<String, String> annotations;
  final String createTime;
  final List<GetRegionalSecretCustomerManagedEncryption>
      customerManagedEncryptions;
  final bool deletionProtection;
  final Map<String, String> effectiveAnnotations;
  final Map<String, String> effectiveLabels;
  final String expireTime;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final Map<String, String> labels;
  final String location;
  final String name;
  final String? project;
  final Map<String, String> pulumiLabels;
  final List<GetRegionalSecretRotation> rotations;
  final String secretId;
  final Map<String, String> tags;
  final List<GetRegionalSecretTopic> topics;
  final String ttl;
  final Map<String, String> versionAliases;
  final String versionDestroyTtl;

  GetRegionalSecretResult({
    required this.annotations,
    required this.createTime,
    required this.customerManagedEncryptions,
    required this.deletionProtection,
    required this.effectiveAnnotations,
    required this.effectiveLabels,
    required this.expireTime,
    required this.id,
    required this.labels,
    required this.location,
    required this.name,
    this.project,
    required this.pulumiLabels,
    required this.rotations,
    required this.secretId,
    required this.tags,
    required this.topics,
    required this.ttl,
    required this.versionAliases,
    required this.versionDestroyTtl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotations'] = annotations;
    map['createTime'] = createTime;
    map['customerManagedEncryptions'] = Input.encodeList<
            GetRegionalSecretCustomerManagedEncryption, Map<String, dynamic>>(
        customerManagedEncryptions, (value) => value.toMap());
    map['deletionProtection'] = deletionProtection;
    map['effectiveAnnotations'] = effectiveAnnotations;
    map['effectiveLabels'] = effectiveLabels;
    map['expireTime'] = expireTime;
    map['id'] = id;
    map['labels'] = labels;
    map['location'] = location;
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pulumiLabels'] = pulumiLabels;
    map['rotations'] =
        Input.encodeList<GetRegionalSecretRotation, Map<String, dynamic>>(
            rotations, (value) => value.toMap());
    map['secretId'] = secretId;
    map['tags'] = tags;
    map['topics'] =
        Input.encodeList<GetRegionalSecretTopic, Map<String, dynamic>>(
            topics, (value) => value.toMap());
    map['ttl'] = ttl;
    map['versionAliases'] = versionAliases;
    map['versionDestroyTtl'] = versionDestroyTtl;
    return map;
  }

  factory GetRegionalSecretResult.fromMap(Map<String, dynamic> map) {
    return GetRegionalSecretResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      createTime: map['createTime'] as String,
      customerManagedEncryptions:
          Input.decodeList<GetRegionalSecretCustomerManagedEncryption>(
              map['customerManagedEncryptions'],
              (value) => GetRegionalSecretCustomerManagedEncryption.fromMap(
                  (value as Map).cast<String, dynamic>())),
      deletionProtection: map['deletionProtection'] as bool,
      effectiveAnnotations:
          (map['effectiveAnnotations'] as Map).cast<String, String>(),
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      expireTime: map['expireTime'] as String,
      id: map['id'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      rotations: Input.decodeList<GetRegionalSecretRotation>(
          map['rotations'],
          (value) => GetRegionalSecretRotation.fromMap(
              (value as Map).cast<String, dynamic>())),
      secretId: map['secretId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      topics: Input.decodeList<GetRegionalSecretTopic>(
          map['topics'],
          (value) => GetRegionalSecretTopic.fromMap(
              (value as Map).cast<String, dynamic>())),
      ttl: map['ttl'] as String,
      versionAliases: (map['versionAliases'] as Map).cast<String, String>(),
      versionDestroyTtl: map['versionDestroyTtl'] as String,
    );
  }
}
