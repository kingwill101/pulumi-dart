// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectSecondaryArtifact {
  /// Artifact identifier. Must be the same specified inside the AWS CodeBuild build
  /// specification.
  final pulumi.Input<String> artifactIdentifier;
  /// Specifies the bucket owner's access for objects that another account uploads to
  /// their Amazon S3 bucket. By default, only the account that uploads the objects to the bucket has access to these
  /// objects. This property allows you to give the bucket owner access to these objects. Valid values are `NONE`,
  /// `READ_ONLY`, and `FULL`. The CodeBuild service role must have the `s3:PutBucketAcl` permission. This permission allows
  /// CodeBuild to modify the access control list for the bucket.
  final pulumi.Input<String>? bucketOwnerAccess;
  /// Whether to disable encrypting output artifacts. If `type` is set to `NO_ARTIFACTS`,
  /// this value is ignored. Defaults to `false`.
  final pulumi.Input<bool>? encryptionDisabled;
  /// Information about the build output artifact location. If `type` is set to `CODEPIPELINE` or
  /// `NO_ARTIFACTS`, this value is ignored if specified. If `type` is set to `S3`, this is the name of the output bucket.
  /// If `path` is not specified, `location` can specify the path of the output artifact in the output bucket.
  final pulumi.Input<String>? location;
  /// Name of the project. If `type` is set to `CODEPIPELINE` or `NO_ARTIFACTS`, this value is ignored
  /// if specified. If `type` is set to `S3`, this is the name of the output artifact object.
  final pulumi.Input<String>? name;
  /// Namespace to use in storing build artifacts. If `type` is set to `CODEPIPELINE` or
  /// `NO_ARTIFACTS`, this value is ignored if specified. If `type` is set to `S3`, valid values are `BUILD_ID` or `NONE`.
  final pulumi.Input<String>? namespaceType;
  /// Whether a name specified in the build specification overrides the artifact name.
  final pulumi.Input<bool>? overrideArtifactName;
  /// Type of build output artifact to create. If `type` is set to `CODEPIPELINE` or
  /// `NO_ARTIFACTS`, this value is ignored if specified. If `type` is set to `S3`, valid values are `NONE` or `ZIP`.
  final pulumi.Input<String>? packaging;
  /// Along with `namespace_type` and `name`, the pattern that AWS CodeBuild uses to name and store the
  /// output artifact. If `type` is set to `CODEPIPELINE` or `NO_ARTIFACTS`, this value is ignored if specified. If `type`
  /// is set to `S3`, this is the path to the output artifact.
  final pulumi.Input<String>? path;
  /// Build output artifact's type. Valid values `CODEPIPELINE`, `NO_ARTIFACTS`, and `S3`.
  final pulumi.Input<String> type;

  /// Creates a new [ProjectSecondaryArtifact].
  /// [artifactIdentifier] Artifact identifier. Must be the same specified inside the AWS CodeBuild build
  /// [bucketOwnerAccess] Specifies the bucket owner's access for objects that another account uploads to
  /// [encryptionDisabled] Whether to disable encrypting output artifacts. If `type` is set to `NO_ARTIFACTS`,
  /// [location] Information about the build output artifact location. If `type` is set to `CODEPIPELINE` or
  /// [name] Name of the project. If `type` is set to `CODEPIPELINE` or `NO_ARTIFACTS`, this value is ignored
  /// [namespaceType] Namespace to use in storing build artifacts. If `type` is set to `CODEPIPELINE` or
  /// [overrideArtifactName] Whether a name specified in the build specification overrides the artifact name.
  /// [packaging] Type of build output artifact to create. If `type` is set to `CODEPIPELINE` or
  /// [path] Along with `namespace_type` and `name`, the pattern that AWS CodeBuild uses to name and store the
  /// [type] Build output artifact's type. Valid values `CODEPIPELINE`, `NO_ARTIFACTS`, and `S3`.
  ProjectSecondaryArtifact({
    required this.artifactIdentifier,
    this.bucketOwnerAccess,
    this.encryptionDisabled,
    this.location,
    this.name,
    this.namespaceType,
    this.overrideArtifactName,
    this.packaging,
    this.path,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactIdentifier': artifactIdentifier,
      'bucketOwnerAccess': ?bucketOwnerAccess,
      'encryptionDisabled': ?encryptionDisabled,
      'location': ?location,
      'name': ?name,
      'namespaceType': ?namespaceType,
      'overrideArtifactName': ?overrideArtifactName,
      'packaging': ?packaging,
      'path': ?path,
      'type': type,
    };
  }

  factory ProjectSecondaryArtifact.fromMap(Map<String, dynamic> map) {
    return ProjectSecondaryArtifact(
      artifactIdentifier: (map['artifactIdentifier'] as String).input(),
      bucketOwnerAccess: map['bucketOwnerAccess'] == null ? null : (map['bucketOwnerAccess'] as String).input(),
      encryptionDisabled: map['encryptionDisabled'] == null ? null : (map['encryptionDisabled'] as bool).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namespaceType: map['namespaceType'] == null ? null : (map['namespaceType'] as String).input(),
      overrideArtifactName: map['overrideArtifactName'] == null ? null : (map['overrideArtifactName'] as bool).input(),
      packaging: map['packaging'] == null ? null : (map['packaging'] as String).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

