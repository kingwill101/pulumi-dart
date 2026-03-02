// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of RulesSourceList
class RulesSourceList {
  /// Property generatedRulesType
  final pulumi.Input<String>? generatedRulesType;
  /// Property targetTypes
  final pulumi.Input<List<String>>? targetTypes;
  /// Property targets
  final pulumi.Input<List<String>>? targets;

  /// Creates a new [RulesSourceList].
  /// [generatedRulesType] Property generatedRulesType
  /// [targetTypes] Property targetTypes
  /// [targets] Property targets
  RulesSourceList({
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
      generatedRulesType: map['generatedRulesType'] == null ? null : (map['generatedRulesType'] as String).input(),
      targetTypes: map['targetTypes'] == null ? null : ((map['targetTypes'] as List).cast<String>()).input(),
      targets: map['targets'] == null ? null : ((map['targets'] as List).cast<String>()).input(),
    );
  }
}

