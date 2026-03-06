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
  const GetHoneypotProbesArgs({
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
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      probeStatus: (() { final guardedValue = map['probeStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      probeType: (() { final guardedValue = map['probeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

