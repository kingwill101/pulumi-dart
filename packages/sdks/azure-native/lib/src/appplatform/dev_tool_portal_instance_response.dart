// ignore_for_file: unused_element, unnecessary_cast


/// Collection of instances belong to the Dev Tool Portal.
class DevToolPortalInstanceResponse {
  /// Name of the Dev Tool Portal instance.
  final String name;
  /// Status of the Dev Tool Portal instance. It can be Pending, Running, Succeeded, Failed, Unknown.
  final String status;

  /// Creates a new [DevToolPortalInstanceResponse].
  /// [name] Name of the Dev Tool Portal instance.
  /// [status] Status of the Dev Tool Portal instance. It can be Pending, Running, Succeeded, Failed, Unknown.
  DevToolPortalInstanceResponse({
    required this.name,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'status': status,
    };
  }

  factory DevToolPortalInstanceResponse.fromMap(Map<String, dynamic> map) {
    return DevToolPortalInstanceResponse(
      name: map['name'] as String,
      status: map['status'] as String,
    );
  }
}

