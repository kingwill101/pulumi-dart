// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_log_delivery_worker_log_delivery.dart';

class ConnectorLogDelivery {
  /// The workers can send worker logs to different destination types. This configuration specifies the details of these destinations. See `workerLogDelivery` Block for details.
  final pulumi.Input<ConnectorLogDeliveryWorkerLogDelivery> workerLogDelivery;

  /// Creates a new [ConnectorLogDelivery].
  /// [workerLogDelivery] The workers can send worker logs to different destination types. This configuration specifies the details of these destinations. See `workerLogDelivery` Block for details.
  const ConnectorLogDelivery({
    required this.workerLogDelivery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workerLogDelivery': pulumi.Input.mapInputValue<ConnectorLogDeliveryWorkerLogDelivery, Map<String, dynamic>>(workerLogDelivery, (value) => value.toMap()),
    };
  }

  factory ConnectorLogDelivery.fromMap(Map<String, dynamic> map) {
    return ConnectorLogDelivery(
      workerLogDelivery: pulumi.Input.fromValue(ConnectorLogDeliveryWorkerLogDelivery.fromMap((map['workerLogDelivery']! as Map).cast<String, dynamic>())),
    );
  }
}
