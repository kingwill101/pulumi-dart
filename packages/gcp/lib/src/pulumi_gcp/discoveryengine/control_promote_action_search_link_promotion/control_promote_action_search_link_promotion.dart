// ignore_for_file: unused_element, unnecessary_cast

class ControlPromoteActionSearchLinkPromotion {
  /// The description of the promoted link.
  final String? description;

  /// The document to promote.
  final String? document;

  /// Return promotions for basic site search.
  final bool? enabled;

  /// The image URI of the promoted link.
  final String? imageUri;

  /// The title of the promoted link.
  final String title;

  /// The URI to promote.
  final String? uri;

  ControlPromoteActionSearchLinkPromotion({
    this.description,
    this.document,
    this.enabled,
    this.imageUri,
    required this.title,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final documentValue = document;
    if (documentValue != null) {
      map['document'] = documentValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final imageUriValue = imageUri;
    if (imageUriValue != null) {
      map['imageUri'] = imageUriValue;
    }
    map['title'] = title;
    final uriValue = uri;
    if (uriValue != null) {
      map['uri'] = uriValue;
    }
    return map;
  }

  factory ControlPromoteActionSearchLinkPromotion.fromMap(
      Map<String, dynamic> map) {
    return ControlPromoteActionSearchLinkPromotion(
      description:
          map['description'] == null ? null : map['description'] as String,
      document: map['document'] == null ? null : map['document'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      imageUri: map['imageUri'] == null ? null : map['imageUri'] as String,
      title: map['title'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
