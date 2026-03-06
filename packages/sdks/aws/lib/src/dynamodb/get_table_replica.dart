// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTableReplica {
  final pulumi.Input<String> kmsKeyArn;
  final pulumi.Input<String> regionName;

  /// Creates a new [GetTableReplica].
  /// [kmsKeyArn] Required.
  /// [regionName] Required.
  const GetTableReplica({
    required this.kmsKeyArn,
    required this.regionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyArn': kmsKeyArn,
      'regionName': regionName,
    };
  }

  factory GetTableReplica.fromMap(Map<String, dynamic> map) {
    return GetTableReplica(
      kmsKeyArn: pulumi.Input.fromValue(map['kmsKeyArn'] as String),
      regionName: pulumi.Input.fromValue(map['regionName'] as String),
    );
  }
}

