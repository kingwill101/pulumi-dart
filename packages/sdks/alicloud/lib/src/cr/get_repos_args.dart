// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cr_get_repos_get_repos_args_doc}
/// Arguments for getRepos.
/// {@endtemplate}
/// {@macro pulumi_cr_get_repos_get_repos_args_doc}
class GetReposArgs {
  /// Boolean, false by default, only repository attributes are exported. Set to true if domain list and tags belong to this repository are needed. See `tags` in attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A regex string to filter results by repository name.
  final pulumi.Input<String>? nameRegex;
  /// Name of container registry namespace where the repositories are located in.
  final pulumi.Input<String>? namespace;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetReposArgs].
  /// [enableDetails] Boolean, false by default, only repository attributes are exported. Set to true if domain list and tags belong to this repository are needed. See `tags` in attributes.
  /// [nameRegex] A regex string to filter results by repository name.
  /// [namespace] Name of container registry namespace where the repositories are located in.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  const GetReposArgs({
    this.enableDetails,
    this.nameRegex,
    this.namespace,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'nameRegex': ?nameRegex,
      'namespace': ?namespace,
      'outputFile': ?outputFile,
    };
  }

  factory GetReposArgs.fromMap(Map<String, dynamic> map) {
    return GetReposArgs(
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

