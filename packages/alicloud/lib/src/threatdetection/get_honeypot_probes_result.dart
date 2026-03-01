// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_honeypot_probes_probe.dart';

/// Result data returned by getHoneypotProbes.
class GetHoneypotProbesResult {
  /// Probe name.
  final String? displayName;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Honeypot Probe IDs.
  final List<String> ids;
  final String? nameRegex;
  final String? outputFile;
  final String? probeStatus;
  /// Probe type, support `host_probe` and `vpc_black_hole_probe`.
  final String? probeType;
  /// A list of Honeypot Probe Entries. Each element contains the following attributes:
  final List<GetHoneypotProbesProbe> probes;

  /// Creates a new [GetHoneypotProbesResult].
  /// [displayName] Probe name.
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Honeypot Probe IDs.
  /// [nameRegex] Optional.
  /// [outputFile] Optional.
  /// [probeStatus] Optional.
  /// [probeType] Probe type, support `host_probe` and `vpc_black_hole_probe`.
  /// [probes] A list of Honeypot Probe Entries. Each element contains the following attributes:
  GetHoneypotProbesResult({
    this.displayName,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.nameRegex,
    this.outputFile,
    this.probeStatus,
    this.probeType,
    required this.probes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'probeStatus': ?probeStatus,
      'probeType': ?probeType,
      'probes': pulumi.Input.encodeList<GetHoneypotProbesProbe, Map<String, dynamic>>(probes, (value) => value.toMap()),
    };
  }

  factory GetHoneypotProbesResult.fromMap(Map<String, dynamic> map) {
    return GetHoneypotProbesResult(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      probeStatus: map['probeStatus'] == null ? null : map['probeStatus'] as String,
      probeType: map['probeType'] == null ? null : map['probeType'] as String,
      probes: pulumi.Input.decodeList<GetHoneypotProbesProbe>(map['probes'], (value) => GetHoneypotProbesProbe.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

