// ignore_for_file: unused_element, unnecessary_cast

class RuntimeTemplateSoftwareConfigPostStartupScriptConfig {
  /// Post startup script to run after runtime is started.
  final String? postStartupScript;

  /// Post startup script behavior that defines download and execution behavior.
  /// Possible values are: `RUN_ONCE`, `RUN_EVERY_START`, `DOWNLOAD_AND_RUN_EVERY_START`.
  final String? postStartupScriptBehavior;

  /// Post startup script url to download. Example: https://bucket/script.sh.
  final String? postStartupScriptUrl;

  RuntimeTemplateSoftwareConfigPostStartupScriptConfig({
    this.postStartupScript,
    this.postStartupScriptBehavior,
    this.postStartupScriptUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final postStartupScriptValue = postStartupScript;
    if (postStartupScriptValue != null) {
      map['postStartupScript'] = postStartupScriptValue;
    }
    final postStartupScriptBehaviorValue = postStartupScriptBehavior;
    if (postStartupScriptBehaviorValue != null) {
      map['postStartupScriptBehavior'] = postStartupScriptBehaviorValue;
    }
    final postStartupScriptUrlValue = postStartupScriptUrl;
    if (postStartupScriptUrlValue != null) {
      map['postStartupScriptUrl'] = postStartupScriptUrlValue;
    }
    return map;
  }

  factory RuntimeTemplateSoftwareConfigPostStartupScriptConfig.fromMap(
      Map<String, dynamic> map) {
    return RuntimeTemplateSoftwareConfigPostStartupScriptConfig(
      postStartupScript: map['postStartupScript'] == null
          ? null
          : map['postStartupScript'] as String,
      postStartupScriptBehavior: map['postStartupScriptBehavior'] == null
          ? null
          : map['postStartupScriptBehavior'] as String,
      postStartupScriptUrl: map['postStartupScriptUrl'] == null
          ? null
          : map['postStartupScriptUrl'] as String,
    );
  }
}
