import 'package:pulumi/pulumi.dart';
import 'spec_args.dart';

/// Creates a specified spec.
class Spec extends CustomResource {
  /// Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  late final Output<Map<String, String>> annotations;
  late final Output<String> apiId;

  /// Required. The ID to use for the spec, which will become the final component of the spec's resource name. This value should be 4-63 characters, and valid characters are /a-z-/. Following AIP-162, IDs must not have the form of a UUID.
  late final Output<String> apiSpecId;

  /// Input only. The contents of the spec. Provided by API callers when specs are created or updated. To access the contents of a spec, use GetApiSpecContents.
  late final Output<String> contents;

  /// Creation timestamp; when the spec resource was created.
  late final Output<String> createTime;

  /// A detailed description.
  late final Output<String> description;

  /// A possibly-hierarchical name used to refer to the spec from other specs.
  late final Output<String> filename;

  /// A SHA-256 hash of the spec's contents. If the spec is gzipped, this is the hash of the uncompressed spec.
  late final Output<String> hash;

  /// Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `apigeeregistry.googleapis.com/` and cannot be changed.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// A style (format) descriptor for this spec that is specified as a [Media Type](https://en.wikipedia.org/wiki/Media_type). Possible values include `application/vnd.apigee.proto`, `application/vnd.apigee.openapi`, and `application/vnd.apigee.graphql`, with possible suffixes representing compression types. These hypothetical names are defined in the vendor tree defined in RFC6838 (https://tools.ietf.org/html/rfc6838) and are not final. Content types can specify compression. Currently only GZip compression is supported (indicated with "+gzip").
  late final Output<String> mimeType;

  /// Resource name.
  late final Output<String> name;
  late final Output<String> project;

  /// Revision creation timestamp; when the represented revision was created.
  late final Output<String> revisionCreateTime;

  /// Immutable. The revision ID of the spec. A new revision is committed whenever the spec contents are changed. The format is an 8-character hexadecimal string.
  late final Output<String> revisionId;

  /// Last update timestamp: when the represented revision was last modified.
  late final Output<String> revisionUpdateTime;

  /// The size of the spec file in bytes. If the spec is gzipped, this is the size of the uncompressed spec.
  late final Output<int> sizeBytes;

  /// The original source URI of the spec (if one exists). This is an external location that can be used for reference purposes but which may not be authoritative since this external resource may change after the spec is retrieved.
  late final Output<String> sourceUri;
  late final Output<String> versionId;

  Spec(
    String name, {
    SpecArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigeeregistry/v1:Spec',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>>('annotations');
    this.apiId = registerOutput<String>('apiId');
    this.apiSpecId = registerOutput<String>('apiSpecId');
    this.contents = registerOutput<String>('contents');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.filename = registerOutput<String>('filename');
    this.hash = registerOutput<String>('hash');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.mimeType = registerOutput<String>('mimeType');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.revisionCreateTime = registerOutput<String>('revisionCreateTime');
    this.revisionId = registerOutput<String>('revisionId');
    this.revisionUpdateTime = registerOutput<String>('revisionUpdateTime');
    this.sizeBytes = registerOutput<int>('sizeBytes');
    this.sourceUri = registerOutput<String>('sourceUri');
    this.versionId = registerOutput<String>('versionId');
  }
}
