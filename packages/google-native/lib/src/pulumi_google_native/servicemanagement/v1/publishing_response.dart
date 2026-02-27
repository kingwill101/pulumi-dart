// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'client_library_settings_response.dart';
import 'method_settings_response.dart';

/// This message configures the settings for publishing [Google Cloud Client libraries](https://cloud.google.com/apis/docs/cloud-client-libraries) generated from the service config.
class PublishingResponse {
  /// Used as a tracking tag when collecting data about the APIs developer relations artifacts like docs, packages delivered to package managers, etc. Example: "speech".
  final String apiShortName;

  /// GitHub teams to be added to CODEOWNERS in the directory in GitHub containing source code for the client libraries for this API.
  final List<String> codeownerGithubTeams;

  /// A prefix used in sample code when demarking regions to be included in documentation.
  final String docTagPrefix;

  /// Link to product home page. Example: https://cloud.google.com/asset-inventory/docs/overview
  final String documentationUri;

  /// GitHub label to apply to issues and pull requests opened for this API.
  final String githubLabel;

  /// Client library settings. If the same version string appears multiple times in this list, then the last one wins. Settings from earlier settings with the same version string are discarded.
  final List<ClientLibrarySettingsResponse> librarySettings;

  /// A list of API method settings, e.g. the behavior for methods that use the long-running operation pattern.
  final List<MethodSettingsResponse> methodSettings;

  /// Link to a *public* URI where users can report issues. Example: https://issuetracker.google.com/issues/new?component=190865&template=1161103
  final String newIssueUri;

  /// For whom the client library is being published.
  final String organization;

  /// Optional link to proto reference documentation. Example: https://cloud.google.com/pubsub/lite/docs/reference/rpc
  final String protoReferenceDocumentationUri;

  PublishingResponse({
    required this.apiShortName,
    required this.codeownerGithubTeams,
    required this.docTagPrefix,
    required this.documentationUri,
    required this.githubLabel,
    required this.librarySettings,
    required this.methodSettings,
    required this.newIssueUri,
    required this.organization,
    required this.protoReferenceDocumentationUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiShortName'] = apiShortName;
    map['codeownerGithubTeams'] = codeownerGithubTeams;
    map['docTagPrefix'] = docTagPrefix;
    map['documentationUri'] = documentationUri;
    map['githubLabel'] = githubLabel;
    map['librarySettings'] =
        Input.encodeList<ClientLibrarySettingsResponse, Map<String, dynamic>>(
            librarySettings, (value) => value.toMap());
    map['methodSettings'] =
        Input.encodeList<MethodSettingsResponse, Map<String, dynamic>>(
            methodSettings, (value) => value.toMap());
    map['newIssueUri'] = newIssueUri;
    map['organization'] = organization;
    map['protoReferenceDocumentationUri'] = protoReferenceDocumentationUri;
    return map;
  }

  factory PublishingResponse.fromMap(Map<String, dynamic> map) {
    return PublishingResponse(
      apiShortName: map['apiShortName'] as String,
      codeownerGithubTeams:
          (map['codeownerGithubTeams'] as List).cast<String>(),
      docTagPrefix: map['docTagPrefix'] as String,
      documentationUri: map['documentationUri'] as String,
      githubLabel: map['githubLabel'] as String,
      librarySettings: Input.decodeList<ClientLibrarySettingsResponse>(
          map['librarySettings'],
          (value) => ClientLibrarySettingsResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      methodSettings: Input.decodeList<MethodSettingsResponse>(
          map['methodSettings'],
          (value) => MethodSettingsResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      newIssueUri: map['newIssueUri'] as String,
      organization: map['organization'] as String,
      protoReferenceDocumentationUri:
          map['protoReferenceDocumentationUri'] as String,
    );
  }
}
