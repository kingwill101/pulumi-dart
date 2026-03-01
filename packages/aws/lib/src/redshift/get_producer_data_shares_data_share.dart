// ignore_for_file: unused_element, unnecessary_cast


class GetProducerDataSharesDataShare {
  /// ARN (Amazon Resource Name) of the data share.
  final String dataShareArn;
  /// Identifier of a datashare to show its managing entity.
  final String managedBy;
  /// Amazon Resource Name (ARN) of the producer namespace that returns in the list of datashares.
  ///
  /// The following arguments are optional:
  final String producerArn;

  /// Creates a new [GetProducerDataSharesDataShare].
  /// [dataShareArn] ARN (Amazon Resource Name) of the data share.
  /// [managedBy] Identifier of a datashare to show its managing entity.
  /// [producerArn] Amazon Resource Name (ARN) of the producer namespace that returns in the list of datashares.
  GetProducerDataSharesDataShare({
    required this.dataShareArn,
    required this.managedBy,
    required this.producerArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataShareArn': dataShareArn,
      'managedBy': managedBy,
      'producerArn': producerArn,
    };
  }

  factory GetProducerDataSharesDataShare.fromMap(Map<String, dynamic> map) {
    return GetProducerDataSharesDataShare(
      dataShareArn: map['dataShareArn'] as String,
      managedBy: map['managedBy'] as String,
      producerArn: map['producerArn'] as String,
    );
  }
}

