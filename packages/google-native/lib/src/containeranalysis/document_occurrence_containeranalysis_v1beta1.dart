// ignore_for_file: unused_element, unnecessary_cast

/// DocumentOccurrence represents an SPDX Document Creation Information section: https://spdx.github.io/spdx-spec/2-document-creation-information/
class DocumentOccurrenceContaineranalysisV1beta1 {
  /// Identify when the SPDX file was originally created. The date is to be specified according to combined date and time in UTC format as specified in ISO 8601 standard
  final String? createTime;

  /// A field for creators of the SPDX file to provide general comments about the creation of the SPDX file or any other relevant comment not included in the other fields
  final String? creatorComment;

  /// Identify who (or what, in the case of a tool) created the SPDX file. If the SPDX file was created by an individual, indicate the person's name
  final List<String>? creators;

  /// A field for creators of the SPDX file content to provide comments to the consumers of the SPDX document
  final String? documentComment;

  /// Identify any external SPDX documents referenced within this SPDX document
  final List<String>? externalDocumentRefs;

  /// Identify the current SPDX document which may be referenced in relationships by other files, packages internally and documents externally
  final String? id;

  /// A field for creators of the SPDX file to provide the version of the SPDX License List used when the SPDX file was created
  final String? licenseListVersion;

  /// Provide an SPDX document specific namespace as a unique absolute Uniform Resource Identifier (URI) as specified in RFC-3986, with the exception of the ‘#’ delimiter
  final String? namespace;

  /// Identify name of this document as designated by creator
  final String? title;

  /// Creates a new [DocumentOccurrenceContaineranalysisV1beta1].
  /// [createTime] Identify when the SPDX file was originally created. The date is to be specified according to combined date and time in UTC format as specified in ISO 8601 standard
  /// [creatorComment] A field for creators of the SPDX file to provide general comments about the creation of the SPDX file or any other relevant comment not included in the other fields
  /// [creators] Identify who (or what, in the case of a tool) created the SPDX file. If the SPDX file was created by an individual, indicate the person's name
  /// [documentComment] A field for creators of the SPDX file content to provide comments to the consumers of the SPDX document
  /// [externalDocumentRefs] Identify any external SPDX documents referenced within this SPDX document
  /// [id] Identify the current SPDX document which may be referenced in relationships by other files, packages internally and documents externally
  /// [licenseListVersion] A field for creators of the SPDX file to provide the version of the SPDX License List used when the SPDX file was created
  /// [namespace] Provide an SPDX document specific namespace as a unique absolute Uniform Resource Identifier (URI) as specified in RFC-3986, with the exception of the ‘#’ delimiter
  /// [title] Identify name of this document as designated by creator
  DocumentOccurrenceContaineranalysisV1beta1({
    this.createTime,
    this.creatorComment,
    this.creators,
    this.documentComment,
    this.externalDocumentRefs,
    this.id,
    this.licenseListVersion,
    this.namespace,
    this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final createTimeValue = createTime;
    if (createTimeValue != null) {
      map['createTime'] = createTimeValue;
    }
    final creatorCommentValue = creatorComment;
    if (creatorCommentValue != null) {
      map['creatorComment'] = creatorCommentValue;
    }
    final creatorsValue = creators;
    if (creatorsValue != null) {
      map['creators'] = creatorsValue;
    }
    final documentCommentValue = documentComment;
    if (documentCommentValue != null) {
      map['documentComment'] = documentCommentValue;
    }
    final externalDocumentRefsValue = externalDocumentRefs;
    if (externalDocumentRefsValue != null) {
      map['externalDocumentRefs'] = externalDocumentRefsValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final licenseListVersionValue = licenseListVersion;
    if (licenseListVersionValue != null) {
      map['licenseListVersion'] = licenseListVersionValue;
    }
    final namespaceValue = namespace;
    if (namespaceValue != null) {
      map['namespace'] = namespaceValue;
    }
    final titleValue = title;
    if (titleValue != null) {
      map['title'] = titleValue;
    }
    return map;
  }

  factory DocumentOccurrenceContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return DocumentOccurrenceContaineranalysisV1beta1(
      createTime:
          map['createTime'] == null ? null : map['createTime'] as String,
      creatorComment: map['creatorComment'] == null
          ? null
          : map['creatorComment'] as String,
      creators: map['creators'] == null
          ? null
          : (map['creators'] as List).cast<String>(),
      documentComment: map['documentComment'] == null
          ? null
          : map['documentComment'] as String,
      externalDocumentRefs: map['externalDocumentRefs'] == null
          ? null
          : (map['externalDocumentRefs'] as List).cast<String>(),
      id: map['id'] == null ? null : map['id'] as String,
      licenseListVersion: map['licenseListVersion'] == null
          ? null
          : map['licenseListVersion'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}
