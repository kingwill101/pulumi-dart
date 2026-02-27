import 'package:pulumi/pulumi.dart' hide Config;
import 'document_args5.dart';
import 'google_cloud_discoveryengine_v1beta_document_content_response.dart';

/// Creates a Document.
class Document5 extends CustomResource {
  late final Output<String> branchId;
  late final Output<String> collectionId;

  /// The unstructured data linked to this document. Content must be set if this document is under a `CONTENT_REQUIRED` data store.
  late final Output<GoogleCloudDiscoveryengineV1betaDocumentContentResponse>
      content;
  late final Output<String> dataStoreId;

  /// This field is OUTPUT_ONLY. It contains derived data that are not in the original input document.
  late final Output<Map<String, String>> derivedStructData;

  /// Required. The ID to use for the Document, which will become the final component of the Document.name. If the caller does not have permission to create the Document, regardless of whether or not it exists, a `PERMISSION_DENIED` error is returned. This field must be unique among all Documents with the same parent. Otherwise, an `ALREADY_EXISTS` error is returned. This field must conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63 characters. Otherwise, an `INVALID_ARGUMENT` error is returned.
  late final Output<String> documentId;

  /// The JSON string representation of the document. It should conform to the registered Schema or an `INVALID_ARGUMENT` error is thrown.
  late final Output<String> jsonData;
  late final Output<String> location;

  /// Immutable. The full resource name of the document. Format: `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}/documents/{document_id}`. This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  late final Output<String> name;

  /// The identifier of the parent document. Currently supports at most two level document hierarchy. Id should conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63 characters.
  late final Output<String> parentDocumentId;
  late final Output<String> project;

  /// The identifier of the schema located in the same data store.
  late final Output<String> schemaId;

  /// The structured JSON data for the document. It should conform to the registered Schema or an `INVALID_ARGUMENT` error is thrown.
  late final Output<Map<String, String>> structData;

  Document5(
    String name, {
    DocumentArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:discoveryengine/v1beta:Document',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.branchId = registerOutput<String>('branchId');
    this.collectionId = registerOutput<String>('collectionId');
    this.content =
        registerOutput<GoogleCloudDiscoveryengineV1betaDocumentContentResponse>(
            'content');
    this.dataStoreId = registerOutput<String>('dataStoreId');
    this.derivedStructData =
        registerOutput<Map<String, String>>('derivedStructData');
    this.documentId = registerOutput<String>('documentId');
    this.jsonData = registerOutput<String>('jsonData');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.parentDocumentId = registerOutput<String>('parentDocumentId');
    this.project = registerOutput<String>('project');
    this.schemaId = registerOutput<String>('schemaId');
    this.structData = registerOutput<Map<String, String>>('structData');
  }
}
