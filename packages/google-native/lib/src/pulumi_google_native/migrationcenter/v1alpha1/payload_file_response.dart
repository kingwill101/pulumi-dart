// ignore_for_file: unused_element, unnecessary_cast

/// Payload file for inline import job payload.
class PayloadFileResponse {
  /// The file data.
  final String data;

  /// The file name.
  final String name;

  PayloadFileResponse({
    required this.data,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['data'] = data;
    map['name'] = name;
    return map;
  }

  factory PayloadFileResponse.fromMap(Map<String, dynamic> map) {
    return PayloadFileResponse(
      data: map['data'] as String,
      name: map['name'] as String,
    );
  }
}
