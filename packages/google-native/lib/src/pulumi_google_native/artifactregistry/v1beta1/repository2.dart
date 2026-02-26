import 'package:pulumi/pulumi.dart';
import 'repository_args2.dart';

/// Creates a repository. The returned Operation will finish once the repository has been created. Its response will be the created Repository.
class Repository2 extends CustomResource {
  /// The time when the repository was created.
  late final Output<String> createTime;

  /// The user-provided description of the repository.
  late final Output<String> description;

  /// Optional. The format of packages that are stored in the repository.
  late final Output<String> format;

  /// The Cloud KMS resource name of the customer managed encryption key that's used to encrypt the contents of the Repository. Has the form: `projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key`. This value may not be changed after the Repository has been created.
  late final Output<String> kmsKeyName;

  /// Labels with user-defined metadata. This field may contain up to 64 entries. Label keys and values may be no longer than 63 characters. Label keys must begin with a lowercase letter and may only contain lowercase letters, numeric characters, underscores, and dashes.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The name of the repository, for example: `projects/p1/locations/us-central1/repositories/repo1`.
  late final Output<String> name;
  late final Output<String> project;

  /// Required. The repository id to use for this repository.
  late final Output<String> repositoryId;

  /// If set, the repository satisfies physical zone separation.
  late final Output<bool> satisfiesPzs;

  /// The size, in bytes, of all artifact storage in this repository. Repositories that are generally available or in public preview use this to calculate storage costs.
  late final Output<String> sizeBytes;

  /// The time when the repository was last updated.
  late final Output<String> updateTime;

  Repository2(
    String name, {
    RepositoryArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:artifactregistry/v1beta1:Repository',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.format = registerOutput<String>('format');
    this.kmsKeyName = registerOutput<String>('kmsKeyName');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.repositoryId = registerOutput<String>('repositoryId');
    this.satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    this.sizeBytes = registerOutput<String>('sizeBytes');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
