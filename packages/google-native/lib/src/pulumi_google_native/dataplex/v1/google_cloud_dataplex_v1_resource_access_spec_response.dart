// ignore_for_file: unused_element, unnecessary_cast

/// ResourceAccessSpec holds the access control configuration to be enforced on the resources, for example, Cloud Storage bucket, BigQuery dataset, BigQuery table.
class GoogleCloudDataplexV1ResourceAccessSpecResponse {
  /// Optional. The set of principals to be granted owner role on the resource.
  final List<String> owners;

  /// Optional. The format of strings follows the pattern followed by IAM in the bindings. user:{email}, serviceAccount:{email} group:{email}. The set of principals to be granted reader role on the resource.
  final List<String> readers;

  /// Optional. The set of principals to be granted writer role on the resource.
  final List<String> writers;

  GoogleCloudDataplexV1ResourceAccessSpecResponse({
    required this.owners,
    required this.readers,
    required this.writers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['owners'] = owners;
    map['readers'] = readers;
    map['writers'] = writers;
    return map;
  }

  factory GoogleCloudDataplexV1ResourceAccessSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1ResourceAccessSpecResponse(
      owners: (map['owners'] as List).cast<String>(),
      readers: (map['readers'] as List).cast<String>(),
      writers: (map['writers'] as List).cast<String>(),
    );
  }
}
