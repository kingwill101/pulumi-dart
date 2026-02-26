// ignore_for_file: unused_element, unnecessary_cast

/// Represents configurations for a test case.
class GoogleCloudDialogflowCxV3TestConfig {
  /// Flow name to start the test case with. Format: `projects//locations//agents//flows/`. Only one of `flow` and `page` should be set to indicate the starting point of the test case. If both are set, `page` takes precedence over `flow`. If neither is set, the test case will start with start page on the default start flow.
  final String? flow;

  /// The page to start the test case with. Format: `projects//locations//agents//flows//pages/`. Only one of `flow` and `page` should be set to indicate the starting point of the test case. If both are set, `page` takes precedence over `flow`. If neither is set, the test case will start with start page on the default start flow.
  final String? page;

  /// Session parameters to be compared when calculating differences.
  final List<String>? trackingParameters;

  GoogleCloudDialogflowCxV3TestConfig({
    this.flow,
    this.page,
    this.trackingParameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final flowValue = flow;
    if (flowValue != null) {
      map['flow'] = flowValue;
    }
    final pageValue = page;
    if (pageValue != null) {
      map['page'] = pageValue;
    }
    final trackingParametersValue = trackingParameters;
    if (trackingParametersValue != null) {
      map['trackingParameters'] = trackingParametersValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowCxV3TestConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3TestConfig(
      flow: map['flow'] == null ? null : map['flow'] as String,
      page: map['page'] == null ? null : map['page'] as String,
      trackingParameters: map['trackingParameters'] == null
          ? null
          : (map['trackingParameters'] as List).cast<String>(),
    );
  }
}
