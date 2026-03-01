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
    pulumi.Output<String>? basePath,
    pulumi.Output<String>? domainName,
    pulumi.Output<String>? domainNameId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? restApi,
    pulumi.Output<String>? stageName,
  }) :
      basePath = pulumi.Input.asOptionalInput<String>(basePath),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      domainNameId = pulumi.Input.asOptionalInput<String>(domainNameId),
      region = pulumi.Input.asOptionalInput<String>(region),
      restApi = pulumi.Input.asOptionalInput<String>(restApi),
      stageName = pulumi.Input.asOptionalInput<String>(stageName);

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
      basePath: map['basePath'] == null ? null : pulumi.Output.create<String>(map['basePath'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      domainNameId: map['domainNameId'] == null ? null : pulumi.Output.create<String>(map['domainNameId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      restApi: map['restApi'] == null ? null : pulumi.Output.create<String>(map['restApi'] as String),
      stageName: map['stageName'] == null ? null : pulumi.Output.create<String>(map['stageName'] as String),
    );
  }
}

