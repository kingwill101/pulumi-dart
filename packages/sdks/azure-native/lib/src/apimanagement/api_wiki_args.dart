// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'wiki_documentation_contract.dart';

/// {@template pulumi_apimanagement_api_wiki_args_doc}
/// The set of arguments for ApiWiki.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_api_wiki_args_doc}
class ApiWikiArgs {
  /// API identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> apiId;

  /// Collection wiki documents included into this wiki.
  final pulumi.Input<List<WikiDocumentationContract>>? documents;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ApiWikiArgs].
  /// [apiId] API identifier. Must be unique in the current API Management service instance.
  /// [documents] Collection wiki documents included into this wiki.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  ApiWikiArgs({
    required this.apiId,
    this.documents,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'documents':
          ?pulumi.Input.mapOptionalInputValue<
            List<WikiDocumentationContract>,
            List<Map<String, dynamic>>
          >(
            documents,
            (value) =>
                pulumi.Input.encodeList<
                  WikiDocumentationContract,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory ApiWikiArgs.fromMap(Map<String, dynamic> map) {
    return ApiWikiArgs(
      apiId: pulumi.Input.fromValue(map['apiId'] as String),
      documents: (() {
        final guardedValue = map['documents'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<WikiDocumentationContract>(
            guardedValue,
            (value) => WikiDocumentationContract.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
