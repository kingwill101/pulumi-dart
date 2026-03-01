// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ContributorInsightsSpecification
class ContributorInsightsSpecification {
  /// Indicates whether CloudWatch Contributor Insights are to be enabled (true) or disabled (false).
  final bool? enabled;

  /// Creates a new [ContributorInsightsSpecification].
  /// [enabled] Indicates whether CloudWatch Contributor Insights are to be enabled (true) or disabled (false).
  ContributorInsightsSpecification({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ContributorInsightsSpecification.fromMap(Map<String, dynamic> map) {
    return ContributorInsightsSpecification(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

