// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainsDomainSource {
  final pulumi.Input<String> sourceContent;
  final pulumi.Input<String> sourcePort;
  final pulumi.Input<String> sourcePriority;
  final pulumi.Input<String> sourceType;

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
      sourceContent: pulumi.Input.fromValue(map['sourceContent'] as String),
      sourcePort: pulumi.Input.fromValue(map['sourcePort'] as String),
      sourcePriority: pulumi.Input.fromValue(map['sourcePriority'] as String),
      sourceType: pulumi.Input.fromValue(map['sourceType'] as String),
    );
  }
}

