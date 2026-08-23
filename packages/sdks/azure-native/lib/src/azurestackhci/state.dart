/// State of the update as it relates to this stamp.
enum State {
  valueHasPrerequisite("HasPrerequisite"),
  valueObsolete("Obsolete"),
  valueReady("Ready"),
  valueNotApplicableBecauseAnotherUpdateIsInProgress("NotApplicableBecauseAnotherUpdateIsInProgress"),
  valuePreparing("Preparing"),
  valueInstalling("Installing"),
  valueInstalled("Installed"),
  valuePreparationFailed("PreparationFailed"),
  valueInstallationFailed("InstallationFailed"),
  valueInvalid("Invalid"),
  valueRecalled("Recalled"),
  valueDownloading("Downloading"),
  valueDownloadFailed("DownloadFailed"),
  valueHealthChecking("HealthChecking"),
  valueHealthCheckFailed("HealthCheckFailed"),
  valueReadyToInstall("ReadyToInstall"),
  valueScanInProgress("ScanInProgress"),
  valueScanFailed("ScanFailed"),
  valueAdditionalContentRequired("AdditionalContentRequired");

  const State(this.wireValue);
  final String wireValue;

  static State fromValue(String value) {
    for (final item in State.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown State value: $value');
  }
}
