// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_metric_spec_response.dart';

/// Options for automatically scaling a model.
class GoogleCloudMlV1AutoScalingResponse {
  /// The maximum number of nodes to scale this model under load. The actual value will depend on resource quota and availability.
  final int maxNodes;

  /// MetricSpec contains the specifications to use to calculate the desired nodes count.
  final List<GoogleCloudMlV1MetricSpecResponse> metrics;

  /// Optional. The minimum number of nodes to allocate for this model. These nodes are always up, starting from the time the model is deployed. Therefore, the cost of operating this model will be at least `rate` * `min_nodes` * number of hours since last billing cycle, where `rate` is the cost per node-hour as documented in the [pricing guide](/ml-engine/docs/pricing), even if no predictions are performed. There is additional cost for each prediction performed. Unlike manual scaling, if the load gets too heavy for the nodes that are up, the service will automatically add nodes to handle the increased load as well as scale back as traffic drops, always maintaining at least `min_nodes`. You will be charged for the time in which additional nodes are used. If `min_nodes` is not specified and AutoScaling is used with a [legacy (MLS1) machine type](/ml-engine/docs/machine-types-online-prediction), `min_nodes` defaults to 0, in which case, when traffic to a model stops (and after a cool-down period), nodes will be shut down and no charges will be incurred until traffic to the model resumes. If `min_nodes` is not specified and AutoScaling is used with a [Compute Engine (N1) machine type](/ml-engine/docs/machine-types-online-prediction), `min_nodes` defaults to 1. `min_nodes` must be at least 1 for use with a Compute Engine machine type. You can set `min_nodes` when creating the model version, and you can also update `min_nodes` for an existing version: update_body.json: { 'autoScaling': { 'minNodes': 5 } } HTTP request: PATCH https://ml.googleapis.com/v1/{name=projects/*/models/*/versions/*}?update_mask=autoScaling.minNodes -d @./update_body.json
  final int minNodes;

  GoogleCloudMlV1AutoScalingResponse({
    required this.maxNodes,
    required this.metrics,
    required this.minNodes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxNodes'] = maxNodes;
    map['metrics'] = pulumi.Input.encodeList<GoogleCloudMlV1MetricSpecResponse,
        Map<String, dynamic>>(metrics, (value) => value.toMap());
    map['minNodes'] = minNodes;
    return map;
  }

  factory GoogleCloudMlV1AutoScalingResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1AutoScalingResponse(
      maxNodes: map['maxNodes'] as int,
      metrics: pulumi.Input.decodeList<GoogleCloudMlV1MetricSpecResponse>(
          map['metrics'],
          (value) => GoogleCloudMlV1MetricSpecResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      minNodes: map['minNodes'] as int,
    );
  }
}
