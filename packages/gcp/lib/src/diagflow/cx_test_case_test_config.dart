// ignore_for_file: unused_element, unnecessary_cast

class CxTestCaseTestConfig {
  /// Flow name to start the test case with.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>.
  /// Only one of flow and page should be set to indicate the starting point of the test case. If neither is set, the test case will start with start page on the default start flow.
  final String? flow;

  /// The page to start the test case with.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>/pages/<Page ID>.
  /// Only one of flow and page should be set to indicate the starting point of the test case. If neither is set, the test case will start with start page on the default start flow.
  final String? page;

  /// Session parameters to be compared when calculating differences.
  final List<String>? trackingParameters;

  /// Creates a new [CxTestCaseTestConfig].
  /// [flow] Flow name to start the test case with.
  /// [page] The page to start the test case with.
  /// [trackingParameters] Session parameters to be compared when calculating differences.
  CxTestCaseTestConfig({this.flow, this.page, this.trackingParameters});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flow': ?flow,
      'page': ?page,
      'trackingParameters': ?trackingParameters,
    };
  }

  factory CxTestCaseTestConfig.fromMap(Map<String, dynamic> map) {
    return CxTestCaseTestConfig(
      flow: map['flow'] == null ? null : map['flow'] as String,
      page: map['page'] == null ? null : map['page'] as String,
      trackingParameters: map['trackingParameters'] == null
          ? null
          : (map['trackingParameters'] as List).cast<String>(),
    );
  }
}
