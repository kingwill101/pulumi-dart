// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../app_hosting_build_source_codebase_author/app_hosting_build_source_codebase_author.dart';

class AppHostingBuildSourceCodebase {
  /// (Output)
  /// Version control metadata for a user associated with a resolved codebase.
  /// Currently assumes a Git user.
  /// Structure is documented below.
  final List<AppHostingBuildSourceCodebaseAuthor>? authors;

  /// The branch in the codebase to build from, using the latest commit.
  final String? branch;

  /// The commit in the codebase to build from.
  ///
  ///
  /// <a name="nested_source_codebase_author"></a>The `author` block contains:
  final String? commit;

  /// (Output)
  /// The message of a codebase change.
  final String? commitMessage;

  /// (Output)
  /// The time the change was made.
  final String? commitTime;

  /// (Output)
  /// The 'name' field in a Git user's git.config. Required by Git.
  final String? displayName;

  /// (Output)
  /// The full SHA-1 hash of a Git commit, if available.
  final String? hash;

  /// (Output)
  /// A URI linking to the codebase on an hosting provider's website. May
  /// not be valid if the commit has been rebased or force-pushed out of
  /// existence in the linked repository.
  final String? uri;

  AppHostingBuildSourceCodebase({
    this.authors,
    this.branch,
    this.commit,
    this.commitMessage,
    this.commitTime,
    this.displayName,
    this.hash,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authorsValue = authors;
    if (authorsValue != null) {
      map['authors'] = pulumi.Input.encodeList<
          AppHostingBuildSourceCodebaseAuthor,
          Map<String, dynamic>>(authorsValue, (value) => value.toMap());
    }
    final branchValue = branch;
    if (branchValue != null) {
      map['branch'] = branchValue;
    }
    final commitValue = commit;
    if (commitValue != null) {
      map['commit'] = commitValue;
    }
    final commitMessageValue = commitMessage;
    if (commitMessageValue != null) {
      map['commitMessage'] = commitMessageValue;
    }
    final commitTimeValue = commitTime;
    if (commitTimeValue != null) {
      map['commitTime'] = commitTimeValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final hashValue = hash;
    if (hashValue != null) {
      map['hash'] = hashValue;
    }
    final uriValue = uri;
    if (uriValue != null) {
      map['uri'] = uriValue;
    }
    return map;
  }

  factory AppHostingBuildSourceCodebase.fromMap(Map<String, dynamic> map) {
    return AppHostingBuildSourceCodebase(
      authors: map['authors'] == null
          ? null
          : pulumi.Input.decodeList<AppHostingBuildSourceCodebaseAuthor>(
              map['authors'],
              (value) => AppHostingBuildSourceCodebaseAuthor.fromMap(
                  (value as Map).cast<String, dynamic>())),
      branch: map['branch'] == null ? null : map['branch'] as String,
      commit: map['commit'] == null ? null : map['commit'] as String,
      commitMessage:
          map['commitMessage'] == null ? null : map['commitMessage'] as String,
      commitTime:
          map['commitTime'] == null ? null : map['commitTime'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      hash: map['hash'] == null ? null : map['hash'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
