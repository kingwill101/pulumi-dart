// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_codeartifact_get_repository_endpoint_get_repository_endpoint_args_doc}
/// Arguments for getRepositoryEndpoint.
/// {@endtemplate}
/// {@macro pulumi_codeartifact_get_repository_endpoint_get_repository_endpoint_args_doc}
class GetRepositoryEndpointArgs {
  /// Name of the domain that contains the repository.
  final pulumi.Input<String> domain;

  /// Account number of the AWS account that owns the domain.
  final pulumi.Input<String>? domainOwner;

  /// Which endpoint of a repository to return. A repository has one endpoint for each package format: `npm`, `pypi`, `maven`, and `nuget`.
  final pulumi.Input<String> format;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Name of the repository.
  final pulumi.Input<String> repository;

  /// Creates a new [GetRepositoryEndpointArgs].
  /// [domain] Name of the domain that contains the repository.
  /// [domainOwner] Account number of the AWS account that owns the domain.
  /// [format] Which endpoint of a repository to return. A repository has one endpoint for each package format: `npm`, `pypi`, `maven`, and `nuget`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [repository] Name of the repository.
  GetRepositoryEndpointArgs({
    required String domain,
    String? domainOwner,
    required String format,
    String? region,
    required String repository,
  }) : domain = pulumi.Input.asInput<String>(domain),
       domainOwner = pulumi.Input.asOptionalInput<String>(domainOwner),
       format = pulumi.Input.asInput<String>(format),
       region = pulumi.Input.asOptionalInput<String>(region),
       repository = pulumi.Input.asInput<String>(repository);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'domainOwner': ?domainOwner,
      'format': format,
      'region': ?region,
      'repository': repository,
    };
  }

  factory GetRepositoryEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetRepositoryEndpointArgs(
      domain: map['domain'] as String,
      domainOwner: map['domainOwner'] == null
          ? null
          : map['domainOwner'] as String,
      format: map['format'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      repository: map['repository'] as String,
    );
  }
}
