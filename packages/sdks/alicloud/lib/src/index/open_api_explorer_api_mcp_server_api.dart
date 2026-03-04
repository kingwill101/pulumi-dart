// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OpenApiExplorerApiMcpServerApi {
  /// API version information, typically in date format—for example, the version for ECS is 2014-05-26.
  final pulumi.Input<String> apiVersion;

  /// Product code, such as Ecs.
  final pulumi.Input<String> product;

  /// Selectors in array format, where each item is an API name—for example, GetApiDefinition or ListApiDefinitions. You can obtain the complete list of supported APIs from the Alibaba Cloud Developer Portal.
  final pulumi.Input<List<String>> selectors;

  /// Creates a new [OpenApiExplorerApiMcpServerApi].
  /// [apiVersion] API version information, typically in date format—for example, the version for ECS is 2014-05-26.
  /// [product] Product code, such as Ecs.
  /// [selectors] Selectors in array format, where each item is an API name—for example, GetApiDefinition or ListApiDefinitions. You can obtain the complete list of supported APIs from the Alibaba Cloud Developer Portal.
  OpenApiExplorerApiMcpServerApi({
    required this.apiVersion,
    required this.product,
    required this.selectors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': apiVersion,
      'product': product,
      'selectors': selectors,
    };
  }

  factory OpenApiExplorerApiMcpServerApi.fromMap(Map<String, dynamic> map) {
    return OpenApiExplorerApiMcpServerApi(
      apiVersion: pulumi.Input.fromValue(map['apiVersion'] as String),
      product: pulumi.Input.fromValue(map['product'] as String),
      selectors: pulumi.Input.fromValue(
        (map['selectors'] as List).cast<String>(),
      ),
    );
  }
}
