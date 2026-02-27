// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_discoveryengine_v1alpha_document_content.dart';

/// The set of arguments for Document.
class DocumentDiscoveryengineV1alphaArgs {
  final pulumi.Input<String> branchId;
  final pulumi.Input<String> collectionId;

  /// The unstructured data linked to this document. Content must be set if this document is under a `CONTENT_REQUIRED` data store.
  final pulumi.Input<GoogleCloudDiscoveryengineV1alphaDocumentContent>? content;
  final pulumi.Input<String> dataStoreId;

  /// Required. The ID to use for the Document, which will become the final component of the Document.name. If the caller does not have permission to create the Document, regardless of whether or not it exists, a `PERMISSION_DENIED` error is returned. This field must be unique among all Documents with the same parent. Otherwise, an `ALREADY_EXISTS` error is returned. This field must conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63 characters. Otherwise, an `INVALID_ARGUMENT` error is returned.
  final pulumi.Input<String> documentId;

  /// Immutable. The identifier of the document. Id should conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63 characters.
  final pulumi.Input<String>? id;

  /// The JSON string representation of the document. It should conform to the registered Schema or an `INVALID_ARGUMENT` error is thrown.
  final pulumi.Input<String>? jsonData;
  final pulumi.Input<String>? location;

  /// Immutable. The full resource name of the document. Format: `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}/documents/{document_id}`. This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  final pulumi.Input<String>? name;

  /// The identifier of the parent document. Currently supports at most two level document hierarchy. Id should conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63 characters.
  final pulumi.Input<String>? parentDocumentId;
  final pulumi.Input<String>? project;

  /// The identifier of the schema located in the same data store.
  final pulumi.Input<String>? schemaId;

  /// The structured JSON data for the document. It should conform to the registered Schema or an `INVALID_ARGUMENT` error is thrown.
  final pulumi.Input<Map<String, String>>? structData;

  DocumentDiscoveryengineV1alphaArgs({
    required this.branchId,
    required this.collectionId,
    this.content,
    required this.dataStoreId,
    required this.documentId,
    this.id,
    this.jsonData,
    this.location,
    this.name,
    this.parentDocumentId,
    this.project,
    this.schemaId,
    this.structData,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['branchId'] = branchId;
    map['collectionId'] = collectionId;
    final contentValue = content;
    if (contentValue != null) {
      map['content'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudDiscoveryengineV1alphaDocumentContent,
          Map<String, dynamic>>(contentValue, (value) => value.toMap());
    }
    map['dataStoreId'] = dataStoreId;
    map['documentId'] = documentId;
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final jsonDataValue = jsonData;
    if (jsonDataValue != null) {
      map['jsonData'] = jsonDataValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final parentDocumentIdValue = parentDocumentId;
    if (parentDocumentIdValue != null) {
      map['parentDocumentId'] = parentDocumentIdValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final schemaIdValue = schemaId;
    if (schemaIdValue != null) {
      map['schemaId'] = schemaIdValue;
    }
    final structDataValue = structData;
    if (structDataValue != null) {
      map['structData'] = structDataValue;
    }
    return map;
  }

  factory DocumentDiscoveryengineV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return DocumentDiscoveryengineV1alphaArgs(
      branchId: pulumi.Input.asInput<String>(map['branchId']),
      collectionId: pulumi.Input.asInput<String>(map['collectionId']),
      content: pulumi.Input.asOptionalInput<
          GoogleCloudDiscoveryengineV1alphaDocumentContent>(map['content']),
      dataStoreId: pulumi.Input.asInput<String>(map['dataStoreId']),
      documentId: pulumi.Input.asInput<String>(map['documentId']),
      id: pulumi.Input.asOptionalInput<String>(map['id']),
      jsonData: pulumi.Input.asOptionalInput<String>(map['jsonData']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      parentDocumentId:
          pulumi.Input.asOptionalInput<String>(map['parentDocumentId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      schemaId: pulumi.Input.asOptionalInput<String>(map['schemaId']),
      structData:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['structData']),
    );
  }
}
