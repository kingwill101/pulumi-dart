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
      authMechanism: pulumi.Input.fromValue(map['authMechanism'] as String),
      authSource: pulumi.Input.fromValue(map['authSource'] as String),
      authType: pulumi.Input.fromValue(map['authType'] as String),
      docsToInvestigate: pulumi.Input.fromValue(
        map['docsToInvestigate'] as String,
      ),
      extractDocId: pulumi.Input.fromValue(map['extractDocId'] as String),
      nestingLevel: pulumi.Input.fromValue(map['nestingLevel'] as String),
    );
  }
}
