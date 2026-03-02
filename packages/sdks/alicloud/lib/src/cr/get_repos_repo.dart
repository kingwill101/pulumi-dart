// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repos_repo_domain_list.dart';
import 'get_repos_repo_tag.dart';

class GetReposRepo {
  /// The repository domain list.
  final pulumi.Input<GetReposRepoDomainList> domainList;
  /// Name of container registry namespace.
  final pulumi.Input<String> name;
  /// Name of container registry namespace where the repositories are located in.
  final pulumi.Input<String> namespace;
  /// `PUBLIC` or `PRIVATE`, repository's visibility.
  final pulumi.Input<String> repoType;
  /// The repository general information.
  final pulumi.Input<String> summary;
  /// A list of image tags belong to this repository. Each contains several attributes, see `Block Tag`.
  final pulumi.Input<List<GetReposRepoTag>> tags;

  /// Creates a new [GetReposRepo].
  /// [domainList] The repository domain list.
  /// [name] Name of container registry namespace.
  /// [namespace] Name of container registry namespace where the repositories are located in.
  /// [repoType] `PUBLIC` or `PRIVATE`, repository's visibility.
  /// [summary] The repository general information.
  /// [tags] A list of image tags belong to this repository. Each contains several attributes, see `Block Tag`.
  GetReposRepo({
    required this.domainList,
    required this.name,
    required this.namespace,
    required this.repoType,
    required this.summary,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainList': pulumi.Input.mapInputValue<GetReposRepoDomainList, Map<String, dynamic>>(domainList, (value) => value.toMap()),
      'name': name,
      'namespace': namespace,
      'repoType': repoType,
      'summary': summary,
      'tags': pulumi.Input.mapInputValue<List<GetReposRepoTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<GetReposRepoTag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetReposRepo.fromMap(Map<String, dynamic> map) {
    return GetReposRepo(
      domainList: (GetReposRepoDomainList.fromMap((map['domainList'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      namespace: (map['namespace'] as String).input(),
      repoType: (map['repoType'] as String).input(),
      summary: (map['summary'] as String).input(),
      tags: (pulumi.Input.decodeList<GetReposRepoTag>(map['tags'], (value) => GetReposRepoTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

