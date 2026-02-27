// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getGateway.
class GetGatewayApigatewayV1betaResult {
  /// Resource name of the API Config for this Gateway. Format: projects/{project}/locations/global/apis/{api}/configs/{apiConfig}
  final String apiConfig;

  /// Created time.
  final String createTime;

  /// The default API Gateway host name of the form `{gateway_id}-{hash}.{region_code}.gateway.dev`.
  final String defaultHostname;

  /// Optional. Display name.
  final String displayName;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final Map<String, String> labels;

  /// Resource name of the Gateway. Format: projects/{project}/locations/{location}/gateways/{gateway}
  final String name;

  /// The current state of the Gateway.
  final String state;

  /// Updated time.
  final String updateTime;

  GetGatewayApigatewayV1betaResult({
    required this.apiConfig,
    required this.createTime,
    required this.defaultHostname,
    required this.displayName,
    required this.labels,
    required this.name,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiConfig'] = apiConfig;
    map['createTime'] = createTime;
    map['defaultHostname'] = defaultHostname;
    map['displayName'] = displayName;
    map['labels'] = labels;
    map['name'] = name;
    map['state'] = state;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetGatewayApigatewayV1betaResult.fromMap(Map<String, dynamic> map) {
    return GetGatewayApigatewayV1betaResult(
      apiConfig: map['apiConfig'] as String,
      createTime: map['createTime'] as String,
      defaultHostname: map['defaultHostname'] as String,
      displayName: map['displayName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
