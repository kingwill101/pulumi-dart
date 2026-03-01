// ignore_for_file: unused_element, unnecessary_cast

/// Script runnable.
class ScriptResponse {
  /// Script file path on the host VM. To specify an interpreter, please add a `#!`(also known as [shebang line](https://en.wikipedia.org/wiki/Shebang_(Unix))) as the first line of the file.(For example, to execute the script using bash, `#!/bin/bash` should be the first line of the file. To execute the script using`Python3`, `#!/usr/bin/env python3` should be the first line of the file.) Otherwise, the file will by default be excuted by `/bin/sh`.
  final String path;

  /// Shell script text. To specify an interpreter, please add a `#!\n` at the beginning of the text.(For example, to execute the script using bash, `#!/bin/bash\n` should be added. To execute the script using`Python3`, `#!/usr/bin/env python3\n` should be added.) Otherwise, the script will by default be excuted by `/bin/sh`.
  final String text;

  /// Creates a new [ScriptResponse].
  /// [path] Script file path on the host VM. To specify an interpreter, please add a `#!`(also known as [shebang line](https://en.wikipedia.org/wiki/Shebang_(Unix))) as the first line of the file.(For example, to execute the script using bash, `#!/bin/bash` should be the first line of the file. To execute the script using`Python3`, `#!/usr/bin/env python3` should be the first line of the file.) Otherwise, the file will by default be excuted by `/bin/sh`.
  /// [text] Shell script text. To specify an interpreter, please add a `#!\n` at the beginning of the text.(For example, to execute the script using bash, `#!/bin/bash\n` should be added. To execute the script using`Python3`, `#!/usr/bin/env python3\n` should be added.) Otherwise, the script will by default be excuted by `/bin/sh`.
  ScriptResponse({required this.path, required this.text});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'path': path, 'text': text};
  }

  factory ScriptResponse.fromMap(Map<String, dynamic> map) {
    return ScriptResponse(
      path: map['path'] as String,
      text: map['text'] as String,
    );
  }
}
