// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkInsightsAnalysisReturnPathComponentTransitGateway {
  /// ARN of the Network Insights Analysis.
  final pulumi.Input<String>? arn;
  /// ID of the Network Insights Analysis.
  final pulumi.Input<String>? id;
  final pulumi.Input<String>? name;

  /// Creates a new [NetworkInsightsAnalysisReturnPathComponentTransitGateway].
  /// [arn] ARN of the Network Insights Analysis.
  /// [id] ID of the Network Insights Analysis.
  /// [name] Optional.
  const NetworkInsightsAnalysisReturnPathComponentTransitGateway({
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

  factory NetworkInsightsAnalysisReturnPathComponentTransitGateway.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAnalysisReturnPathComponentTransitGateway(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
