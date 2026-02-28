// ignore_for_file: unused_element, unnecessary_cast

import 'software_recipe_step_copy_file_response.dart';
import 'software_recipe_step_exec_file_response.dart';
import 'software_recipe_step_extract_archive_response.dart';
import 'software_recipe_step_install_dpkg_response.dart';
import 'software_recipe_step_install_msi_response.dart';
import 'software_recipe_step_install_rpm_response.dart';
import 'software_recipe_step_run_script_response.dart';

/// An action that can be taken as part of installing or updating a recipe.
class SoftwareRecipeStepResponse {
  /// Extracts an archive into the specified directory.
  final SoftwareRecipeStepExtractArchiveResponse archiveExtraction;

  /// Installs a deb file via dpkg.
  final SoftwareRecipeStepInstallDpkgResponse dpkgInstallation;

  /// Copies a file onto the instance.
  final SoftwareRecipeStepCopyFileResponse fileCopy;

  /// Executes an artifact or local file.
  final SoftwareRecipeStepExecFileResponse fileExec;

  /// Installs an MSI file.
  final SoftwareRecipeStepInstallMsiResponse msiInstallation;

  /// Installs an rpm file via the rpm utility.
  final SoftwareRecipeStepInstallRpmResponse rpmInstallation;

  /// Runs commands in a shell.
  final SoftwareRecipeStepRunScriptResponse scriptRun;

  /// Creates a new [SoftwareRecipeStepResponse].
  /// [archiveExtraction] Extracts an archive into the specified directory.
  /// [dpkgInstallation] Installs a deb file via dpkg.
  /// [fileCopy] Copies a file onto the instance.
  /// [fileExec] Executes an artifact or local file.
  /// [msiInstallation] Installs an MSI file.
  /// [rpmInstallation] Installs an rpm file via the rpm utility.
  /// [scriptRun] Runs commands in a shell.
  SoftwareRecipeStepResponse({
    required this.archiveExtraction,
    required this.dpkgInstallation,
    required this.fileCopy,
    required this.fileExec,
    required this.msiInstallation,
    required this.rpmInstallation,
    required this.scriptRun,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['archiveExtraction'] = archiveExtraction.toMap();
    map['dpkgInstallation'] = dpkgInstallation.toMap();
    map['fileCopy'] = fileCopy.toMap();
    map['fileExec'] = fileExec.toMap();
    map['msiInstallation'] = msiInstallation.toMap();
    map['rpmInstallation'] = rpmInstallation.toMap();
    map['scriptRun'] = scriptRun.toMap();
    return map;
  }

  factory SoftwareRecipeStepResponse.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipeStepResponse(
      archiveExtraction: SoftwareRecipeStepExtractArchiveResponse.fromMap(
          (map['archiveExtraction'] as Map).cast<String, dynamic>()),
      dpkgInstallation: SoftwareRecipeStepInstallDpkgResponse.fromMap(
          (map['dpkgInstallation'] as Map).cast<String, dynamic>()),
      fileCopy: SoftwareRecipeStepCopyFileResponse.fromMap(
          (map['fileCopy'] as Map).cast<String, dynamic>()),
      fileExec: SoftwareRecipeStepExecFileResponse.fromMap(
          (map['fileExec'] as Map).cast<String, dynamic>()),
      msiInstallation: SoftwareRecipeStepInstallMsiResponse.fromMap(
          (map['msiInstallation'] as Map).cast<String, dynamic>()),
      rpmInstallation: SoftwareRecipeStepInstallRpmResponse.fromMap(
          (map['rpmInstallation'] as Map).cast<String, dynamic>()),
      scriptRun: SoftwareRecipeStepRunScriptResponse.fromMap(
          (map['scriptRun'] as Map).cast<String, dynamic>()),
    );
  }
}
