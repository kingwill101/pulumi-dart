import 'package:pulumi/pulumi.dart' hide Config;
import 'replication_response2.dart';
import 'secret_args2.dart';

/// Creates a new Secret containing no SecretVersions.
/// Auto-naming is currently not supported for this resource.
class Secret7 extends CustomResource {
  /// The time at which the Secret was created.
  late final Output<String> createTime;

  /// The labels assigned to this Secret. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: `\p{Ll}\p{Lo}{0,62}` Label values must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: `[\p{Ll}\p{Lo}\p{N}_-]{0,63}` No more than 64 labels can be assigned to a given resource.
  late final Output<Map<String, String>> labels;

  /// The resource name of the Secret in the format `projects/*/secrets/*`.
  late final Output<String> name;
  late final Output<String> project;

  /// Immutable. The replication policy of the secret data attached to the Secret. The replication policy cannot be changed after the Secret has been created.
  late final Output<ReplicationResponse2> replication;

  /// Required. This must be unique within the project. A secret ID is a string with a maximum length of 255 characters and can contain uppercase and lowercase letters, numerals, and the hyphen (`-`) and underscore (`_`) characters.
  late final Output<String> secretId;

  Secret7(
    String name, {
    SecretArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:secretmanager/v1beta1:Secret',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.replication = registerOutput<ReplicationResponse2>('replication');
    this.secretId = registerOutput<String>('secretId');
  }
}
