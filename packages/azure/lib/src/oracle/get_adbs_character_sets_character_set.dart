// ignore_for_file: unused_element, unnecessary_cast


class GetAdbsCharacterSetsCharacterSet {
  /// A valid Oracle character set.
  final String characterSet;

  /// Creates a new [GetAdbsCharacterSetsCharacterSet].
  /// [characterSet] A valid Oracle character set.
  GetAdbsCharacterSetsCharacterSet({
    required this.characterSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'characterSet': characterSet,
    };
  }

  factory GetAdbsCharacterSetsCharacterSet.fromMap(Map<String, dynamic> map) {
    return GetAdbsCharacterSetsCharacterSet(
      characterSet: map['characterSet'] as String,
    );
  }
}

