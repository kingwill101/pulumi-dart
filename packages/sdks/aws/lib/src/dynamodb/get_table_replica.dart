// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTableReplica {
  final pulumi.Input<String> kmsKeyArn;
  final pulumi.Input<String> regionName;

  /// Creates a new [GetTableReplica].
  /// [kmsKeyArn] Required.
  /// [regionName] Required.
  GetTableReplica({
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
      kmsKeyArn: (map['kmsKeyArn'] as String).input(),
      regionName: (map['regionName'] as String).input(),
    );
  }
}

