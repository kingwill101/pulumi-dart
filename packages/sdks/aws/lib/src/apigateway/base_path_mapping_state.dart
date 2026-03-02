// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BasePathMapping resources.
class BasePathMappingState {
  /// Path segment that must be prepended to the path when accessing the API via this mapping. If omitted, the API is exposed at the root of the given domain.
  final pulumi.Input<String>? basePath;
  /// Already-registered domain name to connect the API to.
  final pulumi.Input<String>? domainName;
  /// The identifier for the domain name resource. Supported only for private custom domain names.
  final pulumi.Input<String>? domainNameId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the API to connect.
  final pulumi.Input<String>? restApi;
  /// Name of a specific deployment stage to expose at the given path. If omitted, callers may select any stage by including its name as a path element after the base path.
  final pulumi.Input<String>? stageName;

  /// Creates a new [BasePathMappingState].
  /// [basePath] Path segment that must be prepended to the path when accessing the API via this mapping. If omitted, the API is exposed at the root of the given domain.
  /// [domainName] Already-registered domain name to connect the API to.
  /// [domainNameId] The identifier for the domain name resource. Supported only for private custom domain names.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [restApi] ID of the API to connect.
  /// [stageName] Name of a specific deployment stage to expose at the given path. If omitted, callers may select any stage by including its name as a path element after the base path.
  BasePathMappingState({
    this.basePath,
    this.domainName,
    this.domainNameId,
    this.region,
    this.restApi,
    this.stageName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basePath': ?basePath,
      'domainName': ?domainName,
      'domainNameId': ?domainNameId,
      'region': ?region,
      'restApi': ?restApi,
      'stageName': ?stageName,
    };
  }

  factory BasePathMappingState.fromMap(Map<String, dynamic> map) {
    return BasePathMappingState(
      basePath: map['basePath'] == null ? null : (map['basePath'] as String).input(),
      domainName: map['domainName'] == null ? null : (map['domainName'] as String).input(),
      domainNameId: map['domainNameId'] == null ? null : (map['domainNameId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      restApi: map['restApi'] == null ? null : (map['restApi'] as String).input(),
      stageName: map['stageName'] == null ? null : (map['stageName'] as String).input(),
    );
  }
}

