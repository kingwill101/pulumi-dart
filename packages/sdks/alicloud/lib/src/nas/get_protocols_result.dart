// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getProtocols.
class GetProtocolsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? outputFile;
  /// A list of supported protocol type..
  final List<String> protocols;
  final String type;
  final String? zoneId;

  /// Creates a new [GetProtocolsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [outputFile] Optional.
  /// [protocols] A list of supported protocol type..
  /// [type] Required.
  /// [zoneId] Optional.
  GetProtocolsResult({
    required this.id,
    this.outputFile,
    required this.protocols,
    required this.type,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'outputFile': ?outputFile,
      'protocols': protocols,
      'type': type,
      'zoneId': ?zoneId,
    };
  }

  factory GetProtocolsResult.fromMap(Map<String, dynamic> map) {
    return GetProtocolsResult(
      id: map['id'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      protocols: (map['protocols'] as List).cast<String>(),
      type: map['type'] as String,
      zoneId: map['zoneId'] == null ? null : map['zoneId'] as String,
    );
  }
}

