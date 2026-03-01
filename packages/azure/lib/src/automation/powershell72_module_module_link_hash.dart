// ignore_for_file: unused_element, unnecessary_cast


class Powershell72ModuleModuleLinkHash {
  /// Specifies the algorithm used for the hash content.
  final String algorithm;
  /// The hash value of the content.
  final String value;

  /// Creates a new [Powershell72ModuleModuleLinkHash].
  /// [algorithm] Specifies the algorithm used for the hash content.
  /// [value] The hash value of the content.
  Powershell72ModuleModuleLinkHash({
    required this.algorithm,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'value': value,
    };
  }

  factory Powershell72ModuleModuleLinkHash.fromMap(Map<String, dynamic> map) {
    return Powershell72ModuleModuleLinkHash(
      algorithm: map['algorithm'] as String,
      value: map['value'] as String,
    );
  }
}

