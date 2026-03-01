// ignore_for_file: unused_element, unnecessary_cast


/// Information about the impacted workload
class Workload {
  /// the scenario for the workload
  final String? context;
  /// Tool used to interact with Azure. SDK, AzPortal, etc.., Other
  final String? toolset;

  /// Creates a new [Workload].
  /// [context] the scenario for the workload
  /// [toolset] Tool used to interact with Azure. SDK, AzPortal, etc.., Other
  Workload({
    this.context,
    this.toolset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'context': ?context,
      'toolset': ?toolset,
    };
  }

  factory Workload.fromMap(Map<String, dynamic> map) {
    return Workload(
      context: map['context'] == null ? null : map['context'] as String,
      toolset: map['toolset'] == null ? null : map['toolset'] as String,
    );
  }
}

