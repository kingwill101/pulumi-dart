// ignore_for_file: unused_element, unnecessary_cast


class DomainMetadata {
  /// Contains XML formatted metadata specific to the domain, enabling custom data storage within the domain.
  final String xml;

  /// Creates a new [DomainMetadata].
  /// [xml] Contains XML formatted metadata specific to the domain, enabling custom data storage within the domain.
  DomainMetadata({
    required this.xml,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'xml': xml,
    };
  }

  factory DomainMetadata.fromMap(Map<String, dynamic> map) {
    return DomainMetadata(
      xml: map['xml'] as String,
    );
  }
}

