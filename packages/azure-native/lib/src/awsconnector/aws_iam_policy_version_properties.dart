// ignore_for_file: unused_element, unnecessary_cast


/// Definition of awsIamPolicyVersion
class AwsIamPolicyVersionProperties {
  /// <p>The date and time, in <a href='http://www.iso.org/iso/iso8601'>ISO 8601 date-time format</a>, when the policy version was created.</p>
  final String? createDate;
  /// <p>The policy document.</p> <p>The policy document is returned in the response to the <a>GetPolicyVersion</a> and <a>GetAccountAuthorizationDetails</a> operations. It is not returned in the response to the <a>CreatePolicyVersion</a> or <a>ListPolicyVersions</a> operations. </p> <p>The policy document returned in this structure is URL-encoded compliant with <a href='https://tools.ietf.org/html/rfc3986'>RFC 3986</a>. You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in the Java SDK. Other languages and SDKs provide similar functionality.</p>
  final String? document;
  /// <p>Specifies whether the policy version is set as the policy's default version.</p>
  final bool? isDefaultVersion;
  /// <p>The identifier for the policy version.</p> <p>Policy version identifiers always begin with <code>v</code> (always lowercase). When a policy is created, the first policy version is <code>v1</code>. </p>
  final String? versionId;

  /// Creates a new [AwsIamPolicyVersionProperties].
  /// [createDate] <p>The date and time, in <a href='http://www.iso.org/iso/iso8601'>ISO 8601 date-time format</a>, when the policy version was created.</p>
  /// [document] <p>The policy document.</p> <p>The policy document is returned in the response to the <a>GetPolicyVersion</a> and <a>GetAccountAuthorizationDetails</a> operations. It is not returned in the response to the <a>CreatePolicyVersion</a> or <a>ListPolicyVersions</a> operations. </p> <p>The policy document returned in this structure is URL-encoded compliant with <a href='https://tools.ietf.org/html/rfc3986'>RFC 3986</a>. You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in the Java SDK. Other languages and SDKs provide similar functionality.</p>
  /// [isDefaultVersion] <p>Specifies whether the policy version is set as the policy's default version.</p>
  /// [versionId] <p>The identifier for the policy version.</p> <p>Policy version identifiers always begin with <code>v</code> (always lowercase). When a policy is created, the first policy version is <code>v1</code>. </p>
  AwsIamPolicyVersionProperties({
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
      createDate: map['createDate'] == null ? null : map['createDate'] as String,
      document: map['document'] == null ? null : map['document'] as String,
      isDefaultVersion: map['isDefaultVersion'] == null ? null : map['isDefaultVersion'] as bool,
      versionId: map['versionId'] == null ? null : map['versionId'] as String,
    );
  }
}

