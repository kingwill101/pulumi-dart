// ignore_for_file: unused_element, unnecessary_cast


/// A Synthetic Monitor deployed to a Cloud Functions V2 instance.
class CloudFunctionV2Target {
  /// Fully qualified GCFv2 resource name i.e. projects/{project}/locations/{location}/functions/{function} Required.
  final String name;

  /// Creates a new [CloudFunctionV2Target].
  /// [name] Fully qualified GCFv2 resource name i.e. projects/{project}/locations/{location}/functions/{function} Required.
  CloudFunctionV2Target({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory CloudFunctionV2Target.fromMap(Map<String, dynamic> map) {
    return CloudFunctionV2Target(
      name: map['name'] as String,
    );
  }
}

