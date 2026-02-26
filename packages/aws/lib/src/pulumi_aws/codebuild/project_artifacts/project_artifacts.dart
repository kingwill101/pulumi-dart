// ignore_for_file: unused_element, unnecessary_cast

class ProjectArtifacts {
  /// Artifact identifier. Must be the same specified inside the AWS CodeBuild build
  /// specification.
  final String? artifactIdentifier;

  /// Specifies the bucket owner's access for objects that another account uploads to
  /// their Amazon S3 bucket. By default, only the account that uploads the objects to the bucket has access to these
  /// objects. This property allows you to give the bucket owner access to these objects. Valid values are `NONE`,
  /// `READ_ONLY`, and `FULL`. your CodeBuild service role must have the `s3:PutBucketAcl` permission. This permission
  /// allows CodeBuild to modify the access control list for the bucket.
  final String? bucketOwnerAccess;

  /// Whether to disable encrypting output artifacts. If <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is set to `NO_ARTIFACTS`,
  /// this value is ignored. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? encryptionDisabled;

  /// Information about the build output artifact location. If <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is set to `CODEPIPELINE` or
  /// `NO_ARTIFACTS`, this value is ignored. If <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is set to `S3`, this is the name of the output bucket.
  final String? location;

  /// Name of the project. If <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is set to `S3`, this is the name of the output artifact object
  final String? name;

  /// Namespace to use in storing build artifacts. If <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is set to `S3`, then valid values
  /// are `BUILD_ID`, `NONE`.
  final String? namespaceType;

  /// Whether a name specified in the build specification overrides the artifact name.
  final bool? overrideArtifactName;

  /// Type of build output artifact to create. If <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is set to `S3`, valid values are `NONE`,
  /// `ZIP`
  final String? packaging;

  /// If <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is set to `S3`, this is the path to the output artifact.
  final String? path;

  /// Build output artifact's type. Valid values: `CODEPIPELINE`, `NO_ARTIFACTS`, `S3`.
  final String type;

  ProjectArtifacts({
    this.artifactIdentifier,
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
    final artifactIdentifierValue = artifactIdentifier;
    if (artifactIdentifierValue != null) {
      map['artifactIdentifier'] = artifactIdentifierValue;
    }
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

  factory ProjectArtifacts.fromMap(Map<String, dynamic> map) {
    return ProjectArtifacts(
      artifactIdentifier: map['artifactIdentifier'] == null
          ? null
          : map['artifactIdentifier'] as String,
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
