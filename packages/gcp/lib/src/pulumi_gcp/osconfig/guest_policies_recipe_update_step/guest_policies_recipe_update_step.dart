// ignore_for_file: unused_element, unnecessary_cast

import '../guest_policies_recipe_update_step_archive_extraction/guest_policies_recipe_update_step_archive_extraction.dart';
import '../guest_policies_recipe_update_step_dpkg_installation/guest_policies_recipe_update_step_dpkg_installation.dart';
import '../guest_policies_recipe_update_step_file_copy/guest_policies_recipe_update_step_file_copy.dart';
import '../guest_policies_recipe_update_step_file_exec/guest_policies_recipe_update_step_file_exec.dart';
import '../guest_policies_recipe_update_step_msi_installation/guest_policies_recipe_update_step_msi_installation.dart';
import '../guest_policies_recipe_update_step_rpm_installation/guest_policies_recipe_update_step_rpm_installation.dart';
import '../guest_policies_recipe_update_step_script_run/guest_policies_recipe_update_step_script_run.dart';

class GuestPoliciesRecipeUpdateStep {
  /// Extracts an archive into the specified directory.
  /// Structure is documented below.
  final GuestPoliciesRecipeUpdateStepArchiveExtraction? archiveExtraction;

  /// Installs a deb file via dpkg.
  /// Structure is documented below.
  final GuestPoliciesRecipeUpdateStepDpkgInstallation? dpkgInstallation;

  /// Copies a file onto the instance.
  /// Structure is documented below.
  final GuestPoliciesRecipeUpdateStepFileCopy? fileCopy;

  /// Executes an artifact or local file.
  /// Structure is documented below.
  final GuestPoliciesRecipeUpdateStepFileExec? fileExec;

  /// Installs an MSI file.
  /// Structure is documented below.
  final GuestPoliciesRecipeUpdateStepMsiInstallation? msiInstallation;

  /// Installs an rpm file via the rpm utility.
  /// Structure is documented below.
  final GuestPoliciesRecipeUpdateStepRpmInstallation? rpmInstallation;

  /// Runs commands in a shell.
  /// Structure is documented below.
  final GuestPoliciesRecipeUpdateStepScriptRun? scriptRun;

  GuestPoliciesRecipeUpdateStep({
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

  factory GuestPoliciesRecipeUpdateStep.fromMap(Map<String, dynamic> map) {
    return GuestPoliciesRecipeUpdateStep(
      archiveExtraction: map['archiveExtraction'] == null
          ? null
          : GuestPoliciesRecipeUpdateStepArchiveExtraction.fromMap(
              (map['archiveExtraction'] as Map).cast<String, dynamic>()),
      dpkgInstallation: map['dpkgInstallation'] == null
          ? null
          : GuestPoliciesRecipeUpdateStepDpkgInstallation.fromMap(
              (map['dpkgInstallation'] as Map).cast<String, dynamic>()),
      fileCopy: map['fileCopy'] == null
          ? null
          : GuestPoliciesRecipeUpdateStepFileCopy.fromMap(
              (map['fileCopy'] as Map).cast<String, dynamic>()),
      fileExec: map['fileExec'] == null
          ? null
          : GuestPoliciesRecipeUpdateStepFileExec.fromMap(
              (map['fileExec'] as Map).cast<String, dynamic>()),
      msiInstallation: map['msiInstallation'] == null
          ? null
          : GuestPoliciesRecipeUpdateStepMsiInstallation.fromMap(
              (map['msiInstallation'] as Map).cast<String, dynamic>()),
      rpmInstallation: map['rpmInstallation'] == null
          ? null
          : GuestPoliciesRecipeUpdateStepRpmInstallation.fromMap(
              (map['rpmInstallation'] as Map).cast<String, dynamic>()),
      scriptRun: map['scriptRun'] == null
          ? null
          : GuestPoliciesRecipeUpdateStepScriptRun.fromMap(
              (map['scriptRun'] as Map).cast<String, dynamic>()),
    );
  }
}
