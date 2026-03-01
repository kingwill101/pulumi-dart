// ignore_for_file: unused_element, unnecessary_cast

class GetEndpointMongodbSetting {
  final String authMechanism;
  final String authSource;
  final String authType;
  final String docsToInvestigate;
  final String extractDocId;
  final String nestingLevel;

  /// Creates a new [GetEndpointMongodbSetting].
  /// [authMechanism] Required.
  /// [authSource] Required.
  /// [authType] Required.
  /// [docsToInvestigate] Required.
  /// [extractDocId] Required.
  /// [nestingLevel] Required.
  GetEndpointMongodbSetting({
    required this.authMechanism,
    required this.authSource,
    required this.authType,
    required this.docsToInvestigate,
    required this.extractDocId,
    required this.nestingLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMechanism': authMechanism,
      'authSource': authSource,
      'authType': authType,
      'docsToInvestigate': docsToInvestigate,
      'extractDocId': extractDocId,
      'nestingLevel': nestingLevel,
    };
  }

  factory GetEndpointMongodbSetting.fromMap(Map<String, dynamic> map) {
    return GetEndpointMongodbSetting(
      authMechanism: map['authMechanism'] as String,
      authSource: map['authSource'] as String,
      authType: map['authType'] as String,
      docsToInvestigate: map['docsToInvestigate'] as String,
      extractDocId: map['extractDocId'] as String,
      nestingLevel: map['nestingLevel'] as String,
    );
  }
}
