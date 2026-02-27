// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_containeranalysis_v1alpha1_source_context.dart';
import 'repo_source_containeranalysis_v1alpha1.dart';
import 'storage_source_containeranalysis_v1alpha1.dart';

/// Source describes the location of the source used for the build.
class SourceContaineranalysisV1alpha1 {
  /// If provided, some of the source code used for the build may be found in these locations, in the case where the source repository had multiple remotes or submodules. This list will not include the context specified in the context field.
  final List<GoogleDevtoolsContaineranalysisV1alpha1SourceContext>?
      additionalContexts;

  /// If provided, the input binary artifacts for the build came from this location.
  final StorageSourceContaineranalysisV1alpha1? artifactStorageSource;

  /// If provided, the source code used for the build came from this location.
  final GoogleDevtoolsContaineranalysisV1alpha1SourceContext? context;

  /// Hash(es) of the build source, which can be used to verify that the original source integrity was maintained in the build. The keys to this map are file paths used as build source and the values contain the hash values for those files. If the build source came in a single package such as a gzipped tarfile (.tar.gz), the FileHash will be for the single path to that file.
  final Map<String, String>? fileHashes;

  /// If provided, get source from this location in a Cloud Repo.
  final RepoSourceContaineranalysisV1alpha1? repoSource;

  /// If provided, get the source from this location in Google Cloud Storage.
  final StorageSourceContaineranalysisV1alpha1? storageSource;

  SourceContaineranalysisV1alpha1({
    this.additionalContexts,
    this.artifactStorageSource,
    this.context,
    this.fileHashes,
    this.repoSource,
    this.storageSource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalContextsValue = additionalContexts;
    if (additionalContextsValue != null) {
      map['additionalContexts'] = pulumi.Input.encodeList<
              GoogleDevtoolsContaineranalysisV1alpha1SourceContext,
              Map<String, dynamic>>(
          additionalContextsValue, (value) => value.toMap());
    }
    final artifactStorageSourceValue = artifactStorageSource;
    if (artifactStorageSourceValue != null) {
      map['artifactStorageSource'] = artifactStorageSourceValue.toMap();
    }
    final contextValue = context;
    if (contextValue != null) {
      map['context'] = contextValue.toMap();
    }
    final fileHashesValue = fileHashes;
    if (fileHashesValue != null) {
      map['fileHashes'] = fileHashesValue;
    }
    final repoSourceValue = repoSource;
    if (repoSourceValue != null) {
      map['repoSource'] = repoSourceValue.toMap();
    }
    final storageSourceValue = storageSource;
    if (storageSourceValue != null) {
      map['storageSource'] = storageSourceValue.toMap();
    }
    return map;
  }

  factory SourceContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return SourceContaineranalysisV1alpha1(
      additionalContexts: map['additionalContexts'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleDevtoolsContaineranalysisV1alpha1SourceContext>(
              map['additionalContexts'],
              (value) =>
                  GoogleDevtoolsContaineranalysisV1alpha1SourceContext.fromMap(
                      (value as Map).cast<String, dynamic>())),
      artifactStorageSource: map['artifactStorageSource'] == null
          ? null
          : StorageSourceContaineranalysisV1alpha1.fromMap(
              (map['artifactStorageSource'] as Map).cast<String, dynamic>()),
      context: map['context'] == null
          ? null
          : GoogleDevtoolsContaineranalysisV1alpha1SourceContext.fromMap(
              (map['context'] as Map).cast<String, dynamic>()),
      fileHashes: map['fileHashes'] == null
          ? null
          : (map['fileHashes'] as Map).cast<String, String>(),
      repoSource: map['repoSource'] == null
          ? null
          : RepoSourceContaineranalysisV1alpha1.fromMap(
              (map['repoSource'] as Map).cast<String, dynamic>()),
      storageSource: map['storageSource'] == null
          ? null
          : StorageSourceContaineranalysisV1alpha1.fromMap(
              (map['storageSource'] as Map).cast<String, dynamic>()),
    );
  }
}
