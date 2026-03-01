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
    pulumi.Output<List<WikiDocumentationContract>>? documents,
    required pulumi.Output<String> productId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      documents = pulumi.Input.asOptionalInput<List<WikiDocumentationContract>>(documents),
      productId = pulumi.Input.asInput<String>(productId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

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
      documents: map['documents'] == null ? null : pulumi.Output.create<List<WikiDocumentationContract>>(pulumi.Input.decodeList<WikiDocumentationContract>(map['documents'], (value) => WikiDocumentationContract.fromMap((value as Map).cast<String, dynamic>()))),
      productId: pulumi.Output.create<String>(map['productId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

