/// Required. Kernel Type of the notebook.
enum GoogleCloudDataplexV1ContentNotebookKernelType {
  kernelTypeUnspecified("KERNEL_TYPE_UNSPECIFIED"),
  python3("PYTHON3");

  const GoogleCloudDataplexV1ContentNotebookKernelType(this.value);
  final String value;

  static GoogleCloudDataplexV1ContentNotebookKernelType fromValue(
      String value) {
    for (final item in GoogleCloudDataplexV1ContentNotebookKernelType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudDataplexV1ContentNotebookKernelType value: $value');
  }
}
