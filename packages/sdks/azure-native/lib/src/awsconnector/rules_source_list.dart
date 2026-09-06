// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of RulesSourceList
class RulesSourceList {
  /// Property generatedRulesType
  final pulumi.Input<dynamic>? generatedRulesType;
  /// Property targetTypes
  final pulumi.Input<List<String>?>? targetTypes;
  /// Property targets
  final pulumi.Input<List<String>?>? targets;

  /// Creates a new [RulesSourceList].
  /// [generatedRulesType] Property generatedRulesType
  /// [targetTypes] Property targetTypes
  /// [targets] Property targets
  const RulesSourceList({
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

  factory RulesSourceList.fromMap(Map<String, dynamic> map) {
    return RulesSourceList(
      generatedRulesType: (() { final guardedValue = map['generatedRulesType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      targetTypes: (() { final guardedValue = map['targetTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      targets: (() { final guardedValue = map['targets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
