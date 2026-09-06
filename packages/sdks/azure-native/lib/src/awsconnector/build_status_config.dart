// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of BuildStatusConfig
class BuildStatusConfig {
  /// &lt;p&gt;Specifies the context of the build status CodeBuild sends to the source provider. The usage of this parameter depends on the source provider.&lt;/p&gt; &lt;dl&gt; &lt;dt&gt;Bitbucket&lt;/dt&gt; &lt;dd&gt; &lt;p&gt;This parameter is used for the &lt;code&gt;name&lt;/code&gt; parameter in the Bitbucket commit status. For more information, see &lt;a href='https://developer.atlassian.com/bitbucket/api/2/reference/resource/repositories/%7Bworkspace%7D/%7Brepo_slug%7D/commit/%7Bnode%7D/statuses/build'&gt;build&lt;/a&gt; in the Bitbucket API documentation.&lt;/p&gt; &lt;/dd&gt; &lt;dt&gt;GitHub/GitHub Enterprise Server&lt;/dt&gt; &lt;dd&gt; &lt;p&gt;This parameter is used for the &lt;code&gt;context&lt;/code&gt; parameter in the GitHub commit status. For more information, see &lt;a href='https://developer.github.com/v3/repos/statuses/#create-a-commit-status'&gt;Create a commit status&lt;/a&gt; in the GitHub developer guide.&lt;/p&gt; &lt;/dd&gt; &lt;/dl&gt;
  final pulumi.Input<String?>? context;
  /// &lt;p&gt;Specifies the target url of the build status CodeBuild sends to the source provider. The usage of this parameter depends on the source provider.&lt;/p&gt; &lt;dl&gt; &lt;dt&gt;Bitbucket&lt;/dt&gt; &lt;dd&gt; &lt;p&gt;This parameter is used for the &lt;code&gt;url&lt;/code&gt; parameter in the Bitbucket commit status. For more information, see &lt;a href='https://developer.atlassian.com/bitbucket/api/2/reference/resource/repositories/%7Bworkspace%7D/%7Brepo_slug%7D/commit/%7Bnode%7D/statuses/build'&gt;build&lt;/a&gt; in the Bitbucket API documentation.&lt;/p&gt; &lt;/dd&gt; &lt;dt&gt;GitHub/GitHub Enterprise Server&lt;/dt&gt; &lt;dd&gt; &lt;p&gt;This parameter is used for the &lt;code&gt;target_url&lt;/code&gt; parameter in the GitHub commit status. For more information, see &lt;a href='https://developer.github.com/v3/repos/statuses/#create-a-commit-status'&gt;Create a commit status&lt;/a&gt; in the GitHub developer guide.&lt;/p&gt; &lt;/dd&gt; &lt;/dl&gt;
  final pulumi.Input<String?>? targetUrl;

  /// Creates a new [BuildStatusConfig].
  /// [context] &lt;p&gt;Specifies the context of the build status CodeBuild sends to the source provider. The usage of this parameter depends on the source provider.&lt;/p&gt; &lt;dl&gt; &lt;dt&gt;Bitbucket&lt;/dt&gt; &lt;dd&gt; &lt;p&gt;This parameter is used for the &lt;code&gt;name&lt;/code&gt; parameter in the Bitbucket commit status. For more information, see &lt;a href='https://developer.atlassian.com/bitbucket/api/2/reference/resource/repositories/%7Bworkspace%7D/%7Brepo_slug%7D/commit/%7Bnode%7D/statuses/build'&gt;build&lt;/a&gt; in the Bitbucket API documentation.&lt;/p&gt; &lt;/dd&gt; &lt;dt&gt;GitHub/GitHub Enterprise Server&lt;/dt&gt; &lt;dd&gt; &lt;p&gt;This parameter is used for the &lt;code&gt;context&lt;/code&gt; parameter in the GitHub commit status. For more information, see &lt;a href='https://developer.github.com/v3/repos/statuses/#create-a-commit-status'&gt;Create a commit status&lt;/a&gt; in the GitHub developer guide.&lt;/p&gt; &lt;/dd&gt; &lt;/dl&gt;
  /// [targetUrl] &lt;p&gt;Specifies the target url of the build status CodeBuild sends to the source provider. The usage of this parameter depends on the source provider.&lt;/p&gt; &lt;dl&gt; &lt;dt&gt;Bitbucket&lt;/dt&gt; &lt;dd&gt; &lt;p&gt;This parameter is used for the &lt;code&gt;url&lt;/code&gt; parameter in the Bitbucket commit status. For more information, see &lt;a href='https://developer.atlassian.com/bitbucket/api/2/reference/resource/repositories/%7Bworkspace%7D/%7Brepo_slug%7D/commit/%7Bnode%7D/statuses/build'&gt;build&lt;/a&gt; in the Bitbucket API documentation.&lt;/p&gt; &lt;/dd&gt; &lt;dt&gt;GitHub/GitHub Enterprise Server&lt;/dt&gt; &lt;dd&gt; &lt;p&gt;This parameter is used for the &lt;code&gt;target_url&lt;/code&gt; parameter in the GitHub commit status. For more information, see &lt;a href='https://developer.github.com/v3/repos/statuses/#create-a-commit-status'&gt;Create a commit status&lt;/a&gt; in the GitHub developer guide.&lt;/p&gt; &lt;/dd&gt; &lt;/dl&gt;
  const BuildStatusConfig({
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
      context: (() { final guardedValue = map['context']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetUrl: (() { final guardedValue = map['targetUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
