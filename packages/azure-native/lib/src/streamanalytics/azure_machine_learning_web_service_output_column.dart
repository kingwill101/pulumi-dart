// ignore_for_file: unused_element, unnecessary_cast


/// Describes an output column for the Azure Machine Learning web service endpoint.
class AzureMachineLearningWebServiceOutputColumn {
  /// The (Azure Machine Learning supported) data type of the output column. A list of valid  Azure Machine Learning data types are described at https://msdn.microsoft.com/en-us/library/azure/dn905923.aspx .
  final String? dataType;
  /// The name of the output column.
  final String? name;

  /// Creates a new [AzureMachineLearningWebServiceOutputColumn].
  /// [dataType] The (Azure Machine Learning supported) data type of the output column. A list of valid  Azure Machine Learning data types are described at https://msdn.microsoft.com/en-us/library/azure/dn905923.aspx .
  /// [name] The name of the output column.
  AzureMachineLearningWebServiceOutputColumn({
    this.dataType,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': ?dataType,
      'name': ?name,
    };
  }

  factory AzureMachineLearningWebServiceOutputColumn.fromMap(Map<String, dynamic> map) {
    return AzureMachineLearningWebServiceOutputColumn(
      dataType: map['dataType'] == null ? null : map['dataType'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

