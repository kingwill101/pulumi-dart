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
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      lang: (() { final guardedValue = map['lang']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokens: (() { final guardedValue = map['tokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

