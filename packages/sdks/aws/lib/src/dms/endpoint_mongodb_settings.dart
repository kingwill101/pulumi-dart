// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointMongodbSettings {
  /// Authentication mechanism to access the MongoDB source endpoint. Default is `default`.
  final pulumi.Input<String>? authMechanism;
  /// Authentication database name. Not used when `authType` is `no`. Default is `admin`.
  final pulumi.Input<String>? authSource;
  /// Authentication type to access the MongoDB source endpoint. Default is `password`.
  final pulumi.Input<String>? authType;
  /// Number of documents to preview to determine the document organization. Use this setting when `nestingLevel` is set to `one`. Default is `1000`.
  final pulumi.Input<String>? docsToInvestigate;
  /// Document ID. Use this setting when `nestingLevel` is set to `none`. Default is `false`.
  final pulumi.Input<String>? extractDocId;
  /// Specifies either document or table mode. Default is `none`. Valid values are `one` (table mode) and `none` (document mode).
  final pulumi.Input<String>? nestingLevel;
  /// If `true`, DMS retrieves the entire document from the MongoDB source during migration. Default is `false`.
  final pulumi.Input<bool>? useUpdateLookup;

  /// Creates a new [EndpointMongodbSettings].
  /// [authMechanism] Authentication mechanism to access the MongoDB source endpoint. Default is `default`.
  /// [authSource] Authentication database name. Not used when `authType` is `no`. Default is `admin`.
  /// [authType] Authentication type to access the MongoDB source endpoint. Default is `password`.
  /// [docsToInvestigate] Number of documents to preview to determine the document organization. Use this setting when `nestingLevel` is set to `one`. Default is `1000`.
  /// [extractDocId] Document ID. Use this setting when `nestingLevel` is set to `none`. Default is `false`.
  /// [nestingLevel] Specifies either document or table mode. Default is `none`. Valid values are `one` (table mode) and `none` (document mode).
  /// [useUpdateLookup] If `true`, DMS retrieves the entire document from the MongoDB source during migration. Default is `false`.
  const EndpointMongodbSettings({
    this.authMechanism,
    this.authSource,
    this.authType,
    this.docsToInvestigate,
    this.extractDocId,
    this.nestingLevel,
    this.useUpdateLookup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMechanism': ?authMechanism,
      'authSource': ?authSource,
      'authType': ?authType,
      'docsToInvestigate': ?docsToInvestigate,
      'extractDocId': ?extractDocId,
      'nestingLevel': ?nestingLevel,
      'useUpdateLookup': ?useUpdateLookup,
    };
  }

  factory EndpointMongodbSettings.fromMap(Map<String, dynamic> map) {
    return EndpointMongodbSettings(
      authMechanism: (() { final guardedValue = map['authMechanism']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authSource: (() { final guardedValue = map['authSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authType: (() { final guardedValue = map['authType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      docsToInvestigate: (() { final guardedValue = map['docsToInvestigate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extractDocId: (() { final guardedValue = map['extractDocId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nestingLevel: (() { final guardedValue = map['nestingLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useUpdateLookup: (() { final guardedValue = map['useUpdateLookup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
