// ignore_for_file: unused_element, unnecessary_cast


class AlertTemplateConfiguration {
  /// Alert template annotations.
  final Map<String, String>? annotations;
  /// Alert template id.
  final String id;
  /// Alert template language including `cn`, `en`.
  final String? lang;
  /// Alert template tokens.
  final Map<String, String>? tokens;
  /// Alert template type including `sys`, `user`.
  final String type;

  /// Creates a new [AlertTemplateConfiguration].
  /// [annotations] Alert template annotations.
  /// [id] Alert template id.
  /// [lang] Alert template language including `cn`, `en`.
  /// [tokens] Alert template tokens.
  /// [type] Alert template type including `sys`, `user`.
  AlertTemplateConfiguration({
    this.annotations,
    required this.id,
    this.lang,
    this.tokens,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'id': id,
      'lang': ?lang,
      'tokens': ?tokens,
      'type': type,
    };
  }

  factory AlertTemplateConfiguration.fromMap(Map<String, dynamic> map) {
    return AlertTemplateConfiguration(
      annotations: map['annotations'] == null ? null : (map['annotations'] as Map).cast<String, String>(),
      id: map['id'] as String,
      lang: map['lang'] == null ? null : map['lang'] as String,
      tokens: map['tokens'] == null ? null : (map['tokens'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

