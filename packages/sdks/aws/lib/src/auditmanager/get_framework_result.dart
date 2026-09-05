// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_framework_control_set.dart';

/// Result data returned by getFramework.
class GetFrameworkResult {
  /// ARN of the framework.
  final String? arn;
  /// Compliance type that the framework supports.
  final String? complianceType;
  /// Control sets associated with the framework.
  final List<GetFrameworkControlSet>? controlSets;
  /// Description of the framework.
  final String? description;
  final String? frameworkType;
  /// Unique identifier for the framework.
  final String? id;
  final String? name;
  final String? region;
  /// Map of tags assigned to the framework.
  final Map<String, String>? tags;

  /// Creates a new [GetFrameworkResult].
  /// [arn] ARN of the framework.
  /// [complianceType] Compliance type that the framework supports.
  /// [controlSets] Control sets associated with the framework.
  /// [description] Description of the framework.
  /// [frameworkType] Optional.
  /// [id] Unique identifier for the framework.
  /// [name] Optional.
  /// [region] Optional.
  /// [tags] Map of tags assigned to the framework.
  const GetFrameworkResult({
    this.arn,
    this.complianceType,
    this.controlSets,
    this.description,
    this.frameworkType,
    this.id,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'complianceType': ?complianceType,
      'controlSets': ?(() { final guardedValue = controlSets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFrameworkControlSet, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'description': ?description,
      'frameworkType': ?frameworkType,
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetFrameworkResult.fromMap(Map<String, dynamic> map) {
    return GetFrameworkResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      complianceType: (() { final guardedValue = map['complianceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      controlSets: (() { final guardedValue = map['controlSets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFrameworkControlSet>(guardedValue, (value) => GetFrameworkControlSet.fromMap((value as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      frameworkType: (() { final guardedValue = map['frameworkType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
