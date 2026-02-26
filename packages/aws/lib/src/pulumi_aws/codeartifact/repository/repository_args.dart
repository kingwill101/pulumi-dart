// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../repository_external_connections/repository_external_connections.dart';
import '../repository_upstream/repository_upstream.dart';

/// The set of arguments for Repository.
class RepositoryArgs {
  /// The description of the repository.
  final Input<String>? description;

  /// The domain that contains the created repository.
  final Input<String> domain;

  /// The account number of the AWS account that owns the domain.
  final Input<String>? domainOwner;

  /// An array of external connections associated with the repository. Only one external connection can be set per repository. see External Connections.
  final Input<RepositoryExternalConnections>? externalConnections;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The name of the repository to create.
  final Input<String> repository;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// A list of upstream repositories to associate with the repository. The order of the upstream repositories in the list determines their priority order when AWS CodeArtifact looks for a requested package version. see Upstream
  final Input<List<RepositoryUpstream>>? upstreams;

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
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['domain'] = domain;
    final domainOwnerValue = domainOwner;
    if (domainOwnerValue != null) {
      map['domainOwner'] = domainOwnerValue;
    }
    final externalConnectionsValue = externalConnections;
    if (externalConnectionsValue != null) {
      map['externalConnections'] = Input.mapOptionalInputValue<
              RepositoryExternalConnections, Map<String, dynamic>>(
          externalConnectionsValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['repository'] = repository;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final upstreamsValue = upstreams;
    if (upstreamsValue != null) {
      map['upstreams'] = Input.mapOptionalInputValue<List<RepositoryUpstream>,
              List<Map<String, dynamic>>>(
          upstreamsValue,
          (value) => Input.encodeList<RepositoryUpstream, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    return map;
  }

  factory RepositoryArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryArgs(
      description: Input.asOptionalInput<String>(map['description']),
      domain: Input.asInput<String>(map['domain']),
      domainOwner: Input.asOptionalInput<String>(map['domainOwner']),
      externalConnections: Input.asOptionalInput<RepositoryExternalConnections>(
          map['externalConnections']),
      region: Input.asOptionalInput<String>(map['region']),
      repository: Input.asInput<String>(map['repository']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      upstreams:
          Input.asOptionalInput<List<RepositoryUpstream>>(map['upstreams']),
    );
  }
}
