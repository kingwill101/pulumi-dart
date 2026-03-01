// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_hosting_build_source_codebase_author.dart';

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

  /// Creates a new [AppHostingBuildSourceCodebase].
  /// [authors] (Output)
  /// [branch] The branch in the codebase to build from, using the latest commit.
  /// [commit] The commit in the codebase to build from.
  /// [commitMessage] (Output)
  /// [commitTime] (Output)
  /// [displayName] (Output)
  /// [hash] (Output)
  /// [uri] (Output)
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
    return <String, dynamic>{
      'authors': ?authors == null
          ? null
          : pulumi.Input.encodeList<
              AppHostingBuildSourceCodebaseAuthor,
              Map<String, dynamic>
            >(authors!, (value) => value.toMap()),
      'branch': ?branch,
      'commit': ?commit,
      'commitMessage': ?commitMessage,
      'commitTime': ?commitTime,
      'displayName': ?displayName,
      'hash': ?hash,
      'uri': ?uri,
    };
  }

  factory AppHostingBuildSourceCodebase.fromMap(Map<String, dynamic> map) {
    return AppHostingBuildSourceCodebase(
      authors: map['authors'] == null
          ? null
          : pulumi.Input.decodeList<AppHostingBuildSourceCodebaseAuthor>(
              map['authors'],
              (value) => AppHostingBuildSourceCodebaseAuthor.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      branch: map['branch'] == null ? null : map['branch'] as String,
      commit: map['commit'] == null ? null : map['commit'] as String,
      commitMessage: map['commitMessage'] == null
          ? null
          : map['commitMessage'] as String,
      commitTime: map['commitTime'] == null
          ? null
          : map['commitTime'] as String,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      hash: map['hash'] == null ? null : map['hash'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
