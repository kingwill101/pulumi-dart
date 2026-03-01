// ignore_for_file: unused_element, unnecessary_cast


class GetDomainsDomainSource {
  final String sourceContent;
  final String sourcePort;
  final String sourcePriority;
  final String sourceType;

  /// Creates a new [GetDomainsDomainSource].
  /// [sourceContent] Required.
  /// [sourcePort] Required.
  /// [sourcePriority] Required.
  /// [sourceType] Required.
  GetDomainsDomainSource({
    required this.sourceContent,
    required this.sourcePort,
    required this.sourcePriority,
    required this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceContent': sourceContent,
      'sourcePort': sourcePort,
      'sourcePriority': sourcePriority,
      'sourceType': sourceType,
    };
  }

  factory GetDomainsDomainSource.fromMap(Map<String, dynamic> map) {
    return GetDomainsDomainSource(
      sourceContent: map['sourceContent'] as String,
      sourcePort: map['sourcePort'] as String,
      sourcePriority: map['sourcePriority'] as String,
      sourceType: map['sourceType'] as String,
    );
  }
}

