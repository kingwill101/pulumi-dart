// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of BuildStatusConfig
class BuildStatusConfig {
  /// <p>Specifies the context of the build status CodeBuild sends to the source provider. The usage of this parameter depends on the source provider.</p> <dl> <dt>Bitbucket</dt> <dd> <p>This parameter is used for the <code>name</code> parameter in the Bitbucket commit status. For more information, see <a href='https://developer.atlassian.com/bitbucket/api/2/reference/resource/repositories/%7Bworkspace%7D/%7Brepo_slug%7D/commit/%7Bnode%7D/statuses/build'>build</a> in the Bitbucket API documentation.</p> </dd> <dt>GitHub/GitHub Enterprise Server</dt> <dd> <p>This parameter is used for the <code>context</code> parameter in the GitHub commit status. For more information, see <a href='https://developer.github.com/v3/repos/statuses/#create-a-commit-status'>Create a commit status</a> in the GitHub developer guide.</p> </dd> </dl>
  final pulumi.Input<String>? context;
  /// <p>Specifies the target url of the build status CodeBuild sends to the source provider. The usage of this parameter depends on the source provider.</p> <dl> <dt>Bitbucket</dt> <dd> <p>This parameter is used for the <code>url</code> parameter in the Bitbucket commit status. For more information, see <a href='https://developer.atlassian.com/bitbucket/api/2/reference/resource/repositories/%7Bworkspace%7D/%7Brepo_slug%7D/commit/%7Bnode%7D/statuses/build'>build</a> in the Bitbucket API documentation.</p> </dd> <dt>GitHub/GitHub Enterprise Server</dt> <dd> <p>This parameter is used for the <code>target_url</code> parameter in the GitHub commit status. For more information, see <a href='https://developer.github.com/v3/repos/statuses/#create-a-commit-status'>Create a commit status</a> in the GitHub developer guide.</p> </dd> </dl>
  final pulumi.Input<String>? targetUrl;

  /// Creates a new [BuildStatusConfig].
  /// [context] <p>Specifies the context of the build status CodeBuild sends to the source provider. The usage of this parameter depends on the source provider.</p> <dl> <dt>Bitbucket</dt> <dd> <p>This parameter is used for the <code>name</code> parameter in the Bitbucket commit status. For more information, see <a href='https://developer.atlassian.com/bitbucket/api/2/reference/resource/repositories/%7Bworkspace%7D/%7Brepo_slug%7D/commit/%7Bnode%7D/statuses/build'>build</a> in the Bitbucket API documentation.</p> </dd> <dt>GitHub/GitHub Enterprise Server</dt> <dd> <p>This parameter is used for the <code>context</code> parameter in the GitHub commit status. For more information, see <a href='https://developer.github.com/v3/repos/statuses/#create-a-commit-status'>Create a commit status</a> in the GitHub developer guide.</p> </dd> </dl>
  /// [targetUrl] <p>Specifies the target url of the build status CodeBuild sends to the source provider. The usage of this parameter depends on the source provider.</p> <dl> <dt>Bitbucket</dt> <dd> <p>This parameter is used for the <code>url</code> parameter in the Bitbucket commit status. For more information, see <a href='https://developer.atlassian.com/bitbucket/api/2/reference/resource/repositories/%7Bworkspace%7D/%7Brepo_slug%7D/commit/%7Bnode%7D/statuses/build'>build</a> in the Bitbucket API documentation.</p> </dd> <dt>GitHub/GitHub Enterprise Server</dt> <dd> <p>This parameter is used for the <code>target_url</code> parameter in the GitHub commit status. For more information, see <a href='https://developer.github.com/v3/repos/statuses/#create-a-commit-status'>Create a commit status</a> in the GitHub developer guide.</p> </dd> </dl>
  BuildStatusConfig({
    this.context,
    this.targetUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'context': ?context,
      'targetUrl': ?targetUrl,
    };
  }

  factory BuildStatusConfig.fromMap(Map<String, dynamic> map) {
    return BuildStatusConfig(
      context: map['context'] == null ? null : (map['context']! as String).input(),
      targetUrl: map['targetUrl'] == null ? null : (map['targetUrl']! as String).input(),
    );
  }
}

