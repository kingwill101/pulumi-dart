// ignore_for_file: unused_element, unnecessary_cast

import 'guest_policies_recipe_install_step_archive_extraction.dart';
import 'guest_policies_recipe_install_step_dpkg_installation.dart';
import 'guest_policies_recipe_install_step_file_copy.dart';
import 'guest_policies_recipe_install_step_file_exec.dart';
import 'guest_policies_recipe_install_step_msi_installation.dart';
import 'guest_policies_recipe_install_step_rpm_installation.dart';
import 'guest_policies_recipe_install_step_script_run.dart';

class GuestPoliciesRecipeInstallStep {
  /// Extracts an archive into the specified directory.
  /// Structure is documented below.
  final GuestPoliciesRecipeInstallStepArchiveExtraction? archiveExtraction;

  /// Installs a deb file via dpkg.
  /// Structure is documented below.
  final GuestPoliciesRecipeInstallStepDpkgInstallation? dpkgInstallation;

  /// Copies a file onto the instance.
  /// Structure is documented below.
  final GuestPoliciesRecipeInstallStepFileCopy? fileCopy;

  /// Executes an artifact or local file.
  /// Structure is documented below.
  final GuestPoliciesRecipeInstallStepFileExec? fileExec;

  /// Installs an MSI file.
  /// Structure is documented below.
  final GuestPoliciesRecipeInstallStepMsiInstallation? msiInstallation;

  /// Installs an rpm file via the rpm utility.
  /// Structure is documented below.
  final GuestPoliciesRecipeInstallStepRpmInstallation? rpmInstallation;

  /// Runs commands in a shell.
  /// Structure is documented below.
  final GuestPoliciesRecipeInstallStepScriptRun? scriptRun;

  /// Creates a new [GuestPoliciesRecipeInstallStep].
  /// [archiveExtraction] Extracts an archive into the specified directory.
  /// [dpkgInstallation] Installs a deb file via dpkg.
  /// [fileCopy] Copies a file onto the instance.
  /// [fileExec] Executes an artifact or local file.
  /// [msiInstallation] Installs an MSI file.
  /// [rpmInstallation] Installs an rpm file via the rpm utility.
  /// [scriptRun] Runs commands in a shell.
  GuestPoliciesRecipeInstallStep({
    this.archiveExtraction,
    this.dpkgInstallation,
    this.fileCopy,
    this.fileExec,
    this.msiInstallation,
    this.rpmInstallation,
    this.scriptRun,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final archiveExtractionValue = archiveExtraction;
    if (archiveExtractionValue != null) {
      map['archiveExtraction'] = archiveExtractionValue.toMap();
    }
    final dpkgInstallationValue = dpkgInstallation;
    if (dpkgInstallationValue != null) {
      map['dpkgInstallation'] = dpkgInstallationValue.toMap();
    }
    final fileCopyValue = fileCopy;
    if (fileCopyValue != null) {
      map['fileCopy'] = fileCopyValue.toMap();
    }
    final fileExecValue = fileExec;
    if (fileExecValue != null) {
      map['fileExec'] = fileExecValue.toMap();
    }
    final msiInstallationValue = msiInstallation;
    if (msiInstallationValue != null) {
      map['msiInstallation'] = msiInstallationValue.toMap();
    }
    final rpmInstallationValue = rpmInstallation;
    if (rpmInstallationValue != null) {
      map['rpmInstallation'] = rpmInstallationValue.toMap();
    }
    final scriptRunValue = scriptRun;
    if (scriptRunValue != null) {
      map['scriptRun'] = scriptRunValue.toMap();
    }
    return map;
  }

  factory GuestPoliciesRecipeInstallStep.fromMap(Map<String, dynamic> map) {
    return GuestPoliciesRecipeInstallStep(
      archiveExtraction: map['archiveExtraction'] == null
          ? null
          : GuestPoliciesRecipeInstallStepArchiveExtraction.fromMap(
              (map['archiveExtraction'] as Map).cast<String, dynamic>()),
      dpkgInstallation: map['dpkgInstallation'] == null
          ? null
          : GuestPoliciesRecipeInstallStepDpkgInstallation.fromMap(
              (map['dpkgInstallation'] as Map).cast<String, dynamic>()),
      fileCopy: map['fileCopy'] == null
          ? null
          : GuestPoliciesRecipeInstallStepFileCopy.fromMap(
              (map['fileCopy'] as Map).cast<String, dynamic>()),
      fileExec: map['fileExec'] == null
          ? null
          : GuestPoliciesRecipeInstallStepFileExec.fromMap(
              (map['fileExec'] as Map).cast<String, dynamic>()),
      msiInstallation: map['msiInstallation'] == null
          ? null
          : GuestPoliciesRecipeInstallStepMsiInstallation.fromMap(
              (map['msiInstallation'] as Map).cast<String, dynamic>()),
      rpmInstallation: map['rpmInstallation'] == null
          ? null
          : GuestPoliciesRecipeInstallStepRpmInstallation.fromMap(
              (map['rpmInstallation'] as Map).cast<String, dynamic>()),
      scriptRun: map['scriptRun'] == null
          ? null
          : GuestPoliciesRecipeInstallStepScriptRun.fromMap(
              (map['scriptRun'] as Map).cast<String, dynamic>()),
    );
  }
}
