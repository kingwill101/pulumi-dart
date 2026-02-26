// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_content_notebook_kernel_type.dart';

/// Configuration for Notebook content.
class GoogleCloudDataplexV1ContentNotebook {
  /// Kernel Type of the notebook.
  final GoogleCloudDataplexV1ContentNotebookKernelType kernelType;

  GoogleCloudDataplexV1ContentNotebook({
    required this.kernelType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kernelType'] = kernelType.value;
    return map;
  }

  factory GoogleCloudDataplexV1ContentNotebook.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1ContentNotebook(
      kernelType: GoogleCloudDataplexV1ContentNotebookKernelType.fromValue(
          map['kernelType'] as String),
    );
  }
}
