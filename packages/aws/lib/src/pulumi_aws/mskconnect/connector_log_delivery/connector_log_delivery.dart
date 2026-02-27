// ignore_for_file: unused_element, unnecessary_cast

import '../connector_log_delivery_worker_log_delivery/connector_log_delivery_worker_log_delivery.dart';

class ConnectorLogDelivery {
  /// The workers can send worker logs to different destination types. This configuration specifies the details of these destinations. See `worker_log_delivery` Block for details.
  final ConnectorLogDeliveryWorkerLogDelivery workerLogDelivery;

  ConnectorLogDelivery({
    required this.workerLogDelivery,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['workerLogDelivery'] = workerLogDelivery.toMap();
    return map;
  }

  factory ConnectorLogDelivery.fromMap(Map<String, dynamic> map) {
    return ConnectorLogDelivery(
      workerLogDelivery: ConnectorLogDeliveryWorkerLogDelivery.fromMap(
          (map['workerLogDelivery'] as Map).cast<String, dynamic>()),
    );
  }
}
