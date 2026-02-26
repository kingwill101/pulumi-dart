// ignore_for_file: unused_element, unnecessary_cast

class EndpointMongodbSettings {
  /// Authentication mechanism to access the MongoDB source endpoint. Default is <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span>.
  final String? authMechanism;

  /// Authentication database name. Not used when <span pulumi-lang-nodejs="`authType`" pulumi-lang-dotnet="`AuthType`" pulumi-lang-go="`authType`" pulumi-lang-python="`auth_type`" pulumi-lang-yaml="`authType`" pulumi-lang-java="`authType`">`auth_type`</span> is <span pulumi-lang-nodejs="`no`" pulumi-lang-dotnet="`No`" pulumi-lang-go="`no`" pulumi-lang-python="`no`" pulumi-lang-yaml="`no`" pulumi-lang-java="`no`">`no`</span>. Default is <span pulumi-lang-nodejs="`admin`" pulumi-lang-dotnet="`Admin`" pulumi-lang-go="`admin`" pulumi-lang-python="`admin`" pulumi-lang-yaml="`admin`" pulumi-lang-java="`admin`">`admin`</span>.
  final String? authSource;

  /// Authentication type to access the MongoDB source endpoint. Default is <span pulumi-lang-nodejs="`password`" pulumi-lang-dotnet="`Password`" pulumi-lang-go="`password`" pulumi-lang-python="`password`" pulumi-lang-yaml="`password`" pulumi-lang-java="`password`">`password`</span>.
  final String? authType;

  /// Number of documents to preview to determine the document organization. Use this setting when <span pulumi-lang-nodejs="`nestingLevel`" pulumi-lang-dotnet="`NestingLevel`" pulumi-lang-go="`nestingLevel`" pulumi-lang-python="`nesting_level`" pulumi-lang-yaml="`nestingLevel`" pulumi-lang-java="`nestingLevel`">`nesting_level`</span> is set to <span pulumi-lang-nodejs="`one`" pulumi-lang-dotnet="`One`" pulumi-lang-go="`one`" pulumi-lang-python="`one`" pulumi-lang-yaml="`one`" pulumi-lang-java="`one`">`one`</span>. Default is <span pulumi-lang-nodejs="`1000`" pulumi-lang-dotnet="`1000`" pulumi-lang-go="`1000`" pulumi-lang-python="`1000`" pulumi-lang-yaml="`1000`" pulumi-lang-java="`1000`">`1000`</span>.
  final String? docsToInvestigate;

  /// Document ID. Use this setting when <span pulumi-lang-nodejs="`nestingLevel`" pulumi-lang-dotnet="`NestingLevel`" pulumi-lang-go="`nestingLevel`" pulumi-lang-python="`nesting_level`" pulumi-lang-yaml="`nestingLevel`" pulumi-lang-java="`nestingLevel`">`nesting_level`</span> is set to <span pulumi-lang-nodejs="`none`" pulumi-lang-dotnet="`None`" pulumi-lang-go="`none`" pulumi-lang-python="`none`" pulumi-lang-yaml="`none`" pulumi-lang-java="`none`">`none`</span>. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final String? extractDocId;

  /// Specifies either document or table mode. Default is <span pulumi-lang-nodejs="`none`" pulumi-lang-dotnet="`None`" pulumi-lang-go="`none`" pulumi-lang-python="`none`" pulumi-lang-yaml="`none`" pulumi-lang-java="`none`">`none`</span>. Valid values are <span pulumi-lang-nodejs="`one`" pulumi-lang-dotnet="`One`" pulumi-lang-go="`one`" pulumi-lang-python="`one`" pulumi-lang-yaml="`one`" pulumi-lang-java="`one`">`one`</span> (table mode) and <span pulumi-lang-nodejs="`none`" pulumi-lang-dotnet="`None`" pulumi-lang-go="`none`" pulumi-lang-python="`none`" pulumi-lang-yaml="`none`" pulumi-lang-java="`none`">`none`</span> (document mode).
  final String? nestingLevel;

  /// If <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, DMS retrieves the entire document from the MongoDB source during migration. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? useUpdateLookup;

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
