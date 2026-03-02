// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_threatdetection_get_honeypot_probes_get_honeypot_probes_args_doc}
/// Arguments for getHoneypotProbes.
/// {@endtemplate}
/// {@macro pulumi_threatdetection_get_honeypot_probes_get_honeypot_probes_args_doc}
class GetHoneypotProbesArgs {
  /// Probe name
  final pulumi.Input<String>? displayName;
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Honeypot Probe IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by display name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<String>? probeStatus;
  /// Probe type
  final pulumi.Input<String>? probeType;

  /// Creates a new [GetHoneypotProbesArgs].
  /// [displayName] Probe name
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Honeypot Probe IDs.
  /// [nameRegex] A regex string to filter results by display name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [probeStatus] Optional.
  /// [probeType] Probe type
  GetHoneypotProbesArgs({
    this.displayName,
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.probeStatus,
    this.probeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'probeStatus': ?probeStatus,
      'probeType': ?probeType,
    };
  }

  factory GetHoneypotProbesArgs.fromMap(Map<String, dynamic> map) {
    return GetHoneypotProbesArgs(
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails']! as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      probeStatus: map['probeStatus'] == null ? null : (map['probeStatus']! as String).input(),
      probeType: map['probeType'] == null ? null : (map['probeType']! as String).input(),
    );
  }
}

