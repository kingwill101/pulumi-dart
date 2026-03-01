// ignore_for_file: unused_element, unnecessary_cast


/// Definition of RedirectRule
class RedirectRule {
  /// The host name to use in the redirect request.
  final String? hostName;
  /// The HTTP redirect code to use on the response. Not required if one of the siblings is present.
  final String? httpRedirectCode;
  /// Protocol to use when redirecting requests. The default is the protocol that is used in the original request.
  final String? protocol;
  /// The object key prefix to use in the redirect request. For example, to redirect requests for all pages with prefix ``docs/`` (objects in the ``docs/`` folder) to ``documents/``, you can set a condition block with ``KeyPrefixEquals`` set to ``docs/`` and in the Redirect set ``ReplaceKeyPrefixWith`` to ``/documents``. Not required if one of the siblings is present. Can be present only if ``ReplaceKeyWith`` is not provided.  Replacement must be made for object keys containing special characters (such as carriage returns) when using XML requests. For more information, see [XML related object key constraints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints).
  final String? replaceKeyPrefixWith;
  /// The specific object key to use in the redirect request. For example, redirect request to ``error.html``. Not required if one of the siblings is present. Can be present only if ``ReplaceKeyPrefixWith`` is not provided.  Replacement must be made for object keys containing special characters (such as carriage returns) when using XML requests. For more information, see [XML related object key constraints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints).
  final String? replaceKeyWith;

  /// Creates a new [RedirectRule].
  /// [hostName] The host name to use in the redirect request.
  /// [httpRedirectCode] The HTTP redirect code to use on the response. Not required if one of the siblings is present.
  /// [protocol] Protocol to use when redirecting requests. The default is the protocol that is used in the original request.
  /// [replaceKeyPrefixWith] The object key prefix to use in the redirect request. For example, to redirect requests for all pages with prefix ``docs/`` (objects in the ``docs/`` folder) to ``documents/``, you can set a condition block with ``KeyPrefixEquals`` set to ``docs/`` and in the Redirect set ``ReplaceKeyPrefixWith`` to ``/documents``. Not required if one of the siblings is present. Can be present only if ``ReplaceKeyWith`` is not provided.  Replacement must be made for object keys containing special characters (such as carriage returns) when using XML requests. For more information, see [XML related object key constraints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints).
  /// [replaceKeyWith] The specific object key to use in the redirect request. For example, redirect request to ``error.html``. Not required if one of the siblings is present. Can be present only if ``ReplaceKeyPrefixWith`` is not provided.  Replacement must be made for object keys containing special characters (such as carriage returns) when using XML requests. For more information, see [XML related object key constraints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints).
  RedirectRule({
    this.hostName,
    this.httpRedirectCode,
    this.protocol,
    this.replaceKeyPrefixWith,
    this.replaceKeyWith,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostName': ?hostName,
      'httpRedirectCode': ?httpRedirectCode,
      'protocol': ?protocol,
      'replaceKeyPrefixWith': ?replaceKeyPrefixWith,
      'replaceKeyWith': ?replaceKeyWith,
    };
  }

  factory RedirectRule.fromMap(Map<String, dynamic> map) {
    return RedirectRule(
      hostName: map['hostName'] == null ? null : map['hostName'] as String,
      httpRedirectCode: map['httpRedirectCode'] == null ? null : map['httpRedirectCode'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      replaceKeyPrefixWith: map['replaceKeyPrefixWith'] == null ? null : map['replaceKeyPrefixWith'] as String,
      replaceKeyWith: map['replaceKeyWith'] == null ? null : map['replaceKeyWith'] as String,
    );
  }
}

