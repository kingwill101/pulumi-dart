// ignore_for_file: unused_element, unnecessary_cast


class OpenApiExplorerApiMcpServerApi {
  /// API version information, typically in date format—for example, the version for ECS is 2014-05-26.
  final String apiVersion;
  /// Product code, such as Ecs.
  final String product;
  /// Selectors in array format, where each item is an API name—for example, GetApiDefinition or ListApiDefinitions. You can obtain the complete list of supported APIs from the Alibaba Cloud Developer Portal.
  final List<String> selectors;

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
      apiVersion: map['apiVersion'] as String,
      product: map['product'] as String,
      selectors: (map['selectors'] as List).cast<String>(),
    );
  }
}

