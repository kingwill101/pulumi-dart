// ignore_for_file: unused_element, unnecessary_cast

import 'software_recipe_step_copy_file.dart';
import 'software_recipe_step_exec_file.dart';
import 'software_recipe_step_extract_archive.dart';
import 'software_recipe_step_install_dpkg.dart';
import 'software_recipe_step_install_msi.dart';
import 'software_recipe_step_install_rpm.dart';
import 'software_recipe_step_run_script.dart';

/// An action that can be taken as part of installing or updating a recipe.
class SoftwareRecipeStep {
  /// Extracts an archive into the specified directory.
  final SoftwareRecipeStepExtractArchive? archiveExtraction;

  /// Installs a deb file via dpkg.
  final SoftwareRecipeStepInstallDpkg? dpkgInstallation;

  /// Copies a file onto the instance.
  final SoftwareRecipeStepCopyFile? fileCopy;

  /// Executes an artifact or local file.
  final SoftwareRecipeStepExecFile? fileExec;

  /// Installs an MSI file.
  final SoftwareRecipeStepInstallMsi? msiInstallation;

  /// Installs an rpm file via the rpm utility.
  final SoftwareRecipeStepInstallRpm? rpmInstallation;

  /// Runs commands in a shell.
  final SoftwareRecipeStepRunScript? scriptRun;

  /// Creates a new [SoftwareRecipeStep].
  /// [archiveExtraction] Extracts an archive into the specified directory.
  /// [dpkgInstallation] Installs a deb file via dpkg.
  /// [fileCopy] Copies a file onto the instance.
  /// [fileExec] Executes an artifact or local file.
  /// [msiInstallation] Installs an MSI file.
  /// [rpmInstallation] Installs an rpm file via the rpm utility.
  /// [scriptRun] Runs commands in a shell.
  SoftwareRecipeStep({
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

  factory SoftwareRecipeStep.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipeStep(
      archiveExtraction: map['archiveExtraction'] == null
          ? null
          : SoftwareRecipeStepExtractArchive.fromMap(
              (map['archiveExtraction'] as Map).cast<String, dynamic>()),
      dpkgInstallation: map['dpkgInstallation'] == null
          ? null
          : SoftwareRecipeStepInstallDpkg.fromMap(
              (map['dpkgInstallation'] as Map).cast<String, dynamic>()),
      fileCopy: map['fileCopy'] == null
          ? null
          : SoftwareRecipeStepCopyFile.fromMap(
              (map['fileCopy'] as Map).cast<String, dynamic>()),
      fileExec: map['fileExec'] == null
          ? null
          : SoftwareRecipeStepExecFile.fromMap(
              (map['fileExec'] as Map).cast<String, dynamic>()),
      msiInstallation: map['msiInstallation'] == null
          ? null
          : SoftwareRecipeStepInstallMsi.fromMap(
              (map['msiInstallation'] as Map).cast<String, dynamic>()),
      rpmInstallation: map['rpmInstallation'] == null
          ? null
          : SoftwareRecipeStepInstallRpm.fromMap(
              (map['rpmInstallation'] as Map).cast<String, dynamic>()),
      scriptRun: map['scriptRun'] == null
          ? null
          : SoftwareRecipeStepRunScript.fromMap(
              (map['scriptRun'] as Map).cast<String, dynamic>()),
    );
  }
}
