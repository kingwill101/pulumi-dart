// ignore_for_file: unused_element, unnecessary_cast

/// [Private Service Connect connectivity](https://cloud.google.com/vpc/docs/private-service-connect#service-attachments)
class PrivateServiceConnectConnectivityResponse {
  /// A service attachment that exposes a database, and has the following format: projects/{project}/regions/{region}/serviceAttachments/{service_attachment_name}
  final String serviceAttachment;

  PrivateServiceConnectConnectivityResponse({
    required this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['serviceAttachment'] = serviceAttachment;
    return map;
  }

  factory PrivateServiceConnectConnectivityResponse.fromMap(
      Map<String, dynamic> map) {
    return PrivateServiceConnectConnectivityResponse(
      serviceAttachment: map['serviceAttachment'] as String,
    );
  }
}
