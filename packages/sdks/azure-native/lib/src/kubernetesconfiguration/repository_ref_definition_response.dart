// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The source reference for the GitRepository object.
class RepositoryRefDefinitionResponse {
  /// The git repository branch name to checkout.
  final pulumi.Input<String?>? branch;
  /// The commit SHA to checkout. This value must be combined with the branch name to be valid. This takes precedence over semver.
  final pulumi.Input<String?>? commit;
  /// The semver range used to match against git repository tags. This takes precedence over tag.
  final pulumi.Input<String?>? semver;
  /// The git repository tag name to checkout. This takes precedence over branch.
  final pulumi.Input<String?>? tag;

  /// Creates a new [RepositoryRefDefinitionResponse].
  /// [branch] The git repository branch name to checkout.
  /// [commit] The commit SHA to checkout. This value must be combined with the branch name to be valid. This takes precedence over semver.
  /// [semver] The semver range used to match against git repository tags. This takes precedence over tag.
  /// [tag] The git repository tag name to checkout. This takes precedence over branch.
  const RepositoryRefDefinitionResponse({
    this.branch,
    this.commit,
    this.semver,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': ?branch,
      'commit': ?commit,
      'semver': ?semver,
      'tag': ?tag,
    };
  }

  factory RepositoryRefDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return RepositoryRefDefinitionResponse(
      branch: (() { final guardedValue = map['branch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commit: (() { final guardedValue = map['commit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      semver: (() { final guardedValue = map['semver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
