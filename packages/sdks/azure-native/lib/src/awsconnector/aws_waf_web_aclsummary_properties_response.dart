// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of awsWafWebACLSummary
class AwsWafWebACLSummaryPropertiesResponse {
  /// &lt;p&gt;A friendly name or description of the &lt;a&gt;WebACL&lt;/a&gt;. You can't change the name of a &lt;code&gt;WebACL&lt;/code&gt; after you create it.&lt;/p&gt;
  final pulumi.Input<String>? name;
  /// &lt;p&gt;A unique identifier for a &lt;code&gt;WebACL&lt;/code&gt;. You use &lt;code&gt;WebACLId&lt;/code&gt; to get information about a &lt;code&gt;WebACL&lt;/code&gt; (see &lt;a&gt;GetWebACL&lt;/a&gt;), update a &lt;code&gt;WebACL&lt;/code&gt; (see &lt;a&gt;UpdateWebACL&lt;/a&gt;), and delete a &lt;code&gt;WebACL&lt;/code&gt; from AWS WAF (see &lt;a&gt;DeleteWebACL&lt;/a&gt;).&lt;/p&gt; &lt;p&gt; &lt;code&gt;WebACLId&lt;/code&gt; is returned by &lt;a&gt;CreateWebACL&lt;/a&gt; and by &lt;a&gt;ListWebACLs&lt;/a&gt;.&lt;/p&gt;
  final pulumi.Input<String>? webACLId;

  /// Creates a new [AwsWafWebACLSummaryPropertiesResponse].
  /// [name] &lt;p&gt;A friendly name or description of the &lt;a&gt;WebACL&lt;/a&gt;. You can't change the name of a &lt;code&gt;WebACL&lt;/code&gt; after you create it.&lt;/p&gt;
  /// [webACLId] &lt;p&gt;A unique identifier for a &lt;code&gt;WebACL&lt;/code&gt;. You use &lt;code&gt;WebACLId&lt;/code&gt; to get information about a &lt;code&gt;WebACL&lt;/code&gt; (see &lt;a&gt;GetWebACL&lt;/a&gt;), update a &lt;code&gt;WebACL&lt;/code&gt; (see &lt;a&gt;UpdateWebACL&lt;/a&gt;), and delete a &lt;code&gt;WebACL&lt;/code&gt; from AWS WAF (see &lt;a&gt;DeleteWebACL&lt;/a&gt;).&lt;/p&gt; &lt;p&gt; &lt;code&gt;WebACLId&lt;/code&gt; is returned by &lt;a&gt;CreateWebACL&lt;/a&gt; and by &lt;a&gt;ListWebACLs&lt;/a&gt;.&lt;/p&gt;
  AwsWafWebACLSummaryPropertiesResponse({
    this.name,
    this.webACLId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'webACLId': ?webACLId,
    };
  }

  factory AwsWafWebACLSummaryPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsWafWebACLSummaryPropertiesResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webACLId: (() { final guardedValue = map['webACLId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

