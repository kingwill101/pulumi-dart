// ignore_for_file: unused_element, unnecessary_cast

class EndpointMongodbSettings {
  /// Authentication mechanism to access the MongoDB source endpoint. Default is `default`.
  final String? authMechanism;

  /// Authentication database name. Not used when `auth_type` is `no`. Default is `admin`.
  final String? authSource;

  /// Authentication type to access the MongoDB source endpoint. Default is `password`.
  final String? authType;

  /// Number of documents to preview to determine the document organization. Use this setting when `nesting_level` is set to `one`. Default is `1000`.
  final String? docsToInvestigate;

  /// Document ID. Use this setting when `nesting_level` is set to `none`. Default is `false`.
  final String? extractDocId;

  /// Specifies either document or table mode. Default is `none`. Valid values are `one` (table mode) and `none` (document mode).
  final String? nestingLevel;

  /// If `true`, DMS retrieves the entire document from the MongoDB source during migration. Default is `false`.
  final bool? useUpdateLookup;

  /// Creates a new [EndpointMongodbSettings].
  /// [authMechanism] Authentication mechanism to access the MongoDB source endpoint. Default is `default`.
  /// [authSource] Authentication database name. Not used when `auth_type` is `no`. Default is `admin`.
  /// [authType] Authentication type to access the MongoDB source endpoint. Default is `password`.
  /// [docsToInvestigate] Number of documents to preview to determine the document organization. Use this setting when `nesting_level` is set to `one`. Default is `1000`.
  /// [extractDocId] Document ID. Use this setting when `nesting_level` is set to `none`. Default is `false`.
  /// [nestingLevel] Specifies either document or table mode. Default is `none`. Valid values are `one` (table mode) and `none` (document mode).
  /// [useUpdateLookup] If `true`, DMS retrieves the entire document from the MongoDB source during migration. Default is `false`.
  EndpointMongodbSettings({
    this.authMechanism,
    this.authSource,
    this.authType,
    this.docsToInvestigate,
    this.extractDocId,
    this.nestingLevel,
    this.useUpdateLookup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authMechanismValue = authMechanism;
    if (authMechanismValue != null) {
      map['authMechanism'] = authMechanismValue;
    }
    final authSourceValue = authSource;
    if (authSourceValue != null) {
      map['authSource'] = authSourceValue;
    }
    final authTypeValue = authType;
    if (authTypeValue != null) {
      map['authType'] = authTypeValue;
    }
    final docsToInvestigateValue = docsToInvestigate;
    if (docsToInvestigateValue != null) {
      map['docsToInvestigate'] = docsToInvestigateValue;
    }
    final extractDocIdValue = extractDocId;
    if (extractDocIdValue != null) {
      map['extractDocId'] = extractDocIdValue;
    }
    final nestingLevelValue = nestingLevel;
    if (nestingLevelValue != null) {
      map['nestingLevel'] = nestingLevelValue;
    }
    final useUpdateLookupValue = useUpdateLookup;
    if (useUpdateLookupValue != null) {
      map['useUpdateLookup'] = useUpdateLookupValue;
    }
    return map;
  }

  factory EndpointMongodbSettings.fromMap(Map<String, dynamic> map) {
    return EndpointMongodbSettings(
      authMechanism:
          map['authMechanism'] == null ? null : map['authMechanism'] as String,
      authSource:
          map['authSource'] == null ? null : map['authSource'] as String,
      authType: map['authType'] == null ? null : map['authType'] as String,
      docsToInvestigate: map['docsToInvestigate'] == null
          ? null
          : map['docsToInvestigate'] as String,
      extractDocId:
          map['extractDocId'] == null ? null : map['extractDocId'] as String,
      nestingLevel:
          map['nestingLevel'] == null ? null : map['nestingLevel'] as String,
      useUpdateLookup: map['useUpdateLookup'] == null
          ? null
          : map['useUpdateLookup'] as bool,
    );
  }
}
