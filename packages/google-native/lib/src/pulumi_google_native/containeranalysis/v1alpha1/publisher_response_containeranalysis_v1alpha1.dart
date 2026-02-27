// ignore_for_file: unused_element, unnecessary_cast

/// Publisher contains information about the publisher of this Note.
class PublisherResponseContaineranalysisV1alpha1 {
  /// Provides information about the authority of the issuing party to release the document, in particular, the party's constituency and responsibilities or other obligations.
  final String issuingAuthority;

  /// Name of the publisher. Examples: 'Google', 'Google Cloud Platform'.
  final String name;

  /// The context or namespace. Contains a URL which is under control of the issuing party and can be used as a globally unique identifier for that issuing party. Example: https://csaf.io
  final String publisherNamespace;

  PublisherResponseContaineranalysisV1alpha1({
    required this.issuingAuthority,
    required this.name,
    required this.publisherNamespace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['issuingAuthority'] = issuingAuthority;
    map['name'] = name;
    map['publisherNamespace'] = publisherNamespace;
    return map;
  }

  factory PublisherResponseContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return PublisherResponseContaineranalysisV1alpha1(
      issuingAuthority: map['issuingAuthority'] as String,
      name: map['name'] as String,
      publisherNamespace: map['publisherNamespace'] as String,
    );
  }
}
