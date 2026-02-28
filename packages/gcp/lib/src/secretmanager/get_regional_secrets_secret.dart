// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regional_secrets_secret_customer_managed_encryption.dart';
import 'get_regional_secrets_secret_rotation.dart';
import 'get_regional_secrets_secret_topic.dart';

class GetRegionalSecretsSecret {
  /// Custom metadata about the regional secret.
  final Map<String, String> annotations;
  /// The time at which the regional secret was created.
  final String createTime;
  /// Customer Managed Encryption for the regional secret.
  /// Structure is documented below.
  final List<GetRegionalSecretsSecretCustomerManagedEncryption> customerManagedEncryptions;
  final bool deletionProtection;
  final Map<String, String> effectiveAnnotations;
  final Map<String, String> effectiveLabels;
  /// Timestamp in UTC when the regional secret is scheduled to expire.
  final String expireTime;
  /// The labels assigned to this regional secret.
  final Map<String, String> labels;
  /// The location of the regional secret.
  final String location;
  /// The resource name of the Pub/Sub topic that will be published to.
  final String name;
  /// The ID of the project.
  final String project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final Map<String, String> pulumiLabels;
  /// The rotation time and period for a regional secret.
  /// Structure is documented below.
  final List<GetRegionalSecretsSecretRotation> rotations;
  /// The unique name of the resource.
  final String secretId;
  /// A map of resource manager tags.
  /// Resource manager tag keys and values have the same definition as resource manager tags.
  /// Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/{tag_value_id}.
  final Map<String, String> tags;
  /// A list of up to 10 Pub/Sub topics to which messages are published when control plane operations are called on the regional secret or its versions.
  /// Structure is documented below.
  final List<GetRegionalSecretsSecretTopic> topics;
  /// The TTL for the regional secret. A duration in seconds with up to nine fractional digits,
  /// terminated by 's'. Example: "3.5s". Only one of 'ttl' or 'expire_time' can be provided.
  final String ttl;
  /// Mapping from version alias to version name.
  final Map<String, String> versionAliases;
  /// The version destroy ttl for the regional secret version.
  final String versionDestroyTtl;

  /// Creates a new [GetRegionalSecretsSecret].
  /// [annotations] Custom metadata about the regional secret.
  /// [createTime] The time at which the regional secret was created.
  /// [customerManagedEncryptions] Customer Managed Encryption for the regional secret.
  /// [deletionProtection] Required.
  /// [effectiveAnnotations] Required.
  /// [effectiveLabels] Required.
  /// [expireTime] Timestamp in UTC when the regional secret is scheduled to expire.
  /// [labels] The labels assigned to this regional secret.
  /// [location] The location of the regional secret.
  /// [name] The resource name of the Pub/Sub topic that will be published to.
  /// [project] The ID of the project.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [rotations] The rotation time and period for a regional secret.
  /// [secretId] The unique name of the resource.
  /// [tags] A map of resource manager tags.
  /// [topics] A list of up to 10 Pub/Sub topics to which messages are published when control plane operations are called on the regional secret or its versions.
  /// [ttl] The TTL for the regional secret. A duration in seconds with up to nine fractional digits,
  /// [versionAliases] Mapping from version alias to version name.
  /// [versionDestroyTtl] The version destroy ttl for the regional secret version.
  GetRegionalSecretsSecret({
    required this.annotations,
    required this.createTime,
    required this.customerManagedEncryptions,
    required this.deletionProtection,
    required this.effectiveAnnotations,
    required this.effectiveLabels,
    required this.expireTime,
    required this.labels,
    required this.location,
    required this.name,
    required this.project,
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
    return <String, dynamic>{
      'annotations': annotations,
      'createTime': createTime,
      'customerManagedEncryptions': pulumi.Input.encodeList<GetRegionalSecretsSecretCustomerManagedEncryption, Map<String, dynamic>>(customerManagedEncryptions, (value) => value.toMap()),
      'deletionProtection': deletionProtection,
      'effectiveAnnotations': effectiveAnnotations,
      'effectiveLabels': effectiveLabels,
      'expireTime': expireTime,
      'labels': labels,
      'location': location,
      'name': name,
      'project': project,
      'pulumiLabels': pulumiLabels,
      'rotations': pulumi.Input.encodeList<GetRegionalSecretsSecretRotation, Map<String, dynamic>>(rotations, (value) => value.toMap()),
      'secretId': secretId,
      'tags': tags,
      'topics': pulumi.Input.encodeList<GetRegionalSecretsSecretTopic, Map<String, dynamic>>(topics, (value) => value.toMap()),
      'ttl': ttl,
      'versionAliases': versionAliases,
      'versionDestroyTtl': versionDestroyTtl,
    };
  }

  factory GetRegionalSecretsSecret.fromMap(Map<String, dynamic> map) {
    return GetRegionalSecretsSecret(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      createTime: map['createTime'] as String,
      customerManagedEncryptions: pulumi.Input.decodeList<GetRegionalSecretsSecretCustomerManagedEncryption>(map['customerManagedEncryptions'], (value) => GetRegionalSecretsSecretCustomerManagedEncryption.fromMap((value as Map).cast<String, dynamic>())),
      deletionProtection: map['deletionProtection'] as bool,
      effectiveAnnotations: (map['effectiveAnnotations'] as Map).cast<String, String>(),
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      expireTime: map['expireTime'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] as String,
      project: map['project'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      rotations: pulumi.Input.decodeList<GetRegionalSecretsSecretRotation>(map['rotations'], (value) => GetRegionalSecretsSecretRotation.fromMap((value as Map).cast<String, dynamic>())),
      secretId: map['secretId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      topics: pulumi.Input.decodeList<GetRegionalSecretsSecretTopic>(map['topics'], (value) => GetRegionalSecretsSecretTopic.fromMap((value as Map).cast<String, dynamic>())),
      ttl: map['ttl'] as String,
      versionAliases: (map['versionAliases'] as Map).cast<String, String>(),
      versionDestroyTtl: map['versionDestroyTtl'] as String,
    );
  }
}

