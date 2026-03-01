// ignore_for_file: unused_element, unnecessary_cast


class HumanTaskUIUiTemplate {
  /// The content of the Liquid template for the worker user interface.
  final String? content;
  /// The SHA-256 digest of the contents of the template.
  final String? contentSha256;
  /// The URL for the user interface template.
  final String? url;

  /// Creates a new [HumanTaskUIUiTemplate].
  /// [content] The content of the Liquid template for the worker user interface.
  /// [contentSha256] The SHA-256 digest of the contents of the template.
  /// [url] The URL for the user interface template.
  HumanTaskUIUiTemplate({
    this.content,
    this.contentSha256,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'contentSha256': ?contentSha256,
      'url': ?url,
    };
  }

  factory HumanTaskUIUiTemplate.fromMap(Map<String, dynamic> map) {
    return HumanTaskUIUiTemplate(
      content: map['content'] == null ? null : map['content'] as String,
      contentSha256: map['contentSha256'] == null ? null : map['contentSha256'] as String,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

