import 'package:pulumi/pulumi.dart';
import 'maven_repository_config_response2.dart';
import 'repository_args3.dart';

/// Creates a repository. The returned Operation will finish once the repository has been created. Its response will be the created Repository.
class Repository3 extends CustomResource {
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

  /// Maven repository config contains repository level configuration for the repositories of maven type.
  late final Output<MavenRepositoryConfigResponse2> mavenConfig;

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

  Repository3(
    String name, {
    RepositoryArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:artifactregistry/v1beta2:Repository',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.format = Output.createUnknown<String>();
    this.kmsKeyName = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.mavenConfig = Output.createUnknown<MavenRepositoryConfigResponse2>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.repositoryId = Output.createUnknown<String>();
    this.satisfiesPzs = Output.createUnknown<bool>();
    this.sizeBytes = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
