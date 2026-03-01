// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_content_notebook_kernel_type.dart';

/// Configuration for Notebook content.
class GoogleCloudDataplexV1ContentNotebook {
  /// Kernel Type of the notebook.
  final GoogleCloudDataplexV1ContentNotebookKernelType kernelType;

  /// Creates a new [GoogleCloudDataplexV1ContentNotebook].
  /// [kernelType] Kernel Type of the notebook.
  GoogleCloudDataplexV1ContentNotebook({required this.kernelType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kernelType': kernelType.value};
  }

  factory GoogleCloudDataplexV1ContentNotebook.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDataplexV1ContentNotebook(
      kernelType: GoogleCloudDataplexV1ContentNotebookKernelType.fromValue(
        map['kernelType'] as String,
      ),
    );
  }
}
