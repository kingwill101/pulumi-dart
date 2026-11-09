// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hub_content_hub_content_dependency.dart';

/// Result data returned by getHubContent.
class GetHubContentResult {
  /// Date and time the hub content was created.
  final String? creationTime;
  /// Version of the hub content document schema.
  final String? documentSchemaVersion;
  /// Failure reason if importing the hub content failed.
  final String? failureReason;
  /// ARN of the hub that contains the content.
  final String? hubArn;
  /// ARN of the hub content, without the version suffix.
  final String? hubContentArn;
  /// List of hub content dependencies. See `hubContentDependency`.
  final List<GetHubContentHubContentDependency>? hubContentDependencies;
  /// Description of the hub content.
  final String? hubContentDescription;
  /// Display name of the hub content.
  final String? hubContentDisplayName;
  /// JSON hub content document, including details such as the hosting image and artifact URIs.
  final String? hubContentDocument;
  /// Markdown content of the hub content.
  final String? hubContentMarkdown;
  final String? hubContentName;
  /// List of searchable keywords for the hub content.
  final List<String>? hubContentSearchKeywords;
  /// Status of the hub content.
  final String? hubContentStatus;
  final String? hubContentType;
  final String? hubContentVersion;
  final String? hubName;
  /// Date and time the hub content was last modified.
  final String? lastModifiedTime;
  /// Minimum version of the referenced public hub content, for `ModelReference` hub content.
  final String? referenceMinVersion;
  final String? region;
  /// ARN of the referenced public hub content, without the version suffix, for `ModelReference` hub content.
  final String? sagemakerPublicHubContentArn;
  /// Support status of the hub content.
  final String? supportStatus;
  /// ARN of the hub content, including the version suffix.
  final String? versionedHubContentArn;

  /// Creates a new [GetHubContentResult].
  /// [creationTime] Date and time the hub content was created.
  /// [documentSchemaVersion] Version of the hub content document schema.
  /// [failureReason] Failure reason if importing the hub content failed.
  /// [hubArn] ARN of the hub that contains the content.
  /// [hubContentArn] ARN of the hub content, without the version suffix.
  /// [hubContentDependencies] List of hub content dependencies. See `hubContentDependency`.
  /// [hubContentDescription] Description of the hub content.
  /// [hubContentDisplayName] Display name of the hub content.
  /// [hubContentDocument] JSON hub content document, including details such as the hosting image and artifact URIs.
  /// [hubContentMarkdown] Markdown content of the hub content.
  /// [hubContentName] Optional.
  /// [hubContentSearchKeywords] List of searchable keywords for the hub content.
  /// [hubContentStatus] Status of the hub content.
  /// [hubContentType] Optional.
  /// [hubContentVersion] Optional.
  /// [hubName] Optional.
  /// [lastModifiedTime] Date and time the hub content was last modified.
  /// [referenceMinVersion] Minimum version of the referenced public hub content, for `ModelReference` hub content.
  /// [region] Optional.
  /// [sagemakerPublicHubContentArn] ARN of the referenced public hub content, without the version suffix, for `ModelReference` hub content.
  /// [supportStatus] Support status of the hub content.
  /// [versionedHubContentArn] ARN of the hub content, including the version suffix.
  const GetHubContentResult({
    this.creationTime,
    this.documentSchemaVersion,
    this.failureReason,
    this.hubArn,
    this.hubContentArn,
    this.hubContentDependencies,
    this.hubContentDescription,
    this.hubContentDisplayName,
    this.hubContentDocument,
    this.hubContentMarkdown,
    this.hubContentName,
    this.hubContentSearchKeywords,
    this.hubContentStatus,
    this.hubContentType,
    this.hubContentVersion,
    this.hubName,
    this.lastModifiedTime,
    this.referenceMinVersion,
    this.region,
    this.sagemakerPublicHubContentArn,
    this.supportStatus,
    this.versionedHubContentArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTime': ?creationTime,
      'documentSchemaVersion': ?documentSchemaVersion,
      'failureReason': ?failureReason,
      'hubArn': ?hubArn,
      'hubContentArn': ?hubContentArn,
      'hubContentDependencies': ?(() { final guardedValue = hubContentDependencies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetHubContentHubContentDependency, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'hubContentDescription': ?hubContentDescription,
      'hubContentDisplayName': ?hubContentDisplayName,
      'hubContentDocument': ?hubContentDocument,
      'hubContentMarkdown': ?hubContentMarkdown,
      'hubContentName': ?hubContentName,
      'hubContentSearchKeywords': ?hubContentSearchKeywords,
      'hubContentStatus': ?hubContentStatus,
      'hubContentType': ?hubContentType,
      'hubContentVersion': ?hubContentVersion,
      'hubName': ?hubName,
      'lastModifiedTime': ?lastModifiedTime,
      'referenceMinVersion': ?referenceMinVersion,
      'region': ?region,
      'sagemakerPublicHubContentArn': ?sagemakerPublicHubContentArn,
      'supportStatus': ?supportStatus,
      'versionedHubContentArn': ?versionedHubContentArn,
    };
  }

  factory GetHubContentResult.fromMap(Map<String, dynamic> map) {
    return GetHubContentResult(
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      documentSchemaVersion: (() { final guardedValue = map['documentSchemaVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      failureReason: (() { final guardedValue = map['failureReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hubArn: (() { final guardedValue = map['hubArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hubContentArn: (() { final guardedValue = map['hubContentArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hubContentDependencies: (() { final guardedValue = map['hubContentDependencies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetHubContentHubContentDependency>(guardedValue, (value) => GetHubContentHubContentDependency.fromMap((value as Map).cast<String, dynamic>())); })(),
      hubContentDescription: (() { final guardedValue = map['hubContentDescription']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hubContentDisplayName: (() { final guardedValue = map['hubContentDisplayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hubContentDocument: (() { final guardedValue = map['hubContentDocument']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hubContentMarkdown: (() { final guardedValue = map['hubContentMarkdown']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hubContentName: (() { final guardedValue = map['hubContentName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hubContentSearchKeywords: (() { final guardedValue = map['hubContentSearchKeywords']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      hubContentStatus: (() { final guardedValue = map['hubContentStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hubContentType: (() { final guardedValue = map['hubContentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hubContentVersion: (() { final guardedValue = map['hubContentVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hubName: (() { final guardedValue = map['hubName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      referenceMinVersion: (() { final guardedValue = map['referenceMinVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sagemakerPublicHubContentArn: (() { final guardedValue = map['sagemakerPublicHubContentArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportStatus: (() { final guardedValue = map['supportStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionedHubContentArn: (() { final guardedValue = map['versionedHubContentArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
