// ignore_for_file: unused_element, unnecessary_cast


class FlowletDataFlowTransformationDataset {
  /// The name for the Data Factory Dataset.
  final String name;
  /// A map of parameters to associate with the Data Factory dataset.
  final Map<String, String>? parameters;

  /// Creates a new [FlowletDataFlowTransformationDataset].
  /// [name] The name for the Data Factory Dataset.
  /// [parameters] A map of parameters to associate with the Data Factory dataset.
  FlowletDataFlowTransformationDataset({
    required this.name,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': ?parameters,
    };
  }

  factory FlowletDataFlowTransformationDataset.fromMap(Map<String, dynamic> map) {
    return FlowletDataFlowTransformationDataset(
      name: map['name'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
    );
  }
}

