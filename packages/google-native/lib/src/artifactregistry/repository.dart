import 'package:pulumi/pulumi.dart' as pulumi;
import 'docker_repository_config_response.dart';
import 'maven_repository_config_response.dart';
import 'remote_repository_config_response.dart';
import 'repository_args.dart';
import 'virtual_repository_config_response.dart';

/// Creates a repository. The returned Operation will finish once the repository has been created. Its response will be the created Repository.
class Repository extends pulumi.CustomResource {
  /// Optional. Cleanup policies for this repository. Cleanup policies indicate when certain package versions can be automatically deleted. Map keys are policy IDs supplied by users during policy creation. They must unique within a repository and be under 128 characters in length.
  late final pulumi.Output<Map<String, String>> cleanupPolicies;

  /// Optional. If true, the cleanup pipeline is prevented from deleting versions in this repository.
  late final pulumi.Output<bool> cleanupPolicyDryRun;

  /// The time when the repository was created.
  late final pulumi.Output<String> createTime;

  /// The user-provided description of the repository.
  late final pulumi.Output<String> description;

  /// Docker repository config contains repository level configuration for the repositories of docker type.
  late final pulumi.Output<DockerRepositoryConfigResponse> dockerConfig;

  /// Optional. The format of packages that are stored in the repository.
  late final pulumi.Output<String> format;

  /// The Cloud KMS resource name of the customer managed encryption key that's used to encrypt the contents of the Repository. Has the form: `projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key`. This value may not be changed after the Repository has been created.
  late final pulumi.Output<String> kmsKeyName;

  /// Labels with user-defined metadata. This field may contain up to 64 entries. Label keys and values may be no longer than 63 characters. Label keys must begin with a lowercase letter and may only contain lowercase letters, numeric characters, underscores, and dashes.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Maven repository config contains repository level configuration for the repositories of maven type.
  late final pulumi.Output<MavenRepositoryConfigResponse> mavenConfig;

  /// Optional. The mode of the repository.
  late final pulumi.Output<String> mode;

  /// The name of the repository, for example: `projects/p1/locations/us-central1/repositories/repo1`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Configuration specific for a Remote Repository.
  late final pulumi.Output<RemoteRepositoryConfigResponse>
      remoteRepositoryConfig;

  /// Required. The repository id to use for this repository.
  late final pulumi.Output<String> repositoryId;

  /// If set, the repository satisfies physical zone separation.
  late final pulumi.Output<bool> satisfiesPzs;

  /// The size, in bytes, of all artifact storage in this repository. Repositories that are generally available or in public preview use this to calculate storage costs.
  late final pulumi.Output<String> sizeBytes;

  /// The time when the repository was last updated.
  late final pulumi.Output<String> updateTime;

  /// Configuration specific for a Virtual Repository.
  late final pulumi.Output<VirtualRepositoryConfigResponse>
      virtualRepositoryConfig;

  /// Creates a new [Repository].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Repository]. {@macro pulumi_artifactregistry_v1_repository_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Repository(
    String name, {
    RepositoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:artifactregistry/v1:Repository',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cleanupPolicies =
        registerOutput<Map<String, String>>('cleanupPolicies');
    this.cleanupPolicyDryRun = registerOutput<bool>('cleanupPolicyDryRun');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.dockerConfig =
        registerOutput<DockerRepositoryConfigResponse>('dockerConfig');
    this.format = registerOutput<String>('format');
    this.kmsKeyName = registerOutput<String>('kmsKeyName');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.mavenConfig =
        registerOutput<MavenRepositoryConfigResponse>('mavenConfig');
    this.mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.remoteRepositoryConfig =
        registerOutput<RemoteRepositoryConfigResponse>(
            'remoteRepositoryConfig');
    this.repositoryId = registerOutput<String>('repositoryId');
    this.satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    this.sizeBytes = registerOutput<String>('sizeBytes');
    this.updateTime = registerOutput<String>('updateTime');
    this.virtualRepositoryConfig =
        registerOutput<VirtualRepositoryConfigResponse>(
            'virtualRepositoryConfig');
  }
}
