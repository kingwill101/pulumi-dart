// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GlobalTableReplica {
  /// AWS region name of replica DynamoDB TableE.g., `us-east-1`
  final pulumi.Input<String> regionName;

  /// Creates a new [GlobalTableReplica].
  /// [regionName] AWS region name of replica DynamoDB TableE.g., `us-east-1`
  const GlobalTableReplica({
    required this.regionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regionName': regionName,
    };
  }

  factory GlobalTableReplica.fromMap(Map<String, dynamic> map) {
    return GlobalTableReplica(
      regionName: pulumi.Input.fromValue(map['regionName'] as String),
    );
  }
}

