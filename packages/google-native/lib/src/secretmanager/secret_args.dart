// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication.dart';
import 'rotation.dart';
import 'topic.dart';

/// {@template pulumi_secretmanager_v1_secret_args_doc}
/// The set of arguments for Secret.
/// {@endtemplate}
/// {@macro pulumi_secretmanager_v1_secret_args_doc}
class SecretArgs {
  /// Optional. Custom metadata about the secret. Annotations are distinct from various forms of labels. Annotations exist to allow client tools to store their own state information without requiring a database. Annotation keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, begin and end with an alphanumeric character ([a-z0-9A-Z]), and may have dashes (-), underscores (_), dots (.), and alphanumerics in between these symbols. The total size of annotation keys and values must be less than 16KiB.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Optional. Etag of the currently stored Secret.
  final pulumi.Input<String>? etag;

  /// Optional. Timestamp in UTC when the Secret is scheduled to expire. This is always provided on output, regardless of what was sent on input.
  final pulumi.Input<String>? expireTime;

  /// The labels assigned to this Secret. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: `\p{Ll}\p{Lo}{0,62}` Label values must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: `[\p{Ll}\p{Lo}\p{N}_-]{0,63}` No more than 64 labels can be assigned to a given resource.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? project;

  /// Immutable. The replication policy of the secret data attached to the Secret. The replication policy cannot be changed after the Secret has been created.
  final pulumi.Input<Replication> replication;

  /// Optional. Rotation policy attached to the Secret. May be excluded if there is no rotation policy.
  final pulumi.Input<Rotation>? rotation;

  /// Required. This must be unique within the project. A secret ID is a string with a maximum length of 255 characters and can contain uppercase and lowercase letters, numerals, and the hyphen (`-`) and underscore (`_`) characters.
  final pulumi.Input<String> secretId;

  /// Optional. A list of up to 10 Pub/Sub topics to which messages are published when control plane operations are called on the secret or its versions.
  final pulumi.Input<List<Topic>>? topics;

  /// Input only. The TTL for the Secret.
  final pulumi.Input<String>? ttl;

  /// Optional. Mapping from version alias to version name. A version alias is a string with a maximum length of 63 characters and can contain uppercase and lowercase letters, numerals, and the hyphen (`-`) and underscore ('_') characters. An alias string must start with a letter and cannot be the string 'latest' or 'NEW'. No more than 50 aliases can be assigned to a given secret. Version-Alias pairs will be viewable via GetSecret and modifiable via UpdateSecret. At launch Access by Allias will only be supported on GetSecretVersion and AccessSecretVersion.
  final pulumi.Input<Map<String, String>>? versionAliases;

  /// Creates a new [SecretArgs].
  /// [annotations] Optional. Custom metadata about the secret. Annotations are distinct from various forms of labels. Annotations exist to allow client tools to store their own state information without requiring a database. Annotation keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, begin and end with an alphanumeric character ([a-z0-9A-Z]), and may have dashes (-), underscores (_), dots (.), and alphanumerics in between these symbols. The total size of annotation keys and values must be less than 16KiB.
  /// [etag] Optional. Etag of the currently stored Secret.
  /// [expireTime] Optional. Timestamp in UTC when the Secret is scheduled to expire. This is always provided on output, regardless of what was sent on input.
  /// [labels] The labels assigned to this Secret. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: `\p{Ll}\p{Lo}{0,62}` Label values must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: `[\p{Ll}\p{Lo}\p{N}_-]{0,63}` No more than 64 labels can be assigned to a given resource.
  /// [project] Optional.
  /// [replication] Immutable. The replication policy of the secret data attached to the Secret. The replication policy cannot be changed after the Secret has been created.
  /// [rotation] Optional. Rotation policy attached to the Secret. May be excluded if there is no rotation policy.
  /// [secretId] Required. This must be unique within the project. A secret ID is a string with a maximum length of 255 characters and can contain uppercase and lowercase letters, numerals, and the hyphen (`-`) and underscore (`_`) characters.
  /// [topics] Optional. A list of up to 10 Pub/Sub topics to which messages are published when control plane operations are called on the secret or its versions.
  /// [ttl] Input only. The TTL for the Secret.
  /// [versionAliases] Optional. Mapping from version alias to version name. A version alias is a string with a maximum length of 63 characters and can contain uppercase and lowercase letters, numerals, and the hyphen (`-`) and underscore ('_') characters. An alias string must start with a letter and cannot be the string 'latest' or 'NEW'. No more than 50 aliases can be assigned to a given secret. Version-Alias pairs will be viewable via GetSecret and modifiable via UpdateSecret. At launch Access by Allias will only be supported on GetSecretVersion and AccessSecretVersion.
  SecretArgs({
    Map<String, String>? annotations,
    String? etag,
    String? expireTime,
    Map<String, String>? labels,
    String? project,
    required Replication replication,
    Rotation? rotation,
    required String secretId,
    List<Topic>? topics,
    String? ttl,
    Map<String, String>? versionAliases,
  }) : annotations = pulumi.Input.asOptionalInput<Map<String, String>>(
         annotations,
       ),
       etag = pulumi.Input.asOptionalInput<String>(etag),
       expireTime = pulumi.Input.asOptionalInput<String>(expireTime),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       project = pulumi.Input.asOptionalInput<String>(project),
       replication = pulumi.Input.asInput<Replication>(replication),
       rotation = pulumi.Input.asOptionalInput<Rotation>(rotation),
       secretId = pulumi.Input.asInput<String>(secretId),
       topics = pulumi.Input.asOptionalInput<List<Topic>>(topics),
       ttl = pulumi.Input.asOptionalInput<String>(ttl),
       versionAliases = pulumi.Input.asOptionalInput<Map<String, String>>(
         versionAliases,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'etag': ?etag,
      'expireTime': ?expireTime,
      'labels': ?labels,
      'project': ?project,
      'replication':
          pulumi.Input.mapInputValue<Replication, Map<String, dynamic>>(
            replication,
            (value) => value.toMap(),
          ),
      'rotation':
          ?pulumi.Input.mapOptionalInputValue<Rotation, Map<String, dynamic>>(
            rotation,
            (value) => value.toMap(),
          ),
      'secretId': secretId,
      'topics':
          ?pulumi.Input.mapOptionalInputValue<
            List<Topic>,
            List<Map<String, dynamic>>
          >(
            topics,
            (value) => pulumi.Input.encodeList<Topic, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'ttl': ?ttl,
      'versionAliases': ?versionAliases,
    };
  }

  factory SecretArgs.fromMap(Map<String, dynamic> map) {
    return SecretArgs(
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      etag: map['etag'] == null ? null : map['etag'] as String,
      expireTime: map['expireTime'] == null
          ? null
          : map['expireTime'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      project: map['project'] == null ? null : map['project'] as String,
      replication: Replication.fromMap(
        (map['replication'] as Map).cast<String, dynamic>(),
      ),
      rotation: map['rotation'] == null
          ? null
          : Rotation.fromMap((map['rotation'] as Map).cast<String, dynamic>()),
      secretId: map['secretId'] as String,
      topics: map['topics'] == null
          ? null
          : pulumi.Input.decodeList<Topic>(
              map['topics'],
              (value) => Topic.fromMap((value as Map).cast<String, dynamic>()),
            ),
      ttl: map['ttl'] == null ? null : map['ttl'] as String,
      versionAliases: map['versionAliases'] == null
          ? null
          : (map['versionAliases'] as Map).cast<String, String>(),
    );
  }
}
