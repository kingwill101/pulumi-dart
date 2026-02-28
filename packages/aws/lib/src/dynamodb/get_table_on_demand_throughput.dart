// ignore_for_file: unused_element, unnecessary_cast

class GetTableOnDemandThroughput {
  final int maxReadRequestUnits;
  final int maxWriteRequestUnits;

  /// Creates a new [GetTableOnDemandThroughput].
  /// [maxReadRequestUnits] Required.
  /// [maxWriteRequestUnits] Required.
  GetTableOnDemandThroughput({
    required this.maxReadRequestUnits,
    required this.maxWriteRequestUnits,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxReadRequestUnits'] = maxReadRequestUnits;
    map['maxWriteRequestUnits'] = maxWriteRequestUnits;
    return map;
  }

  factory GetTableOnDemandThroughput.fromMap(Map<String, dynamic> map) {
    return GetTableOnDemandThroughput(
      maxReadRequestUnits: map['maxReadRequestUnits'] as int,
      maxWriteRequestUnits: map['maxWriteRequestUnits'] as int,
    );
  }
}
