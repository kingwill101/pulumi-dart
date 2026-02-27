// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_library_settings.dart';
import 'method_settings.dart';
import 'publishing_organization.dart';

/// This message configures the settings for publishing [Google Cloud Client libraries](https://cloud.google.com/apis/docs/cloud-client-libraries) generated from the service config.
class Publishing {
  /// Used as a tracking tag when collecting data about the APIs developer relations artifacts like docs, packages delivered to package managers, etc. Example: "speech".
  final String? apiShortName;

  /// GitHub teams to be added to CODEOWNERS in the directory in GitHub containing source code for the client libraries for this API.
  final List<String>? codeownerGithubTeams;

  /// A prefix used in sample code when demarking regions to be included in documentation.
  final String? docTagPrefix;

  /// Link to product home page. Example: https://cloud.google.com/asset-inventory/docs/overview
  final String? documentationUri;

  /// GitHub label to apply to issues and pull requests opened for this API.
  final String? githubLabel;

  /// Client library settings. If the same version string appears multiple times in this list, then the last one wins. Settings from earlier settings with the same version string are discarded.
  final List<ClientLibrarySettings>? librarySettings;

  /// A list of API method settings, e.g. the behavior for methods that use the long-running operation pattern.
  final List<MethodSettings>? methodSettings;

  /// Link to a *public* URI where users can report issues. Example: https://issuetracker.google.com/issues/new?component=190865&template=1161103
  final String? newIssueUri;

  /// For whom the client library is being published.
  final PublishingOrganization? organization;

  /// Optional link to proto reference documentation. Example: https://cloud.google.com/pubsub/lite/docs/reference/rpc
  final String? protoReferenceDocumentationUri;

  Publishing({
    this.apiShortName,
    this.codeownerGithubTeams,
    this.docTagPrefix,
    this.documentationUri,
    this.githubLabel,
    this.librarySettings,
    this.methodSettings,
    this.newIssueUri,
    this.organization,
    this.protoReferenceDocumentationUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiShortNameValue = apiShortName;
    if (apiShortNameValue != null) {
      map['apiShortName'] = apiShortNameValue;
    }
    final codeownerGithubTeamsValue = codeownerGithubTeams;
    if (codeownerGithubTeamsValue != null) {
      map['codeownerGithubTeams'] = codeownerGithubTeamsValue;
    }
    final docTagPrefixValue = docTagPrefix;
    if (docTagPrefixValue != null) {
      map['docTagPrefix'] = docTagPrefixValue;
    }
    final documentationUriValue = documentationUri;
    if (documentationUriValue != null) {
      map['documentationUri'] = documentationUriValue;
    }
    final githubLabelValue = githubLabel;
    if (githubLabelValue != null) {
      map['githubLabel'] = githubLabelValue;
    }
    final librarySettingsValue = librarySettings;
    if (librarySettingsValue != null) {
      map['librarySettings'] =
          pulumi.Input.encodeList<ClientLibrarySettings, Map<String, dynamic>>(
              librarySettingsValue, (value) => value.toMap());
    }
    final methodSettingsValue = methodSettings;
    if (methodSettingsValue != null) {
      map['methodSettings'] =
          pulumi.Input.encodeList<MethodSettings, Map<String, dynamic>>(
              methodSettingsValue, (value) => value.toMap());
    }
    final newIssueUriValue = newIssueUri;
    if (newIssueUriValue != null) {
      map['newIssueUri'] = newIssueUriValue;
    }
    final organizationValue = organization;
    if (organizationValue != null) {
      map['organization'] = organizationValue.value;
    }
    final protoReferenceDocumentationUriValue = protoReferenceDocumentationUri;
    if (protoReferenceDocumentationUriValue != null) {
      map['protoReferenceDocumentationUri'] =
          protoReferenceDocumentationUriValue;
    }
    return map;
  }

  factory Publishing.fromMap(Map<String, dynamic> map) {
    return Publishing(
      apiShortName:
          map['apiShortName'] == null ? null : map['apiShortName'] as String,
      codeownerGithubTeams: map['codeownerGithubTeams'] == null
          ? null
          : (map['codeownerGithubTeams'] as List).cast<String>(),
      docTagPrefix:
          map['docTagPrefix'] == null ? null : map['docTagPrefix'] as String,
      documentationUri: map['documentationUri'] == null
          ? null
          : map['documentationUri'] as String,
      githubLabel:
          map['githubLabel'] == null ? null : map['githubLabel'] as String,
      librarySettings: map['librarySettings'] == null
          ? null
          : pulumi.Input.decodeList<ClientLibrarySettings>(
              map['librarySettings'],
              (value) => ClientLibrarySettings.fromMap(
                  (value as Map).cast<String, dynamic>())),
      methodSettings: map['methodSettings'] == null
          ? null
          : pulumi.Input.decodeList<MethodSettings>(
              map['methodSettings'],
              (value) => MethodSettings.fromMap(
                  (value as Map).cast<String, dynamic>())),
      newIssueUri:
          map['newIssueUri'] == null ? null : map['newIssueUri'] as String,
      organization: map['organization'] == null
          ? null
          : PublishingOrganization.fromValue(map['organization'] as String),
      protoReferenceDocumentationUri:
          map['protoReferenceDocumentationUri'] == null
              ? null
              : map['protoReferenceDocumentationUri'] as String,
    );
  }
}
