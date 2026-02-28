// ignore_for_file: unused_element, unnecessary_cast

/// Payload file for inline import job payload.
class PayloadFile {
  /// The file data.
  final String? data;

  /// The file name.
  final String? name;

  /// Creates a new [PayloadFile].
  /// [data] The file data.
  /// [name] The file name.
  PayloadFile({
    this.data,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataValue = data;
    if (dataValue != null) {
      map['data'] = dataValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory PayloadFile.fromMap(Map<String, dynamic> map) {
    return PayloadFile(
      data: map['data'] == null ? null : map['data'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
