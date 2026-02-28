// ignore_for_file: unused_element, unnecessary_cast

class RegionResizeRequestStatusErrorErrorErrorDetailHelpLink {
  /// An optional description of this resize-request.
  final String? description;

  /// (Output)
  /// The URL of the link.
  final String? url;

  /// Creates a new [RegionResizeRequestStatusErrorErrorErrorDetailHelpLink].
  /// [description] An optional description of this resize-request.
  /// [url] (Output)
  RegionResizeRequestStatusErrorErrorErrorDetailHelpLink({
    this.description,
    this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final urlValue = url;
    if (urlValue != null) {
      map['url'] = urlValue;
    }
    return map;
  }

  factory RegionResizeRequestStatusErrorErrorErrorDetailHelpLink.fromMap(
      Map<String, dynamic> map) {
    return RegionResizeRequestStatusErrorErrorErrorDetailHelpLink(
      description:
          map['description'] == null ? null : map['description'] as String,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}
