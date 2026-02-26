// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'category_response.dart';
import 'identity_response.dart';

/// Windows Update represents the metadata about the update for the Windows operating system. The fields in this message come from the Windows Update API documented at https://docs.microsoft.com/en-us/windows/win32/api/wuapi/nn-wuapi-iupdate.
class WindowsUpdateResponse {
  /// The list of categories to which the update belongs.
  final List<CategoryResponse> categories;

  /// The localized description of the update.
  final String description;

  /// Required - The unique identifier for the update.
  final IdentityResponse identity;

  /// The Microsoft Knowledge Base article IDs that are associated with the update.
  final List<String> kbArticleIds;

  /// The last published timestamp of the update.
  final String lastPublishedTimestamp;

  /// The hyperlink to the support information for the update.
  final String supportUrl;

  /// The localized title of the update.
  final String title;

  WindowsUpdateResponse({
    required this.categories,
    required this.description,
    required this.identity,
    required this.kbArticleIds,
    required this.lastPublishedTimestamp,
    required this.supportUrl,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['categories'] =
        Input.encodeList<CategoryResponse, Map<String, dynamic>>(
            categories, (value) => value.toMap());
    map['description'] = description;
    map['identity'] = identity.toMap();
    map['kbArticleIds'] = kbArticleIds;
    map['lastPublishedTimestamp'] = lastPublishedTimestamp;
    map['supportUrl'] = supportUrl;
    map['title'] = title;
    return map;
  }

  factory WindowsUpdateResponse.fromMap(Map<String, dynamic> map) {
    return WindowsUpdateResponse(
      categories: Input.decodeList<CategoryResponse>(
          map['categories'],
          (value) =>
              CategoryResponse.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      identity: IdentityResponse.fromMap(
          (map['identity'] as Map).cast<String, dynamic>()),
      kbArticleIds: (map['kbArticleIds'] as List).cast<String>(),
      lastPublishedTimestamp: map['lastPublishedTimestamp'] as String,
      supportUrl: map['supportUrl'] as String,
      title: map['title'] as String,
    );
  }
}
