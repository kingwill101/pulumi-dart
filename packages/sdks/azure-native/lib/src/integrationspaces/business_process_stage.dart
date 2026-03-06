// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of business process stage.
class BusinessProcessStage {
  /// The description of the business stage.
  final pulumi.Input<String>? description;
  /// The properties within the properties of the business process stage.
  final pulumi.Input<Map<String, String>>? properties;
  /// The property to keep track of stages before current in the business process stage.
  final pulumi.Input<List<String>>? stagesBefore;

  /// Creates a new [BusinessProcessStage].
  /// [description] The description of the business stage.
  /// [properties] The properties within the properties of the business process stage.
  /// [stagesBefore] The property to keep track of stages before current in the business process stage.
  const BusinessProcessStage({
    this.description,
    this.properties,
    this.stagesBefore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'properties': ?properties,
      'stagesBefore': ?stagesBefore,
    };
  }

  factory BusinessProcessStage.fromMap(Map<String, dynamic> map) {
    return BusinessProcessStage(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      stagesBefore: (() { final guardedValue = map['stagesBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

