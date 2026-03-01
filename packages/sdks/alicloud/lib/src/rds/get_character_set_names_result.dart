// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCharacterSetNames.
class GetCharacterSetNamesResult {
  final String engine;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetCharacterSetNamesResult].
  /// [engine] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [names] Required.
  /// [outputFile] Optional.
  GetCharacterSetNamesResult({
    required this.engine,
    required this.id,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': engine,
      'id': id,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetCharacterSetNamesResult.fromMap(Map<String, dynamic> map) {
    return GetCharacterSetNamesResult(
      engine: map['engine'] as String,
      id: map['id'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

