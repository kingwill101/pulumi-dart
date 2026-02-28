/// Type of issue. Required.
enum TestIssueType {
  unspecifiedType("unspecifiedType"),
  fatalException("fatalException"),
  nativeCrash("nativeCrash"),
  anr("anr"),
  unusedRoboDirective("unusedRoboDirective"),
  compatibleWithOrchestrator("compatibleWithOrchestrator"),
  launcherActivityNotFound("launcherActivityNotFound"),
  startActivityNotFound("startActivityNotFound"),
  incompleteRoboScriptExecution("incompleteRoboScriptExecution"),
  completeRoboScriptExecution("completeRoboScriptExecution"),
  failedToInstall("failedToInstall"),
  availableDeepLinks("availableDeepLinks"),
  nonSdkApiUsageViolation("nonSdkApiUsageViolation"),
  nonSdkApiUsageReport("nonSdkApiUsageReport"),
  encounteredNonAndroidUiWidgetScreen("encounteredNonAndroidUiWidgetScreen"),
  encounteredLoginScreen("encounteredLoginScreen"),
  performedGoogleLogin("performedGoogleLogin"),
  iosException("iosException"),
  iosCrash("iosCrash"),
  performedMonkeyActions("performedMonkeyActions"),
  usedRoboDirective("usedRoboDirective"),
  usedRoboIgnoreDirective("usedRoboIgnoreDirective"),
  insufficientCoverage("insufficientCoverage"),
  inAppPurchases("inAppPurchases"),
  crashDialogError("crashDialogError"),
  uiElementsTooDeep("uiElementsTooDeep"),
  blankScreen("blankScreen"),
  overlappingUiElements("overlappingUiElements"),
  unityException("unityException"),
  deviceOutOfMemory("deviceOutOfMemory"),
  logcatCollectionError("logcatCollectionError"),
  detectedAppSplashScreen("detectedAppSplashScreen"),
  assetIssue("assetIssue");

  const TestIssueType(this.value);
  final String value;

  static TestIssueType fromValue(String value) {
    for (final item in TestIssueType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TestIssueType value: $value');
  }
}
