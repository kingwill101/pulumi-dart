// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines an Azure DevOps organization.
class OrganizationResponse {
  /// Determines if the pool should have open access to all projects in this organization.
  final pulumi.Input<bool>? openAccess;
  /// How many machines can be created at maximum in this organization out of the maximumConcurrency of the pool.
  final pulumi.Input<int>? parallelism;
  /// Optional list of projects in which the pool should be created.
  final pulumi.Input<List<String>>? projects;
  /// The Azure DevOps organization URL in which the pool should be created.
  final pulumi.Input<String> url;

  /// Creates a new [OrganizationResponse].
  /// [openAccess] Determines if the pool should have open access to all projects in this organization.
  /// [parallelism] How many machines can be created at maximum in this organization out of the maximumConcurrency of the pool.
  /// [projects] Optional list of projects in which the pool should be created.
  /// [url] The Azure DevOps organization URL in which the pool should be created.
  const OrganizationResponse({
    this.openAccess,
    this.parallelism,
    this.projects,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'openAccess': ?openAccess,
      'parallelism': ?parallelism,
      'projects': ?projects,
      'url': url,
    };
  }

  factory OrganizationResponse.fromMap(Map<String, dynamic> map) {
    return OrganizationResponse(
      openAccess: (() { final guardedValue = map['openAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      parallelism: (() { final guardedValue = map['parallelism']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      projects: (() { final guardedValue = map['projects']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
