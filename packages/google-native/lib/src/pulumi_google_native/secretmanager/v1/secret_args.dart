// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'replication.dart';
import 'rotation.dart';
import 'topic.dart';

/// The set of arguments for Secret.
class SecretArgs {
  /// Optional. Custom metadata about the secret. Annotations are distinct from various forms of labels. Annotations exist to allow client tools to store their own state information without requiring a database. Annotation keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, begin and end with an alphanumeric character ([a-z0-9A-Z]), and may have dashes (-), underscores (_), dots (.), and alphanumerics in between these symbols. The total size of annotation keys and values must be less than 16KiB.
  final Input<Map<String, String>>? annotations;

  /// Optional. Etag of the currently stored Secret.
  final Input<String>? etag;

  /// Optional. Timestamp in UTC when the Secret is scheduled to expire. This is always provided on output, regardless of what was sent on input.
  final Input<String>? expireTime;

  /// The labels assigned to this Secret. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: `\p{Ll}\p{Lo}{0,62}` Label values must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: `[\p{Ll}\p{Lo}\p{N}_-]{0,63}` No more than 64 labels can be assigned to a given resource.
  final Input<Map<String, String>>? labels;
  final Input<String>? project;

  /// Immutable. The replication policy of the secret data attached to the Secret. The replication policy cannot be changed after the Secret has been created.
  final Input<Replication> replication;

  /// Optional. Rotation policy attached to the Secret. May be excluded if there is no rotation policy.
  final Input<Rotation>? rotation;

  /// Required. This must be unique within the project. A secret ID is a string with a maximum length of 255 characters and can contain uppercase and lowercase letters, numerals, and the hyphen (`-`) and underscore (`_`) characters.
  final Input<String> secretId;

  /// Optional. A list of up to 10 Pub/Sub topics to which messages are published when control plane operations are called on the secret or its versions.
  final Input<List<Topic>>? topics;

  /// Input only. The TTL for the Secret.
  final Input<String>? ttl;

  /// Optional. Mapping from version alias to version name. A version alias is a string with a maximum length of 63 characters and can contain uppercase and lowercase letters, numerals, and the hyphen (`-`) and underscore ('_') characters. An alias string must start with a letter and cannot be the string 'latest' or 'NEW'. No more than 50 aliases can be assigned to a given secret. Version-Alias pairs will be viewable via GetSecret and modifiable via UpdateSecret. At launch Access by Allias will only be supported on GetSecretVersion and AccessSecretVersion.
  final Input<Map<String, String>>? versionAliases;

  SecretArgs({
    this.annotations,
    this.etag,
    this.expireTime,
    this.labels,
    this.project,
    required this.replication,
    this.rotation,
    required this.secretId,
    this.topics,
    this.ttl,
    this.versionAliases,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final expireTimeValue = expireTime;
    if (expireTimeValue != null) {
      map['expireTime'] = expireTimeValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['replication'] = Input.mapInputValue<Replication, Map<String, dynamic>>(
        replication, (value) => value.toMap());
    final rotationValue = rotation;
    if (rotationValue != null) {
      map['rotation'] =
          Input.mapOptionalInputValue<Rotation, Map<String, dynamic>>(
              rotationValue, (value) => value.toMap());
    }
    map['secretId'] = secretId;
    final topicsValue = topics;
    if (topicsValue != null) {
      map['topics'] =
          Input.mapOptionalInputValue<List<Topic>, List<Map<String, dynamic>>>(
              topicsValue,
              (value) => Input.encodeList<Topic, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final ttlValue = ttl;
    if (ttlValue != null) {
      map['ttl'] = ttlValue;
    }
    final versionAliasesValue = versionAliases;
    if (versionAliasesValue != null) {
      map['versionAliases'] = versionAliasesValue;
    }
    return map;
  }

  factory SecretArgs.fromMap(Map<String, dynamic> map) {
    return SecretArgs(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      etag: Input.asOptionalInput<String>(map['etag']),
      expireTime: Input.asOptionalInput<String>(map['expireTime']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      project: Input.asOptionalInput<String>(map['project']),
      replication: Input.asInput<Replication>(map['replication']),
      rotation: Input.asOptionalInput<Rotation>(map['rotation']),
      secretId: Input.asInput<String>(map['secretId']),
      topics: Input.asOptionalInput<List<Topic>>(map['topics']),
      ttl: Input.asOptionalInput<String>(map['ttl']),
      versionAliases:
          Input.asOptionalInput<Map<String, String>>(map['versionAliases']),
    );
  }
}
