// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRepositoryEndpoint.
class GetRepositoryEndpointArgs {
  /// Name of the domain that contains the repository.
  final Input<String> domain;

  /// Account number of the AWS account that owns the domain.
  final Input<String>? domainOwner;

  /// Which endpoint of a repository to return. A repository has one endpoint for each package format: <span pulumi-lang-nodejs="`npm`" pulumi-lang-dotnet="`Npm`" pulumi-lang-go="`npm`" pulumi-lang-python="`npm`" pulumi-lang-yaml="`npm`" pulumi-lang-java="`npm`">`npm`</span>, <span pulumi-lang-nodejs="`pypi`" pulumi-lang-dotnet="`Pypi`" pulumi-lang-go="`pypi`" pulumi-lang-python="`pypi`" pulumi-lang-yaml="`pypi`" pulumi-lang-java="`pypi`">`pypi`</span>, <span pulumi-lang-nodejs="`maven`" pulumi-lang-dotnet="`Maven`" pulumi-lang-go="`maven`" pulumi-lang-python="`maven`" pulumi-lang-yaml="`maven`" pulumi-lang-java="`maven`">`maven`</span>, and <span pulumi-lang-nodejs="`nuget`" pulumi-lang-dotnet="`Nuget`" pulumi-lang-go="`nuget`" pulumi-lang-python="`nuget`" pulumi-lang-yaml="`nuget`" pulumi-lang-java="`nuget`">`nuget`</span>.
  final Input<String> format;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Name of the repository.
  final Input<String> repository;

  GetRepositoryEndpointArgs({
    required this.domain,
    this.domainOwner,
    required this.format,
    this.region,
    required this.repository,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domain'] = domain;
    final domainOwnerValue = domainOwner;
    if (domainOwnerValue != null) {
      map['domainOwner'] = domainOwnerValue;
    }
    map['format'] = format;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['repository'] = repository;
    return map;
  }

  factory GetRepositoryEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetRepositoryEndpointArgs(
      domain: Input.asInput<String>(map['domain']),
      domainOwner: Input.asOptionalInput<String>(map['domainOwner']),
      format: Input.asInput<String>(map['format']),
      region: Input.asOptionalInput<String>(map['region']),
      repository: Input.asInput<String>(map['repository']),
    );
  }
}
