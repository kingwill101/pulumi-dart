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
  GetReposArgs({
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? namespace,
    pulumi.Output<String>? outputFile,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

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
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      namespace: map['namespace'] == null ? null : pulumi.Output.create<String>(map['namespace'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

