// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alb_get_ascripts_get_ascripts_args_doc}
/// Arguments for getAscripts.
/// {@endtemplate}
/// {@macro pulumi_alb_get_ascripts_get_ascripts_args_doc}
class GetAscriptsArgs {
  /// Script name.
  final pulumi.Input<String>? ascriptName;
  final pulumi.Input<bool>? enableDetails;
  /// A list of AScript IDs.
  final pulumi.Input<List<String>>? ids;
  /// Listener ID of script attribution
  final pulumi.Input<String>? listenerId;
  /// A regex string to filter results by Group Metric Rule name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetAscriptsArgs].
  /// [ascriptName] Script name.
  /// [enableDetails] Optional.
  /// [ids] A list of AScript IDs.
  /// [listenerId] Listener ID of script attribution
  /// [nameRegex] A regex string to filter results by Group Metric Rule name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetAscriptsArgs({
    this.ascriptName,
    this.enableDetails,
    this.ids,
    this.listenerId,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ascriptName': ?ascriptName,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'listenerId': ?listenerId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetAscriptsArgs.fromMap(Map<String, dynamic> map) {
    return GetAscriptsArgs(
      ascriptName: map['ascriptName'] == null ? null : (map['ascriptName'] as String).input(),
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails'] as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      listenerId: map['listenerId'] == null ? null : (map['listenerId'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
    );
  }
}

