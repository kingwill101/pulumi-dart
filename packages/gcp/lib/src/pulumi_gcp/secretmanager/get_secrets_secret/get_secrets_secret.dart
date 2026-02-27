// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_secrets_secret_replication/get_secrets_secret_replication.dart';
import '../get_secrets_secret_rotation/get_secrets_secret_rotation.dart';
import '../get_secrets_secret_topic/get_secrets_secret_topic.dart';

class GetSecretsSecret {
  /// Custom metadata about the secret.
  final Map<String, String> annotations;

  /// The time at which the Secret was created.
  final String createTime;
  final bool deletionProtection;
  final Map<String, String> effectiveAnnotations;
  final Map<String, String> effectiveLabels;

  /// Timestamp in UTC when the Secret is scheduled to expire.
  final String expireTime;

  /// The labels assigned to this Secret.
  final Map<String, String> labels;

  /// The resource name of the Pub/Sub topic that will be published to.
  final String name;

  /// The ID of the project.
  final String project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final Map<String, String> pulumiLabels;

  /// The replication policy of the secret data attached to the Secret.
  /// Structure is documented below.
  final List<GetSecretsSecretReplication> replications;

  /// The rotation time and period for a Secret.
  /// Structure is documented below.
  final List<GetSecretsSecretRotation> rotations;

  /// This must be unique within the project.
  final String secretId;

  /// A map of resource manager tags.
  /// Resource manager tag keys and values have the same definition as resource manager tags.
  /// Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/{tag_value_id}.
  final Map<String, String> tags;

  /// A list of up to 10 Pub/Sub topics to which messages are published when control plane operations are called on the secret or its versions.
  /// Structure is documented below.
  final List<GetSecretsSecretTopic> topics;

  /// The TTL for the Secret.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  /// Only one of 'ttl' or 'expire_time' can be provided.
  final String ttl;

  /// Mapping from version alias to version name.
  final Map<String, String> versionAliases;

  /// The version destroy ttl for the secret version.
  final String versionDestroyTtl;

  GetSecretsSecret({
    required this.annotations,
    required this.createTime,
    required this.deletionProtection,
    required this.effectiveAnnotations,
    required this.effectiveLabels,
    required this.expireTime,
    required this.labels,
    required this.name,
    required this.project,
    required this.pulumiLabels,
    required this.replications,
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
    map['deletionProtection'] = deletionProtection;
    map['effectiveAnnotations'] = effectiveAnnotations;
    map['effectiveLabels'] = effectiveLabels;
    map['expireTime'] = expireTime;
    map['labels'] = labels;
    map['name'] = name;
    map['project'] = project;
    map['pulumiLabels'] = pulumiLabels;
    map['replications'] = pulumi.Input.encodeList<GetSecretsSecretReplication,
        Map<String, dynamic>>(replications, (value) => value.toMap());
    map['rotations'] =
        pulumi.Input.encodeList<GetSecretsSecretRotation, Map<String, dynamic>>(
            rotations, (value) => value.toMap());
    map['secretId'] = secretId;
    map['tags'] = tags;
    map['topics'] =
        pulumi.Input.encodeList<GetSecretsSecretTopic, Map<String, dynamic>>(
            topics, (value) => value.toMap());
    map['ttl'] = ttl;
    map['versionAliases'] = versionAliases;
    map['versionDestroyTtl'] = versionDestroyTtl;
    return map;
  }

  factory GetSecretsSecret.fromMap(Map<String, dynamic> map) {
    return GetSecretsSecret(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      createTime: map['createTime'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      effectiveAnnotations:
          (map['effectiveAnnotations'] as Map).cast<String, String>(),
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      expireTime: map['expireTime'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      project: map['project'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      replications: pulumi.Input.decodeList<GetSecretsSecretReplication>(
          map['replications'],
          (value) => GetSecretsSecretReplication.fromMap(
              (value as Map).cast<String, dynamic>())),
      rotations: pulumi.Input.decodeList<GetSecretsSecretRotation>(
          map['rotations'],
          (value) => GetSecretsSecretRotation.fromMap(
              (value as Map).cast<String, dynamic>())),
      secretId: map['secretId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      topics: pulumi.Input.decodeList<GetSecretsSecretTopic>(
          map['topics'],
          (value) => GetSecretsSecretTopic.fromMap(
              (value as Map).cast<String, dynamic>())),
      ttl: map['ttl'] as String,
      versionAliases: (map['versionAliases'] as Map).cast<String, String>(),
      versionDestroyTtl: map['versionDestroyTtl'] as String,
    );
  }
}
