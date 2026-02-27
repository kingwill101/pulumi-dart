// ignore_for_file: unused_element, unnecessary_cast

class ProjectSecondaryArtifact {
  /// Artifact identifier. Must be the same specified inside the AWS CodeBuild build
  /// specification.
  final String artifactIdentifier;

  /// Specifies the bucket owner's access for objects that another account uploads to
  /// their Amazon S3 bucket. By default, only the account that uploads the objects to the bucket has access to these
  /// objects. This property allows you to give the bucket owner access to these objects. Valid values are `NONE`,
  /// `READ_ONLY`, and `FULL`. The CodeBuild service role must have the `s3:PutBucketAcl` permission. This permission allows
  /// CodeBuild to modify the access control list for the bucket.
  final String? bucketOwnerAccess;

  /// Whether to disable encrypting output artifacts. If `type` is set to `NO_ARTIFACTS`,
  /// this value is ignored. Defaults to `false`.
  final bool? encryptionDisabled;

  /// Information about the build output artifact location. If `type` is set to `CODEPIPELINE` or
  /// `NO_ARTIFACTS`, this value is ignored if specified. If `type` is set to `S3`, this is the name of the output bucket.
  /// If `path` is not specified, `location` can specify the path of the output artifact in the output bucket.
  final String? location;

  /// Name of the project. If `type` is set to `CODEPIPELINE` or `NO_ARTIFACTS`, this value is ignored
  /// if specified. If `type` is set to `S3`, this is the name of the output artifact object.
  final String? name;

  /// Namespace to use in storing build artifacts. If `type` is set to `CODEPIPELINE` or
  /// `NO_ARTIFACTS`, this value is ignored if specified. If `type` is set to `S3`, valid values are `BUILD_ID` or `NONE`.
  final String? namespaceType;

  /// Whether a name specified in the build specification overrides the artifact name.
  final bool? overrideArtifactName;

  /// Type of build output artifact to create. If `type` is set to `CODEPIPELINE` or
  /// `NO_ARTIFACTS`, this value is ignored if specified. If `type` is set to `S3`, valid values are `NONE` or `ZIP`.
  final String? packaging;

  /// Along with `namespace_type` and `name`, the pattern that AWS CodeBuild uses to name and store the
  /// output artifact. If `type` is set to `CODEPIPELINE` or `NO_ARTIFACTS`, this value is ignored if specified. If `type`
  /// is set to `S3`, this is the path to the output artifact.
  final String? path;

  /// Build output artifact's type. Valid values `CODEPIPELINE`, `NO_ARTIFACTS`, and `S3`.
  final String type;

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
    final map = <String, dynamic>{};
    map['artifactIdentifier'] = artifactIdentifier;
    final bucketOwnerAccessValue = bucketOwnerAccess;
    if (bucketOwnerAccessValue != null) {
      map['bucketOwnerAccess'] = bucketOwnerAccessValue;
    }
    final encryptionDisabledValue = encryptionDisabled;
    if (encryptionDisabledValue != null) {
      map['encryptionDisabled'] = encryptionDisabledValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namespaceTypeValue = namespaceType;
    if (namespaceTypeValue != null) {
      map['namespaceType'] = namespaceTypeValue;
    }
    final overrideArtifactNameValue = overrideArtifactName;
    if (overrideArtifactNameValue != null) {
      map['overrideArtifactName'] = overrideArtifactNameValue;
    }
    final packagingValue = packaging;
    if (packagingValue != null) {
      map['packaging'] = packagingValue;
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    map['type'] = type;
    return map;
  }

  factory ProjectSecondaryArtifact.fromMap(Map<String, dynamic> map) {
    return ProjectSecondaryArtifact(
      artifactIdentifier: map['artifactIdentifier'] as String,
      bucketOwnerAccess: map['bucketOwnerAccess'] == null
          ? null
          : map['bucketOwnerAccess'] as String,
      encryptionDisabled: map['encryptionDisabled'] == null
          ? null
          : map['encryptionDisabled'] as bool,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      namespaceType:
          map['namespaceType'] == null ? null : map['namespaceType'] as String,
      overrideArtifactName: map['overrideArtifactName'] == null
          ? null
          : map['overrideArtifactName'] as bool,
      packaging: map['packaging'] == null ? null : map['packaging'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      type: map['type'] as String,
    );
  }
}
