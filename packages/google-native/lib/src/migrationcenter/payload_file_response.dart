// ignore_for_file: unused_element, unnecessary_cast


/// Payload file for inline import job payload.
class PayloadFileResponse {
  /// The file data.
  final String data;
  /// The file name.
  final String name;

  /// Creates a new [PayloadFileResponse].
  /// [data] The file data.
  /// [name] The file name.
  PayloadFileResponse({
    required this.data,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data,
      'name': name,
    };
  }

  factory PayloadFileResponse.fromMap(Map<String, dynamic> map) {
    return PayloadFileResponse(
      data: map['data'] as String,
      name: map['name'] as String,
    );
  }
}

