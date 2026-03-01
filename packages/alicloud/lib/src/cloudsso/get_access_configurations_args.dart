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
    required String directoryId,
    bool? enableDetails,
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
  }) :
      directoryId = pulumi.Input.asInput<String>(directoryId),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

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
      directoryId: map['directoryId'] as String,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

