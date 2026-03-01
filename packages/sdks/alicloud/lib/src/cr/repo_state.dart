// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repo_domain_list.dart';

/// Input properties used for looking up and filtering Repo resources.
class RepoState {
  /// The repository specific information. MarkDown format is supported, and the length limit is 2000.
  final pulumi.Input<String>? detail;
  /// (Optional) The repository domain list.
  final pulumi.Input<RepoDomainList>? domainList;
  /// Name of container registry repository.
  final pulumi.Input<String>? name;
  /// Name of container registry namespace where repository is located.
  final pulumi.Input<String>? namespace;
  /// `PUBLIC` or `PRIVATE`, repo's visibility.
  final pulumi.Input<String>? repoType;
  /// The repository general information. It can contain 1 to 80 characters.
  final pulumi.Input<String>? summary;

  /// Creates a new [RepoState].
  /// [detail] The repository specific information. MarkDown format is supported, and the length limit is 2000.
  /// [domainList] (Optional) The repository domain list.
  /// [name] Name of container registry repository.
  /// [namespace] Name of container registry namespace where repository is located.
  /// [repoType] `PUBLIC` or `PRIVATE`, repo's visibility.
  /// [summary] The repository general information. It can contain 1 to 80 characters.
  RepoState({
    pulumi.Output<String>? detail,
    pulumi.Output<RepoDomainList>? domainList,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namespace,
    pulumi.Output<String>? repoType,
    pulumi.Output<String>? summary,
  }) :
      detail = pulumi.Input.asOptionalInput<String>(detail),
      domainList = pulumi.Input.asOptionalInput<RepoDomainList>(domainList),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      repoType = pulumi.Input.asOptionalInput<String>(repoType),
      summary = pulumi.Input.asOptionalInput<String>(summary);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detail': ?detail,
      'domainList': ?pulumi.Input.mapOptionalInputValue<RepoDomainList, Map<String, dynamic>>(domainList, (value) => value.toMap()),
      'name': ?name,
      'namespace': ?namespace,
      'repoType': ?repoType,
      'summary': ?summary,
    };
  }

  factory RepoState.fromMap(Map<String, dynamic> map) {
    return RepoState(
      detail: map['detail'] == null ? null : pulumi.Output.create<String>(map['detail'] as String),
      domainList: map['domainList'] == null ? null : pulumi.Output.create<RepoDomainList>(RepoDomainList.fromMap((map['domainList'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespace: map['namespace'] == null ? null : pulumi.Output.create<String>(map['namespace'] as String),
      repoType: map['repoType'] == null ? null : pulumi.Output.create<String>(map['repoType'] as String),
      summary: map['summary'] == null ? null : pulumi.Output.create<String>(map['summary'] as String),
    );
  }
}

