// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'category.dart';
import 'identity.dart';

/// Windows Update represents the metadata about the update for the Windows operating system. The fields in this message come from the Windows Update API documented at https://docs.microsoft.com/en-us/windows/win32/api/wuapi/nn-wuapi-iupdate.
class WindowsUpdate {
  /// The list of categories to which the update belongs.
  final List<Category>? categories;

  /// The localized description of the update.
  final String? description;

  /// Required - The unique identifier for the update.
  final Identity? identity;

  /// The Microsoft Knowledge Base article IDs that are associated with the update.
  final List<String>? kbArticleIds;

  /// The last published timestamp of the update.
  final String? lastPublishedTimestamp;

  /// The hyperlink to the support information for the update.
  final String? supportUrl;

  /// The localized title of the update.
  final String? title;

  WindowsUpdate({
    this.categories,
    this.description,
    this.identity,
    this.kbArticleIds,
    this.lastPublishedTimestamp,
    this.supportUrl,
    this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final categoriesValue = categories;
    if (categoriesValue != null) {
      map['categories'] =
          pulumi.Input.encodeList<Category, Map<String, dynamic>>(
              categoriesValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final identityValue = identity;
    if (identityValue != null) {
      map['identity'] = identityValue.toMap();
    }
    final kbArticleIdsValue = kbArticleIds;
    if (kbArticleIdsValue != null) {
      map['kbArticleIds'] = kbArticleIdsValue;
    }
    final lastPublishedTimestampValue = lastPublishedTimestamp;
    if (lastPublishedTimestampValue != null) {
      map['lastPublishedTimestamp'] = lastPublishedTimestampValue;
    }
    final supportUrlValue = supportUrl;
    if (supportUrlValue != null) {
      map['supportUrl'] = supportUrlValue;
    }
    final titleValue = title;
    if (titleValue != null) {
      map['title'] = titleValue;
    }
    return map;
  }

  factory WindowsUpdate.fromMap(Map<String, dynamic> map) {
    return WindowsUpdate(
      categories: map['categories'] == null
          ? null
          : pulumi.Input.decodeList<Category>(
              map['categories'],
              (value) =>
                  Category.fromMap((value as Map).cast<String, dynamic>())),
      description:
          map['description'] == null ? null : map['description'] as String,
      identity: map['identity'] == null
          ? null
          : Identity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      kbArticleIds: map['kbArticleIds'] == null
          ? null
          : (map['kbArticleIds'] as List).cast<String>(),
      lastPublishedTimestamp: map['lastPublishedTimestamp'] == null
          ? null
          : map['lastPublishedTimestamp'] as String,
      supportUrl:
          map['supportUrl'] == null ? null : map['supportUrl'] as String,
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}
