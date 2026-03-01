// ignore_for_file: unused_element, unnecessary_cast


class FlowletDataFlowSourceRejectedLinkedService {
  /// The name for the Data Factory Linked Service with schema.
  final String name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  final Map<String, String>? parameters;

  /// Creates a new [FlowletDataFlowSourceRejectedLinkedService].
  /// [name] The name for the Data Factory Linked Service with schema.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service.
  FlowletDataFlowSourceRejectedLinkedService({
    required this.name,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': ?parameters,
    };
  }

  factory FlowletDataFlowSourceRejectedLinkedService.fromMap(Map<String, dynamic> map) {
    return FlowletDataFlowSourceRejectedLinkedService(
      name: map['name'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
    );
  }
}

