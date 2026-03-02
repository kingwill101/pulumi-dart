// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudsso_get_access_configurations_get_access_configurations_args_doc}
/// Arguments for getAccessConfigurations.
/// {@endtemplate}
/// {@macro pulumi_cloudsso_get_access_configurations_get_access_configurations_args_doc}
class GetAccessConfigurationsArgs {
  /// The ID of the Directory.
  final pulumi.Input<String> directoryId;
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Access Configuration IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Access Configuration name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetAccessConfigurationsArgs].
  /// [directoryId] The ID of the Directory.
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Access Configuration IDs.
  /// [nameRegex] A regex string to filter results by Access Configuration name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetAccessConfigurationsArgs({
    required this.directoryId,
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directoryId': directoryId,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetAccessConfigurationsArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessConfigurationsArgs(
      directoryId: (map['directoryId'] as String).input(),
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails']! as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
    );
  }
}

