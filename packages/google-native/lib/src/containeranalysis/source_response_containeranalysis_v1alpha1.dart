// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_containeranalysis_v1alpha1_source_context_response.dart';
import 'repo_source_response.dart';
import 'storage_source_response.dart';

/// Source describes the location of the source used for the build.
class SourceResponseContaineranalysisV1alpha1 {
  /// If provided, some of the source code used for the build may be found in these locations, in the case where the source repository had multiple remotes or submodules. This list will not include the context specified in the context field.
  final List<GoogleDevtoolsContaineranalysisV1alpha1SourceContextResponse>
  additionalContexts;

  /// If provided, the input binary artifacts for the build came from this location.
  final StorageSourceResponse artifactStorageSource;

  /// If provided, the source code used for the build came from this location.
  final GoogleDevtoolsContaineranalysisV1alpha1SourceContextResponse context;

  /// Hash(es) of the build source, which can be used to verify that the original source integrity was maintained in the build. The keys to this map are file paths used as build source and the values contain the hash values for those files. If the build source came in a single package such as a gzipped tarfile (.tar.gz), the FileHash will be for the single path to that file.
  final Map<String, String> fileHashes;

  /// If provided, get source from this location in a Cloud Repo.
  final RepoSourceResponse repoSource;

  /// If provided, get the source from this location in Google Cloud Storage.
  final StorageSourceResponse storageSource;

  /// Creates a new [SourceResponseContaineranalysisV1alpha1].
  /// [additionalContexts] If provided, some of the source code used for the build may be found in these locations, in the case where the source repository had multiple remotes or submodules. This list will not include the context specified in the context field.
  /// [artifactStorageSource] If provided, the input binary artifacts for the build came from this location.
  /// [context] If provided, the source code used for the build came from this location.
  /// [fileHashes] Hash(es) of the build source, which can be used to verify that the original source integrity was maintained in the build. The keys to this map are file paths used as build source and the values contain the hash values for those files. If the build source came in a single package such as a gzipped tarfile (.tar.gz), the FileHash will be for the single path to that file.
  /// [repoSource] If provided, get source from this location in a Cloud Repo.
  /// [storageSource] If provided, get the source from this location in Google Cloud Storage.
  SourceResponseContaineranalysisV1alpha1({
    required this.additionalContexts,
    required this.artifactStorageSource,
    required this.context,
    required this.fileHashes,
    required this.repoSource,
    required this.storageSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalContexts':
          pulumi.Input.encodeList<
            GoogleDevtoolsContaineranalysisV1alpha1SourceContextResponse,
            Map<String, dynamic>
          >(additionalContexts, (value) => value.toMap()),
      'artifactStorageSource': artifactStorageSource.toMap(),
      'context': context.toMap(),
      'fileHashes': fileHashes,
      'repoSource': repoSource.toMap(),
      'storageSource': storageSource.toMap(),
    };
  }

  factory SourceResponseContaineranalysisV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return SourceResponseContaineranalysisV1alpha1(
      additionalContexts:
          pulumi.Input.decodeList<
            GoogleDevtoolsContaineranalysisV1alpha1SourceContextResponse
          >(
            map['additionalContexts'],
            (value) =>
                GoogleDevtoolsContaineranalysisV1alpha1SourceContextResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      artifactStorageSource: StorageSourceResponse.fromMap(
        (map['artifactStorageSource'] as Map).cast<String, dynamic>(),
      ),
      context:
          GoogleDevtoolsContaineranalysisV1alpha1SourceContextResponse.fromMap(
            (map['context'] as Map).cast<String, dynamic>(),
          ),
      fileHashes: (map['fileHashes'] as Map).cast<String, String>(),
      repoSource: RepoSourceResponse.fromMap(
        (map['repoSource'] as Map).cast<String, dynamic>(),
      ),
      storageSource: StorageSourceResponse.fromMap(
        (map['storageSource'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
