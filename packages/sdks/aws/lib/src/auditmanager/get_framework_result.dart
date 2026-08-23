// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_framework_control_set.dart';

/// Result data returned by getFramework.
class GetFrameworkResult {
  /// ARN of the framework.
  final String arn;
  /// Compliance type that the framework supports.
  final String complianceType;
  /// Control sets associated with the framework.
  final List<GetFrameworkControlSet> controlSets;
  /// Description of the framework.
  final String description;
  final String frameworkType;
  /// Unique identifier for the framework.
  final String id;
  final String name;
  final String region;
  /// Map of tags assigned to the framework.
  final Map<String, String> tags;

  /// Creates a new [GetFrameworkResult].
  /// [arn] ARN of the framework.
  /// [complianceType] Compliance type that the framework supports.
  /// [controlSets] Control sets associated with the framework.
  /// [description] Description of the framework.
  /// [frameworkType] Required.
  /// [id] Unique identifier for the framework.
  /// [name] Required.
  /// [region] Required.
  /// [tags] Map of tags assigned to the framework.
  const GetFrameworkResult({
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
    return <String, dynamic>{
      'arn': arn,
      'complianceType': complianceType,
      'controlSets': pulumi.Input.encodeList<GetFrameworkControlSet, Map<String, dynamic>>(controlSets, (value) => value.toMap()),
      'description': description,
      'frameworkType': frameworkType,
      'id': id,
      'name': name,
      'region': region,
      'tags': tags,
    };
  }

  factory GetFrameworkResult.fromMap(Map<String, dynamic> map) {
    return GetFrameworkResult(
      arn: map['arn'] as String,
      complianceType: map['complianceType'] as String,
      controlSets: pulumi.Input.decodeList<GetFrameworkControlSet>(map['controlSets']!, (value) => GetFrameworkControlSet.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      frameworkType: map['frameworkType'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
