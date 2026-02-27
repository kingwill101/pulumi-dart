// ignore_for_file: unused_element, unnecessary_cast

/// Publisher contains information about the publisher of this Note.
class PublisherContaineranalysisV1beta1 {
  /// Provides information about the authority of the issuing party to release the document, in particular, the party's constituency and responsibilities or other obligations.
  final String? issuingAuthority;

  /// Name of the publisher. Examples: 'Google', 'Google Cloud Platform'.
  final String? name;

  /// The context or namespace. Contains a URL which is under control of the issuing party and can be used as a globally unique identifier for that issuing party. Example: https://csaf.io
  final String? publisherNamespace;

  PublisherContaineranalysisV1beta1({
    this.issuingAuthority,
    this.name,
    this.publisherNamespace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final issuingAuthorityValue = issuingAuthority;
    if (issuingAuthorityValue != null) {
      map['issuingAuthority'] = issuingAuthorityValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final publisherNamespaceValue = publisherNamespace;
    if (publisherNamespaceValue != null) {
      map['publisherNamespace'] = publisherNamespaceValue;
    }
    return map;
  }

  factory PublisherContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return PublisherContaineranalysisV1beta1(
      issuingAuthority: map['issuingAuthority'] == null
          ? null
          : map['issuingAuthority'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      publisherNamespace: map['publisherNamespace'] == null
          ? null
          : map['publisherNamespace'] as String,
    );
  }
}
