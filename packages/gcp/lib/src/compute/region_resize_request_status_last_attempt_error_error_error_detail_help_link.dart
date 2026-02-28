// ignore_for_file: unused_element, unnecessary_cast

class RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailHelpLink {
  /// An optional description of this resize-request.
  final String? description;

  /// (Output)
  /// The URL of the link.
  final String? url;

  /// Creates a new [RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailHelpLink].
  /// [description] An optional description of this resize-request.
  /// [url] (Output)
  RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailHelpLink({
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

  factory RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailHelpLink.fromMap(
      Map<String, dynamic> map) {
    return RegionResizeRequestStatusLastAttemptErrorErrorErrorDetailHelpLink(
      description:
          map['description'] == null ? null : map['description'] as String,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}
