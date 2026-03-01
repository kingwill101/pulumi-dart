// ignore_for_file: unused_element, unnecessary_cast


/// The folder that this data flow is in. If not specified, Data flow will appear at the root level.
class DataFlowFolder {
  /// The name of the folder that this data flow is in.
  final String? name;

  /// Creates a new [DataFlowFolder].
  /// [name] The name of the folder that this data flow is in.
  DataFlowFolder({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory DataFlowFolder.fromMap(Map<String, dynamic> map) {
    return DataFlowFolder(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

