// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ContributorInsightsSpecification
class ContributorInsightsSpecificationResponse {
  /// Indicates whether CloudWatch Contributor Insights are to be enabled (true) or disabled (false).
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ContributorInsightsSpecificationResponse].
  /// [enabled] Indicates whether CloudWatch Contributor Insights are to be enabled (true) or disabled (false).
  ContributorInsightsSpecificationResponse({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ContributorInsightsSpecificationResponse.fromMap(Map<String, dynamic> map) {
    return ContributorInsightsSpecificationResponse(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

