// ignore_for_file: unused_element, unnecessary_cast

/// A Synthetic Monitor deployed to a Cloud Functions V2 instance.
class CloudFunctionV2Target {
  /// Fully qualified GCFv2 resource name i.e. projects/{project}/locations/{location}/functions/{function} Required.
  final String name;

  CloudFunctionV2Target({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory CloudFunctionV2Target.fromMap(Map<String, dynamic> map) {
    return CloudFunctionV2Target(
      name: map['name'] as String,
    );
  }
}
