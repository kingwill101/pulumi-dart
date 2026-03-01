// ignore_for_file: unused_element, unnecessary_cast


/// Entity representing the reference to the template.
class TemplateLink {
  /// If included, must match the ContentVersion in the template.
  final String? contentVersion;
  /// The resource id of a Template Spec. Use either the id or uri property, but not both.
  final String? id;
  /// The query string (for example, a SAS token) to be used with the templateLink URI.
  final String? queryString;
  /// The relativePath property can be used to deploy a linked template at a location relative to the parent. If the parent template was linked with a TemplateSpec, this will reference an artifact in the TemplateSpec.  If the parent was linked with a URI, the child deployment will be a combination of the parent and relativePath URIs
  final String? relativePath;
  /// The URI of the template to deploy. Use either the uri or id property, but not both.
  final String? uri;

  /// Creates a new [TemplateLink].
  /// [contentVersion] If included, must match the ContentVersion in the template.
  /// [id] The resource id of a Template Spec. Use either the id or uri property, but not both.
  /// [queryString] The query string (for example, a SAS token) to be used with the templateLink URI.
  /// [relativePath] The relativePath property can be used to deploy a linked template at a location relative to the parent. If the parent template was linked with a TemplateSpec, this will reference an artifact in the TemplateSpec.  If the parent was linked with a URI, the child deployment will be a combination of the parent and relativePath URIs
  /// [uri] The URI of the template to deploy. Use either the uri or id property, but not both.
  TemplateLink({
    this.contentVersion,
    this.id,
    this.queryString,
    this.relativePath,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentVersion': ?contentVersion,
      'id': ?id,
      'queryString': ?queryString,
      'relativePath': ?relativePath,
      'uri': ?uri,
    };
  }

  factory TemplateLink.fromMap(Map<String, dynamic> map) {
    return TemplateLink(
      contentVersion: map['contentVersion'] == null ? null : map['contentVersion'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      queryString: map['queryString'] == null ? null : map['queryString'] as String,
      relativePath: map['relativePath'] == null ? null : map['relativePath'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

