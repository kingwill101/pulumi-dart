// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of business process stage.
class BusinessProcessStageResponse {
  /// The description of the business stage.
  final pulumi.Input<String>? description;
  /// The properties within the properties of the business process stage.
  final pulumi.Input<Map<String, String>>? properties;
  /// The property to keep track of stages before current in the business process stage.
  final pulumi.Input<List<String>>? stagesBefore;

  /// Creates a new [BusinessProcessStageResponse].
  /// [description] The description of the business stage.
  /// [properties] The properties within the properties of the business process stage.
  /// [stagesBefore] The property to keep track of stages before current in the business process stage.
  BusinessProcessStageResponse({
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

  factory BusinessProcessStageResponse.fromMap(Map<String, dynamic> map) {
    return BusinessProcessStageResponse(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      properties: map['properties'] == null ? null : ((map['properties']! as Map).cast<String, String>()).input(),
      stagesBefore: map['stagesBefore'] == null ? null : ((map['stagesBefore']! as List).cast<String>()).input(),
    );
  }
}

