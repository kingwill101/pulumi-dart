// ignore_for_file: unused_element, unnecessary_cast

class ClusteringResponse {
  /// [Repeated] One or more fields on which data should be clustered. Only top-level, non-repeated, simple-type fields are supported. When you cluster a table using multiple columns, the order of columns you specify is important. The order of the specified columns determines the sort order of the data.
  final List<String> fields;

  ClusteringResponse({
    required this.fields,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fields'] = fields;
    return map;
  }

  factory ClusteringResponse.fromMap(Map<String, dynamic> map) {
    return ClusteringResponse(
      fields: (map['fields'] as List).cast<String>(),
    );
  }
}
