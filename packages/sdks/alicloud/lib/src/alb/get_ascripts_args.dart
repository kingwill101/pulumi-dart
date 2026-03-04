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
      ascriptName: (() {
        final guardedValue = map['ascriptName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      listenerId: (() {
        final guardedValue = map['listenerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
