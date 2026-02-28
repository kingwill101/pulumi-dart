// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_base_path_mapping_base_path_mapping_args_doc}
/// The set of arguments for BasePathMapping.
/// {@endtemplate}
/// {@macro pulumi_apigateway_base_path_mapping_base_path_mapping_args_doc}
class BasePathMappingArgs {
  /// Path segment that must be prepended to the path when accessing the API via this mapping. If omitted, the API is exposed at the root of the given domain.
  final pulumi.Input<String>? basePath;

  /// Already-registered domain name to connect the API to.
  final pulumi.Input<String> domainName;

  /// The identifier for the domain name resource. Supported only for private custom domain names.
  final pulumi.Input<String>? domainNameId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ID of the API to connect.
  final pulumi.Input<String> restApi;

  /// Name of a specific deployment stage to expose at the given path. If omitted, callers may select any stage by including its name as a path element after the base path.
  final pulumi.Input<String>? stageName;

  /// Creates a new [BasePathMappingArgs].
  /// [basePath] Path segment that must be prepended to the path when accessing the API via this mapping. If omitted, the API is exposed at the root of the given domain.
  /// [domainName] Already-registered domain name to connect the API to.
  /// [domainNameId] The identifier for the domain name resource. Supported only for private custom domain names.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [restApi] ID of the API to connect.
  /// [stageName] Name of a specific deployment stage to expose at the given path. If omitted, callers may select any stage by including its name as a path element after the base path.
  BasePathMappingArgs({
    String? basePath,
    required String domainName,
    String? domainNameId,
    String? region,
    required String restApi,
    String? stageName,
  })  : basePath = pulumi.Input.asOptionalInput<String>(basePath),
        domainName = pulumi.Input.asInput<String>(domainName),
        domainNameId = pulumi.Input.asOptionalInput<String>(domainNameId),
        region = pulumi.Input.asOptionalInput<String>(region),
        restApi = pulumi.Input.asInput<String>(restApi),
        stageName = pulumi.Input.asOptionalInput<String>(stageName);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final basePathValue = basePath;
    if (basePathValue != null) {
      map['basePath'] = basePathValue;
    }
    map['domainName'] = domainName;
    final domainNameIdValue = domainNameId;
    if (domainNameIdValue != null) {
      map['domainNameId'] = domainNameIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['restApi'] = restApi;
    final stageNameValue = stageName;
    if (stageNameValue != null) {
      map['stageName'] = stageNameValue;
    }
    return map;
  }

  factory BasePathMappingArgs.fromMap(Map<String, dynamic> map) {
    return BasePathMappingArgs(
      basePath: map['basePath'] == null ? null : map['basePath'] as String,
      domainName: map['domainName'] as String,
      domainNameId:
          map['domainNameId'] == null ? null : map['domainNameId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      restApi: map['restApi'] as String,
      stageName: map['stageName'] == null ? null : map['stageName'] as String,
    );
  }
}
