// ignore_for_file: unused_element, unnecessary_cast

class GetTableGlobalSecondaryIndexOnDemandThroughput {
  final int maxReadRequestUnits;
  final int maxWriteRequestUnits;

  /// Creates a new [GetTableGlobalSecondaryIndexOnDemandThroughput].
  /// [maxReadRequestUnits] Required.
  /// [maxWriteRequestUnits] Required.
  GetTableGlobalSecondaryIndexOnDemandThroughput({
    required this.maxReadRequestUnits,
    required this.maxWriteRequestUnits,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxReadRequestUnits'] = maxReadRequestUnits;
    map['maxWriteRequestUnits'] = maxWriteRequestUnits;
    return map;
  }

  factory GetTableGlobalSecondaryIndexOnDemandThroughput.fromMap(
      Map<String, dynamic> map) {
    return GetTableGlobalSecondaryIndexOnDemandThroughput(
      maxReadRequestUnits: map['maxReadRequestUnits'] as int,
      maxWriteRequestUnits: map['maxWriteRequestUnits'] as int,
    );
  }
}
