// ignore_for_file: unused_element, unnecessary_cast

class GetDataSharesDataShare {
  /// ARN (Amazon Resource Name) of the data share.
  final String dataShareArn;

  /// Identifier of a datashare to show its managing entity.
  final String managedBy;

  /// ARN (Amazon Resource Name) of the producer.
  final String producerArn;

  GetDataSharesDataShare({
    required this.dataShareArn,
    required this.managedBy,
    required this.producerArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataShareArn'] = dataShareArn;
    map['managedBy'] = managedBy;
    map['producerArn'] = producerArn;
    return map;
  }

  factory GetDataSharesDataShare.fromMap(Map<String, dynamic> map) {
    return GetDataSharesDataShare(
      dataShareArn: map['dataShareArn'] as String,
      managedBy: map['managedBy'] as String,
      producerArn: map['producerArn'] as String,
    );
  }
}
