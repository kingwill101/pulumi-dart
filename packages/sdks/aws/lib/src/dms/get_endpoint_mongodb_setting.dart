// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEndpointMongodbSetting {
  final pulumi.Input<String> authMechanism;
  final pulumi.Input<String> authSource;
  final pulumi.Input<String> authType;
  final pulumi.Input<String> docsToInvestigate;
  final pulumi.Input<String> extractDocId;
  final pulumi.Input<String> nestingLevel;

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
      authMechanism: (map['authMechanism'] as String).input(),
      authSource: (map['authSource'] as String).input(),
      authType: (map['authType'] as String).input(),
      docsToInvestigate: (map['docsToInvestigate'] as String).input(),
      extractDocId: (map['extractDocId'] as String).input(),
      nestingLevel: (map['nestingLevel'] as String).input(),
    );
  }
}

