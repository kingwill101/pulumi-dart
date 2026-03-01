// ignore_for_file: unused_element, unnecessary_cast


/// The data source precedence is a way to know the precedence of each data source.
class DataSourcePrecedenceResponse {
  /// The data source reference id.
  final String dataSourceReferenceId;
  /// The data source type.
  final String dataSourceType;
  /// The data source ID.
  final int id;
  /// The data source name
  final String name;
  /// the precedence value.
  final int? precedence;
  /// The data source status.
  final String status;

  /// Creates a new [DataSourcePrecedenceResponse].
  /// [dataSourceReferenceId] The data source reference id.
  /// [dataSourceType] The data source type.
  /// [id] The data source ID.
  /// [name] The data source name
  /// [precedence] the precedence value.
  /// [status] The data source status.
  DataSourcePrecedenceResponse({
    required this.dataSourceReferenceId,
    required this.dataSourceType,
    required this.id,
    required this.name,
    this.precedence,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceReferenceId': dataSourceReferenceId,
      'dataSourceType': dataSourceType,
      'id': id,
      'name': name,
      'precedence': ?precedence,
      'status': status,
    };
  }

  factory DataSourcePrecedenceResponse.fromMap(Map<String, dynamic> map) {
    return DataSourcePrecedenceResponse(
      dataSourceReferenceId: map['dataSourceReferenceId'] as String,
      dataSourceType: map['dataSourceType'] as String,
      id: map['id'] as int,
      name: map['name'] as String,
      precedence: map['precedence'] == null ? null : map['precedence'] as int,
      status: map['status'] as String,
    );
  }
}

