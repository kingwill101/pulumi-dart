// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'gclb_target_response.dart';

/// Result data returned by getCertificateMap.
class GetCertificateMapResult {
  /// The creation timestamp of a Certificate Map.
  final String createTime;

  /// One or more paragraphs of text description of a certificate map.
  final String description;

  /// A list of GCLB targets that use this Certificate Map. A Target Proxy is only present on this list if it's attached to a Forwarding Rule.
  final List<GclbTargetResponse> gclbTargets;

  /// Set of labels associated with a Certificate Map.
  final Map<String, String> labels;

  /// A user-defined name of the Certificate Map. Certificate Map names must be unique globally and match pattern `projects/*/locations/*/certificateMaps/*`.
  final String name;

  /// The update timestamp of a Certificate Map.
  final String updateTime;

  GetCertificateMapResult({
    required this.createTime,
    required this.description,
    required this.gclbTargets,
    required this.labels,
    required this.name,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['gclbTargets'] =
        Input.encodeList<GclbTargetResponse, Map<String, dynamic>>(
            gclbTargets, (value) => value.toMap());
    map['labels'] = labels;
    map['name'] = name;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetCertificateMapResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateMapResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      gclbTargets: Input.decodeList<GclbTargetResponse>(
          map['gclbTargets'],
          (value) => GclbTargetResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
