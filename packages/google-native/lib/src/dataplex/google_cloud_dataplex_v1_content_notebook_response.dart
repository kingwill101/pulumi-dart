// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for Notebook content.
class GoogleCloudDataplexV1ContentNotebookResponse {
  /// Kernel Type of the notebook.
  final String kernelType;

  /// Creates a new [GoogleCloudDataplexV1ContentNotebookResponse].
  /// [kernelType] Kernel Type of the notebook.
  GoogleCloudDataplexV1ContentNotebookResponse({
    required this.kernelType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kernelType'] = kernelType;
    return map;
  }

  factory GoogleCloudDataplexV1ContentNotebookResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1ContentNotebookResponse(
      kernelType: map['kernelType'] as String,
    );
  }
}
