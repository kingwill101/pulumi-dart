// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_framework_control_set/get_framework_control_set.dart';

/// Result data returned by getFramework.
class GetFrameworkResult {
  final String arn;
  final String complianceType;
  final List<GetFrameworkControlSet> controlSets;
  final String description;
  final String frameworkType;
  final String id;
  final String name;
  final String region;
  final Map<String, String> tags;

  GetFrameworkResult({
    required this.arn,
    required this.complianceType,
    required this.controlSets,
    required this.description,
    required this.frameworkType,
    required this.id,
    required this.name,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['complianceType'] = complianceType;
    map['controlSets'] =
        pulumi.Input.encodeList<GetFrameworkControlSet, Map<String, dynamic>>(
            controlSets, (value) => value.toMap());
    map['description'] = description;
    map['frameworkType'] = frameworkType;
    map['id'] = id;
    map['name'] = name;
    map['region'] = region;
    map['tags'] = tags;
    return map;
  }

  factory GetFrameworkResult.fromMap(Map<String, dynamic> map) {
    return GetFrameworkResult(
      arn: map['arn'] as String,
      complianceType: map['complianceType'] as String,
      controlSets: pulumi.Input.decodeList<GetFrameworkControlSet>(
          map['controlSets'],
          (value) => GetFrameworkControlSet.fromMap(
              (value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      frameworkType: map['frameworkType'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
