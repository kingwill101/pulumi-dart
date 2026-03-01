// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_discoveryengine_v1beta_get_document_discoveryengine_v1beta_args_doc}
/// Arguments for getDocument.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_v1beta_get_document_discoveryengine_v1beta_args_doc}
class GetDocumentDiscoveryengineV1betaArgs {
  final pulumi.Input<String> branchId;
  final pulumi.Input<String> collectionId;
  final pulumi.Input<String> dataStoreId;
  final pulumi.Input<String> documentId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDocumentDiscoveryengineV1betaArgs].
  /// [branchId] Required.
  /// [collectionId] Required.
  /// [dataStoreId] Required.
  /// [documentId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDocumentDiscoveryengineV1betaArgs({
    required String branchId,
    required String collectionId,
    required String dataStoreId,
    required String documentId,
    required String location,
    String? project,
  }) : branchId = pulumi.Input.asInput<String>(branchId),
       collectionId = pulumi.Input.asInput<String>(collectionId),
       dataStoreId = pulumi.Input.asInput<String>(dataStoreId),
       documentId = pulumi.Input.asInput<String>(documentId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branchId': branchId,
      'collectionId': collectionId,
      'dataStoreId': dataStoreId,
      'documentId': documentId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDocumentDiscoveryengineV1betaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDocumentDiscoveryengineV1betaArgs(
      branchId: map['branchId'] as String,
      collectionId: map['collectionId'] as String,
      dataStoreId: map['dataStoreId'] as String,
      documentId: map['documentId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
