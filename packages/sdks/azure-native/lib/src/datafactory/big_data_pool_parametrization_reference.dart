// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Big data pool reference type.
class BigDataPoolParametrizationReference {
  /// Reference big data pool name. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> referenceName;
  /// Big data pool reference type.
  final pulumi.Input<String> type;

  /// Creates a new [BigDataPoolParametrizationReference].
  /// [referenceName] Reference big data pool name. Type: string (or Expression with resultType string).
  /// [type] Big data pool reference type.
  BigDataPoolParametrizationReference({
    required this.referenceName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceName': referenceName,
      'type': type,
    };
  }

  factory BigDataPoolParametrizationReference.fromMap(Map<String, dynamic> map) {
    return BigDataPoolParametrizationReference(
      referenceName: (map['referenceName']).input(),
      type: (map['type'] as String).input(),
    );
  }
}

