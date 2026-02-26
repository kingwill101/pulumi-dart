import 'package:pulumi/pulumi.dart';
import 'version_artifact_args.dart';

/// Creates a specified artifact.
class VersionArtifact extends CustomResource {
  /// Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  late final Output<Map<String, String>> annotations;
  late final Output<String> apiId;

  /// Required. The ID to use for the artifact, which will become the final component of the artifact's resource name. This value should be 4-63 characters, and valid characters are /a-z-/. Following AIP-162, IDs must not have the form of a UUID.
  late final Output<String> artifactId;

  /// Input only. The contents of the artifact. Provided by API callers when artifacts are created or replaced. To access the contents of an artifact, use GetArtifactContents.
  late final Output<String> contents;

  /// Creation timestamp.
  late final Output<String> createTime;

  /// A SHA-256 hash of the artifact's contents. If the artifact is gzipped, this is the hash of the uncompressed artifact.
  late final Output<String> hash;

  /// Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with "registry.googleapis.com/" and cannot be changed.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// A content type specifier for the artifact. Content type specifiers are Media Types (https://en.wikipedia.org/wiki/Media_type) with a possible "schema" parameter that specifies a schema for the stored information. Content types can specify compression. Currently only GZip compression is supported (indicated with "+gzip").
  late final Output<String> mimeType;

  /// Resource name.
  late final Output<String> name;
  late final Output<String> project;

  /// The size of the artifact in bytes. If the artifact is gzipped, this is the size of the uncompressed artifact.
  late final Output<int> sizeBytes;

  /// Last update timestamp.
  late final Output<String> updateTime;
  late final Output<String> versionId;

  VersionArtifact(
    String name, {
    VersionArtifactArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigeeregistry/v1:VersionArtifact',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = Output.createUnknown<Map<String, String>>();
    this.apiId = Output.createUnknown<String>();
    this.artifactId = Output.createUnknown<String>();
    this.contents = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.hash = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.mimeType = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.sizeBytes = Output.createUnknown<int>();
    this.updateTime = Output.createUnknown<String>();
    this.versionId = Output.createUnknown<String>();
  }
}
