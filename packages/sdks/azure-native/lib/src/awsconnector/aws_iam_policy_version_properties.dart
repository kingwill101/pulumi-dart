// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of awsIamPolicyVersion
class AwsIamPolicyVersionProperties {
  /// &lt;p&gt;The date and time, in &lt;a href='http://www.iso.org/iso/iso8601'&gt;ISO 8601 date-time format&lt;/a&gt;, when the policy version was created.&lt;/p&gt;
  final pulumi.Input<String?>? createDate;
  /// &lt;p&gt;The policy document.&lt;/p&gt; &lt;p&gt;The policy document is returned in the response to the &lt;a&gt;GetPolicyVersion&lt;/a&gt; and &lt;a&gt;GetAccountAuthorizationDetails&lt;/a&gt; operations. It is not returned in the response to the &lt;a&gt;CreatePolicyVersion&lt;/a&gt; or &lt;a&gt;ListPolicyVersions&lt;/a&gt; operations. &lt;/p&gt; &lt;p&gt;The policy document returned in this structure is URL-encoded compliant with &lt;a href='https://tools.ietf.org/html/rfc3986'&gt;RFC 3986&lt;/a&gt;. You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the &lt;code&gt;decode&lt;/code&gt; method of the &lt;code&gt;java.net.URLDecoder&lt;/code&gt; utility class in the Java SDK. Other languages and SDKs provide similar functionality.&lt;/p&gt;
  final pulumi.Input<String?>? document;
  /// &lt;p&gt;Specifies whether the policy version is set as the policy's default version.&lt;/p&gt;
  final pulumi.Input<bool?>? isDefaultVersion;
  /// &lt;p&gt;The identifier for the policy version.&lt;/p&gt; &lt;p&gt;Policy version identifiers always begin with &lt;code&gt;v&lt;/code&gt; (always lowercase). When a policy is created, the first policy version is &lt;code&gt;v1&lt;/code&gt;. &lt;/p&gt;
  final pulumi.Input<String?>? versionId;

  /// Creates a new [AwsIamPolicyVersionProperties].
  /// [createDate] &lt;p&gt;The date and time, in &lt;a href='http://www.iso.org/iso/iso8601'&gt;ISO 8601 date-time format&lt;/a&gt;, when the policy version was created.&lt;/p&gt;
  /// [document] &lt;p&gt;The policy document.&lt;/p&gt; &lt;p&gt;The policy document is returned in the response to the &lt;a&gt;GetPolicyVersion&lt;/a&gt; and &lt;a&gt;GetAccountAuthorizationDetails&lt;/a&gt; operations. It is not returned in the response to the &lt;a&gt;CreatePolicyVersion&lt;/a&gt; or &lt;a&gt;ListPolicyVersions&lt;/a&gt; operations. &lt;/p&gt; &lt;p&gt;The policy document returned in this structure is URL-encoded compliant with &lt;a href='https://tools.ietf.org/html/rfc3986'&gt;RFC 3986&lt;/a&gt;. You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the &lt;code&gt;decode&lt;/code&gt; method of the &lt;code&gt;java.net.URLDecoder&lt;/code&gt; utility class in the Java SDK. Other languages and SDKs provide similar functionality.&lt;/p&gt;
  /// [isDefaultVersion] &lt;p&gt;Specifies whether the policy version is set as the policy's default version.&lt;/p&gt;
  /// [versionId] &lt;p&gt;The identifier for the policy version.&lt;/p&gt; &lt;p&gt;Policy version identifiers always begin with &lt;code&gt;v&lt;/code&gt; (always lowercase). When a policy is created, the first policy version is &lt;code&gt;v1&lt;/code&gt;. &lt;/p&gt;
  const AwsIamPolicyVersionProperties({
    this.createDate,
    this.document,
    this.isDefaultVersion,
    this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createDate': ?createDate,
      'document': ?document,
      'isDefaultVersion': ?isDefaultVersion,
      'versionId': ?versionId,
    };
  }

  factory AwsIamPolicyVersionProperties.fromMap(Map<String, dynamic> map) {
    return AwsIamPolicyVersionProperties(
      createDate: (() { final guardedValue = map['createDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      document: (() { final guardedValue = map['document']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isDefaultVersion: (() { final guardedValue = map['isDefaultVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      versionId: (() { final guardedValue = map['versionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
