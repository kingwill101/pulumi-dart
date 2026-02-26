// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../app_version_snapshot_example_message/app_version_snapshot_example_message.dart';

class AppVersionSnapshotExample {
  /// (Output)
  /// Timestamp when the toolset was created.
  final String? createTime;

  /// The description of the app version.
  final String? description;

  /// The display name of the app version.
  final String? displayName;

  /// (Output)
  /// The agent that initially handles the conversation. If not specified, the
  /// example represents a conversation that is handled by the root agent.
  /// Format: `projects/{project}/locations/{location}/apps/{app}/agents/{agent}`
  final String? entryAgent;

  /// (Output)
  /// ETag used to ensure the object hasn't changed during a read-modify-write
  /// operation. If the etag is empty, the update will overwrite any concurrent
  /// changes.
  final String? etag;

  /// (Output)
  /// The example may become invalid if referencing resources are deleted.
  /// Invalid examples will not be used as few-shot examples.
  final bool? invalid;

  /// (Output)
  /// The collection of messages that make up the conversation.
  /// Structure is documented below.
  final List<AppVersionSnapshotExampleMessage>? messages;

  /// (Output)
  /// Identifier. The unique identifier of the toolset.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final String? name;

  /// (Output)
  /// Timestamp when the toolset was last updated.
  final String? updateTime;

  AppVersionSnapshotExample({
    this.createTime,
    this.description,
    this.displayName,
    this.entryAgent,
    this.etag,
    this.invalid,
    this.messages,
    this.name,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final createTimeValue = createTime;
    if (createTimeValue != null) {
      map['createTime'] = createTimeValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final entryAgentValue = entryAgent;
    if (entryAgentValue != null) {
      map['entryAgent'] = entryAgentValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final invalidValue = invalid;
    if (invalidValue != null) {
      map['invalid'] = invalidValue;
    }
    final messagesValue = messages;
    if (messagesValue != null) {
      map['messages'] = Input.encodeList<AppVersionSnapshotExampleMessage,
          Map<String, dynamic>>(messagesValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final updateTimeValue = updateTime;
    if (updateTimeValue != null) {
      map['updateTime'] = updateTimeValue;
    }
    return map;
  }

  factory AppVersionSnapshotExample.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotExample(
      createTime:
          map['createTime'] == null ? null : map['createTime'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      entryAgent:
          map['entryAgent'] == null ? null : map['entryAgent'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      invalid: map['invalid'] == null ? null : map['invalid'] as bool,
      messages: map['messages'] == null
          ? null
          : Input.decodeList<AppVersionSnapshotExampleMessage>(
              map['messages'],
              (value) => AppVersionSnapshotExampleMessage.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      updateTime:
          map['updateTime'] == null ? null : map['updateTime'] as String,
    );
  }
}
