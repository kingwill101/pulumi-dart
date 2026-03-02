// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_external_connections.dart';
import 'repository_upstream.dart';

/// Input properties used for looking up and filtering Repository resources.
class RepositoryState {
  /// The account number of the AWS account that manages the repository.
  final pulumi.Input<String>? administratorAccount;
  /// The ARN of the repository.
  final pulumi.Input<String>? arn;
  /// The description of the repository.
  final pulumi.Input<String>? description;
  /// The domain that contains the created repository.
  final pulumi.Input<String>? domain;
  /// The account number of the AWS account that owns the domain.
  final pulumi.Input<String>? domainOwner;
  /// An array of external connections associated with the repository. Only one external connection can be set per repository. see External Connections.
  final pulumi.Input<RepositoryExternalConnections>? externalConnections;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the repository to create.
  final pulumi.Input<String>? repository;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// A list of upstream repositories to associate with the repository. The order of the upstream repositories in the list determines their priority order when AWS CodeArtifact looks for a requested package version. see Upstream
  final pulumi.Input<List<RepositoryUpstream>>? upstreams;

  /// Creates a new [RepositoryState].
  /// [administratorAccount] The account number of the AWS account that manages the repository.
  /// [arn] The ARN of the repository.
  /// [description] The description of the repository.
  /// [domain] The domain that contains the created repository.
  /// [domainOwner] The account number of the AWS account that owns the domain.
  /// [externalConnections] An array of external connections associated with the repository. Only one external connection can be set per repository. see External Connections.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [repository] The name of the repository to create.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [upstreams] A list of upstream repositories to associate with the repository. The order of the upstream repositories in the list determines their priority order when AWS CodeArtifact looks for a requested package version. see Upstream
  RepositoryState({
    this.administratorAccount,
    this.arn,
    this.description,
    this.domain,
    this.domainOwner,
    this.externalConnections,
    this.region,
    this.repository,
    this.tags,
    this.tagsAll,
    this.upstreams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorAccount': ?administratorAccount,
      'arn': ?arn,
      'description': ?description,
      'domain': ?domain,
      'domainOwner': ?domainOwner,
      'externalConnections': ?pulumi.Input.mapOptionalInputValue<RepositoryExternalConnections, Map<String, dynamic>>(externalConnections, (value) => value.toMap()),
      'region': ?region,
      'repository': ?repository,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'upstreams': ?pulumi.Input.mapOptionalInputValue<List<RepositoryUpstream>, List<Map<String, dynamic>>>(upstreams, (value) => pulumi.Input.encodeList<RepositoryUpstream, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RepositoryState.fromMap(Map<String, dynamic> map) {
    return RepositoryState(
      administratorAccount: map['administratorAccount'] == null ? null : (map['administratorAccount'] as String).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      domain: map['domain'] == null ? null : (map['domain'] as String).input(),
      domainOwner: map['domainOwner'] == null ? null : (map['domainOwner'] as String).input(),
      externalConnections: map['externalConnections'] == null ? null : (RepositoryExternalConnections.fromMap((map['externalConnections'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      repository: map['repository'] == null ? null : (map['repository'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      upstreams: map['upstreams'] == null ? null : (pulumi.Input.decodeList<RepositoryUpstream>(map['upstreams'], (value) => RepositoryUpstream.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

