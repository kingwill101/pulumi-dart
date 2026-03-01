/// Behavior for the post startup script.
enum RuntimeSoftwareConfigPostStartupScriptBehavior {
  postStartupScriptBehaviorUnspecified(
    "POST_STARTUP_SCRIPT_BEHAVIOR_UNSPECIFIED",
  ),
  runEveryStart("RUN_EVERY_START"),
  downloadAndRunEveryStart("DOWNLOAD_AND_RUN_EVERY_START");

  const RuntimeSoftwareConfigPostStartupScriptBehavior(this.value);
  final String value;

  static RuntimeSoftwareConfigPostStartupScriptBehavior fromValue(
    String value,
  ) {
    for (final item in RuntimeSoftwareConfigPostStartupScriptBehavior.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown RuntimeSoftwareConfigPostStartupScriptBehavior value: $value',
    );
  }
}
