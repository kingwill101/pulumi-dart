// ignore_for_file: unused_element, unnecessary_cast


/// The properties of business process stage.
class BusinessProcessStage {
  /// The description of the business stage.
  final String? description;
  /// The properties within the properties of the business process stage.
  final Map<String, String>? properties;
  /// The property to keep track of stages before current in the business process stage.
  final List<String>? stagesBefore;

  /// Creates a new [BusinessProcessStage].
  /// [description] The description of the business stage.
  /// [properties] The properties within the properties of the business process stage.
  /// [stagesBefore] The property to keep track of stages before current in the business process stage.
  BusinessProcessStage({
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
      description: map['description'] == null ? null : map['description'] as String,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      stagesBefore: map['stagesBefore'] == null ? null : (map['stagesBefore'] as List).cast<String>(),
    );
  }
}

