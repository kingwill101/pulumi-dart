// ignore_for_file: unused_element, unnecessary_cast

class PipelineJobMappingPipelineJobMappingConfigWhistleConfigSource {
  /// Directory path where all the Whistle files are located.
  /// Example: gs://{bucket-id}/{path/to/import-root/dir}
  final String importUriPrefix;

  /// Main configuration file which has the entrypoint or the root function.
  /// Example: gs://{bucket-id}/{path/to/import-root/dir}/entrypoint-file-name.wstl.
  final String uri;

  /// Creates a new [PipelineJobMappingPipelineJobMappingConfigWhistleConfigSource].
  /// [importUriPrefix] Directory path where all the Whistle files are located.
  /// [uri] Main configuration file which has the entrypoint or the root function.
  PipelineJobMappingPipelineJobMappingConfigWhistleConfigSource({
    required this.importUriPrefix,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['importUriPrefix'] = importUriPrefix;
    map['uri'] = uri;
    return map;
  }

  factory PipelineJobMappingPipelineJobMappingConfigWhistleConfigSource.fromMap(
      Map<String, dynamic> map) {
    return PipelineJobMappingPipelineJobMappingConfigWhistleConfigSource(
      importUriPrefix: map['importUriPrefix'] as String,
      uri: map['uri'] as String,
    );
  }
}
