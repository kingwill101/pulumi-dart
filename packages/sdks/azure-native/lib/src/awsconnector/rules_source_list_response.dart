// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of RulesSourceList
class RulesSourceListResponse {
  /// Property generatedRulesType
  final pulumi.Input<String?>? generatedRulesType;
  /// Property targetTypes
  final pulumi.Input<List<String>?>? targetTypes;
  /// Property targets
  final pulumi.Input<List<String>?>? targets;

  /// Creates a new [RulesSourceListResponse].
  /// [generatedRulesType] Property generatedRulesType
  /// [targetTypes] Property targetTypes
  /// [targets] Property targets
  const RulesSourceListResponse({
    this.generatedRulesType,
    this.targetTypes,
    this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'generatedRulesType': ?generatedRulesType,
      'targetTypes': ?targetTypes,
      'targets': ?targets,
    };
  }

  factory RulesSourceListResponse.fromMap(Map<String, dynamic> map) {
    return RulesSourceListResponse(
      generatedRulesType: (() { final guardedValue = map['generatedRulesType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetTypes: (() { final guardedValue = map['targetTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      targets: (() { final guardedValue = map['targets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
