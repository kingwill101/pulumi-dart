import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_response.dart';
import 'rotation_response.dart';
import 'secret_args.dart';
import 'topic_response.dart';

/// Creates a new Secret containing no SecretVersions.
/// Auto-naming is currently not supported for this resource.
class Secret extends pulumi.CustomResource {
  /// Optional. Custom metadata about the secret. Annotations are distinct from various forms of labels. Annotations exist to allow client tools to store their own state information without requiring a database. Annotation keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, begin and end with an alphanumeric character ([a-z0-9A-Z]), and may have dashes (-), underscores (_), dots (.), and alphanumerics in between these symbols. The total size of annotation keys and values must be less than 16KiB.
  late final pulumi.Output<Map<String, String>> annotations;

  /// The time at which the Secret was created.
  late final pulumi.Output<String> createTime;

  /// Optional. Etag of the currently stored Secret.
  late final pulumi.Output<String> etag;

  /// Optional. Timestamp in UTC when the Secret is scheduled to expire. This is always provided on output, regardless of what was sent on input.
  late final pulumi.Output<String> expireTime;

  /// The labels assigned to this Secret. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: `\p{Ll}\p{Lo}{0,62}` Label values must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: `[\p{Ll}\p{Lo}\p{N}_-]{0,63}` No more than 64 labels can be assigned to a given resource.
  late final pulumi.Output<Map<String, String>> labels;

  /// The resource name of the Secret in the format `projects/*/secrets/*`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Immutable. The replication policy of the secret data attached to the Secret. The replication policy cannot be changed after the Secret has been created.
  late final pulumi.Output<ReplicationResponse> replication;

  /// Optional. Rotation policy attached to the Secret. May be excluded if there is no rotation policy.
  late final pulumi.Output<RotationResponse> rotation;

  /// Required. This must be unique within the project. A secret ID is a string with a maximum length of 255 characters and can contain uppercase and lowercase letters, numerals, and the hyphen (`-`) and underscore (`_`) characters.
  late final pulumi.Output<String> secretId;

  /// Optional. A list of up to 10 Pub/Sub topics to which messages are published when control plane operations are called on the secret or its versions.
  late final pulumi.Output<List<TopicResponse>> topics;

  /// Input only. The TTL for the Secret.
  late final pulumi.Output<String> ttl;

  /// Optional. Mapping from version alias to version name. A version alias is a string with a maximum length of 63 characters and can contain uppercase and lowercase letters, numerals, and the hyphen (`-`) and underscore ('_') characters. An alias string must start with a letter and cannot be the string 'latest' or 'NEW'. No more than 50 aliases can be assigned to a given secret. Version-Alias pairs will be viewable via GetSecret and modifiable via UpdateSecret. At launch Access by Allias will only be supported on GetSecretVersion and AccessSecretVersion.
  late final pulumi.Output<Map<String, String>> versionAliases;

  /// Creates a new [Secret].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Secret]. {@macro pulumi_secretmanager_v1_secret_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Secret(
    String name, {
    SecretArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:secretmanager/v1:Secret',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>>('annotations');
    this.createTime = registerOutput<String>('createTime');
    this.etag = registerOutput<String>('etag');
    this.expireTime = registerOutput<String>('expireTime');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.replication = registerOutput<ReplicationResponse>('replication');
    this.rotation = registerOutput<RotationResponse>('rotation');
    this.secretId = registerOutput<String>('secretId');
    this.topics = registerOutput<List<TopicResponse>>('topics');
    this.ttl = registerOutput<String>('ttl');
    this.versionAliases = registerOutput<Map<String, String>>('versionAliases');
  }
}
