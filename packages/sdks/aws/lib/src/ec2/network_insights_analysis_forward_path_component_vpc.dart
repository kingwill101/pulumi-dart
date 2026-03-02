// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkInsightsAnalysisForwardPathComponentVpc {
  /// ARN of the Network Insights Analysis.
  final pulumi.Input<String>? arn;
  /// ID of the Network Insights Analysis.
  final pulumi.Input<String>? id;
  final pulumi.Input<String>? name;

  /// Creates a new [NetworkInsightsAnalysisForwardPathComponentVpc].
  /// [arn] ARN of the Network Insights Analysis.
  /// [id] ID of the Network Insights Analysis.
  /// [name] Optional.
  NetworkInsightsAnalysisForwardPathComponentVpc({
    this.arn,
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'id': ?id,
      'name': ?name,
    };
  }

  factory NetworkInsightsAnalysisForwardPathComponentVpc.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAnalysisForwardPathComponentVpc(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      id: map['id'] == null ? null : ((map['id'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
    );
  }
}

