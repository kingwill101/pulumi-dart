// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'wiki_documentation_contract.dart';

/// {@template pulumi_apimanagement_product_wiki_args_doc}
/// The set of arguments for ProductWiki.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_product_wiki_args_doc}
class ProductWikiArgs {
  /// Collection wiki documents included into this wiki.
  final pulumi.Input<List<WikiDocumentationContract>>? documents;
  /// Product identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> productId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ProductWikiArgs].
  /// [documents] Collection wiki documents included into this wiki.
  /// [productId] Product identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  ProductWikiArgs({
    this.documents,
    required this.productId,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'documents': ?pulumi.Input.mapOptionalInputValue<List<WikiDocumentationContract>, List<Map<String, dynamic>>>(documents, (value) => pulumi.Input.encodeList<WikiDocumentationContract, Map<String, dynamic>>(value, (value) => value.toMap())),
      'productId': productId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory ProductWikiArgs.fromMap(Map<String, dynamic> map) {
    return ProductWikiArgs(
      documents: map['documents'] == null ? null : (pulumi.Input.decodeList<WikiDocumentationContract>(map['documents'], (value) => WikiDocumentationContract.fromMap((value as Map).cast<String, dynamic>()))).input(),
      productId: (map['productId'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

