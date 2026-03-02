// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_external_connections.dart';
import 'repository_upstream.dart';

/// {@template pulumi_codeartifact_repository_repository_args_doc}
/// The set of arguments for Repository.
/// {@endtemplate}
/// {@macro pulumi_codeartifact_repository_repository_args_doc}
class RepositoryArgs {
  /// The description of the repository.
  final pulumi.Input<String>? description;
  /// The domain that contains the created repository.
  final pulumi.Input<String> domain;
  /// The account number of the AWS account that owns the domain.
  final pulumi.Input<String>? domainOwner;
  /// An array of external connections associated with the repository. Only one external connection can be set per repository. see External Connections.
  final pulumi.Input<RepositoryExternalConnections>? externalConnections;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the repository to create.
  final pulumi.Input<String> repository;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A list of upstream repositories to associate with the repository. The order of the upstream repositories in the list determines their priority order when AWS CodeArtifact looks for a requested package version. see Upstream
  final pulumi.Input<List<RepositoryUpstream>>? upstreams;

  /// Creates a new [RepositoryArgs].
  /// [description] The description of the repository.
  /// [domain] The domain that contains the created repository.
  /// [domainOwner] The account number of the AWS account that owns the domain.
  /// [externalConnections] An array of external connections associated with the repository. Only one external connection can be set per repository. see External Connections.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [repository] The name of the repository to create.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [upstreams] A list of upstream repositories to associate with the repository. The order of the upstream repositories in the list determines their priority order when AWS CodeArtifact looks for a requested package version. see Upstream
  RepositoryArgs({
    this.description,
    required this.domain,
    this.domainOwner,
    this.externalConnections,
    this.region,
    required this.repository,
    this.tags,
    this.upstreams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'domain': domain,
      'domainOwner': ?domainOwner,
      'externalConnections': ?pulumi.Input.mapOptionalInputValue<RepositoryExternalConnections, Map<String, dynamic>>(externalConnections, (value) => value.toMap()),
      'region': ?region,
      'repository': repository,
      'tags': ?tags,
      'upstreams': ?pulumi.Input.mapOptionalInputValue<List<RepositoryUpstream>, List<Map<String, dynamic>>>(upstreams, (value) => pulumi.Input.encodeList<RepositoryUpstream, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RepositoryArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryArgs(
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      domain: (map['domain'] as String).input(),
      domainOwner: map['domainOwner'] == null ? null : ((map['domainOwner'] as String).input()).input(),
      externalConnections: map['externalConnections'] == null ? null : ((RepositoryExternalConnections.fromMap((map['externalConnections']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      repository: (map['repository'] as String).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      upstreams: map['upstreams'] == null ? null : ((pulumi.Input.decodeList<RepositoryUpstream>(map['upstreams']!, (value) => RepositoryUpstream.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

