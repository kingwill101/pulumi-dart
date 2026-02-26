// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_certificate_map_gclb_target/get_certificate_map_gclb_target.dart';

/// Result data returned by getCertificateMap.
class GetCertificateMapResult {
  final String createTime;
  final String description;
  final Map<String, String> effectiveLabels;
  final List<GetCertificateMapGclbTarget> gclbTargets;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final Map<String, String> labels;
  final String name;
  final String? project;
  final Map<String, String> pulumiLabels;
  final String updateTime;

  GetCertificateMapResult({
    required this.createTime,
    required this.description,
    required this.effectiveLabels,
    required this.gclbTargets,
    required this.id,
    required this.labels,
    required this.name,
    this.project,
    required this.pulumiLabels,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['effectiveLabels'] = effectiveLabels;
    map['gclbTargets'] =
        Input.encodeList<GetCertificateMapGclbTarget, Map<String, dynamic>>(
            gclbTargets, (value) => value.toMap());
    map['id'] = id;
    map['labels'] = labels;
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pulumiLabels'] = pulumiLabels;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetCertificateMapResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateMapResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      gclbTargets: Input.decodeList<GetCertificateMapGclbTarget>(
          map['gclbTargets'],
          (value) => GetCertificateMapGclbTarget.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      updateTime: map['updateTime'] as String,
    );
  }
}
