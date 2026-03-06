// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataSharesDataShare {
  /// ARN (Amazon Resource Name) of the data share.
  final pulumi.Input<String> dataShareArn;
  /// Identifier of a datashare to show its managing entity.
  final pulumi.Input<String> managedBy;
  /// ARN (Amazon Resource Name) of the producer.
  final pulumi.Input<String> producerArn;

  /// Creates a new [GetDataSharesDataShare].
  /// [dataShareArn] ARN (Amazon Resource Name) of the data share.
  /// [managedBy] Identifier of a datashare to show its managing entity.
  /// [producerArn] ARN (Amazon Resource Name) of the producer.
  const GetDataSharesDataShare({
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

  factory GetDataSharesDataShare.fromMap(Map<String, dynamic> map) {
    return GetDataSharesDataShare(
      dataShareArn: pulumi.Input.fromValue(map['dataShareArn'] as String),
      managedBy: pulumi.Input.fromValue(map['managedBy'] as String),
      producerArn: pulumi.Input.fromValue(map['producerArn'] as String),
    );
  }
}

