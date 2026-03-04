// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetProducerDataSharesDataShare {
  /// ARN (Amazon Resource Name) of the data share.
  final pulumi.Input<String> dataShareArn;

  /// Identifier of a datashare to show its managing entity.
  final pulumi.Input<String> managedBy;

  /// Amazon Resource Name (ARN) of the producer namespace that returns in the list of datashares.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> producerArn;

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
      dataShareArn: pulumi.Input.fromValue(map['dataShareArn'] as String),
      managedBy: pulumi.Input.fromValue(map['managedBy'] as String),
      producerArn: pulumi.Input.fromValue(map['producerArn'] as String),
    );
  }
}
