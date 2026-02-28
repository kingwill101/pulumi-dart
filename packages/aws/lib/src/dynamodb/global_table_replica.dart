// ignore_for_file: unused_element, unnecessary_cast


class GlobalTableReplica {
  /// AWS region name of replica DynamoDB TableE.g., `us-east-1`
  final String regionName;

  /// Creates a new [GlobalTableReplica].
  /// [regionName] AWS region name of replica DynamoDB TableE.g., `us-east-1`
  GlobalTableReplica({
    required this.regionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regionName': regionName,
    };
  }

  factory GlobalTableReplica.fromMap(Map<String, dynamic> map) {
    return GlobalTableReplica(
      regionName: map['regionName'] as String,
    );
  }
}

