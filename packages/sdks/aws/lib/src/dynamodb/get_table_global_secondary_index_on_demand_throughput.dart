// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTableGlobalSecondaryIndexOnDemandThroughput {
  final pulumi.Input<int> maxReadRequestUnits;
  final pulumi.Input<int> maxWriteRequestUnits;

  /// Creates a new [GetTableGlobalSecondaryIndexOnDemandThroughput].
  /// [maxReadRequestUnits] Required.
  /// [maxWriteRequestUnits] Required.
  GetTableGlobalSecondaryIndexOnDemandThroughput({
    required this.maxReadRequestUnits,
    required this.maxWriteRequestUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxReadRequestUnits': maxReadRequestUnits,
      'maxWriteRequestUnits': maxWriteRequestUnits,
    };
  }

  factory GetTableGlobalSecondaryIndexOnDemandThroughput.fromMap(Map<String, dynamic> map) {
    return GetTableGlobalSecondaryIndexOnDemandThroughput(
      maxReadRequestUnits: pulumi.Input.fromValue(map['maxReadRequestUnits'] as int),
      maxWriteRequestUnits: pulumi.Input.fromValue(map['maxWriteRequestUnits'] as int),
    );
  }
}

