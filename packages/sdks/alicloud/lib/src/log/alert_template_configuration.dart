// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertTemplateConfiguration {
  /// Alert template annotations.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Alert template id.
  final pulumi.Input<String> id;
  /// Alert template language including `cn`, `en`.
  final pulumi.Input<String>? lang;
  /// Alert template tokens.
  final pulumi.Input<Map<String, String>>? tokens;
  /// Alert template type including `sys`, `user`.
  final pulumi.Input<String> type;

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
      annotations: map['annotations'] == null ? null : ((map['annotations']! as Map).cast<String, String>()).input(),
      id: (map['id'] as String).input(),
      lang: map['lang'] == null ? null : (map['lang']! as String).input(),
      tokens: map['tokens'] == null ? null : ((map['tokens']! as Map).cast<String, String>()).input(),
      type: (map['type'] as String).input(),
    );
  }
}

