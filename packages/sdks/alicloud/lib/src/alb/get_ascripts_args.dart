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
    pulumi.Output<String>? ascriptName,
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? listenerId,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
  }) :
      ascriptName = pulumi.Input.asOptionalInput<String>(ascriptName),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      listenerId = pulumi.Input.asOptionalInput<String>(listenerId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

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
      ascriptName: map['ascriptName'] == null ? null : pulumi.Output.create<String>(map['ascriptName'] as String),
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      listenerId: map['listenerId'] == null ? null : pulumi.Output.create<String>(map['listenerId'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

