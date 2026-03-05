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
    this.detail,
    this.domainList,
    this.name,
    this.namespace,
    this.repoType,
    this.summary,
  });

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
      detail: (() { final guardedValue = map['detail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainList: (() { final guardedValue = map['domainList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepoDomainList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repoType: (() { final guardedValue = map['repoType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      summary: (() { final guardedValue = map['summary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

