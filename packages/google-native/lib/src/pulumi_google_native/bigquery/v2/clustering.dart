// ignore_for_file: unused_element, unnecessary_cast

class Clustering {
  /// [Repeated] One or more fields on which data should be clustered. Only top-level, non-repeated, simple-type fields are supported. When you cluster a table using multiple columns, the order of columns you specify is important. The order of the specified columns determines the sort order of the data.
  final List<String>? fields;

  Clustering({
    this.fields,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldsValue = fields;
    if (fieldsValue != null) {
      map['fields'] = fieldsValue;
    }
    return map;
  }

  factory Clustering.fromMap(Map<String, dynamic> map) {
    return Clustering(
      fields:
          map['fields'] == null ? null : (map['fields'] as List).cast<String>(),
    );
  }
}
