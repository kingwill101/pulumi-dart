// ignore_for_file: unused_element, unnecessary_cast


/// Defines an Azure DevOps organization.
class Organization {
  /// Determines if the pool should have open access to all projects in this organization.
  final bool? openAccess;
  /// How many machines can be created at maximum in this organization out of the maximumConcurrency of the pool.
  final int? parallelism;
  /// Optional list of projects in which the pool should be created.
  final List<String>? projects;
  /// The Azure DevOps organization URL in which the pool should be created.
  final String url;

  /// Creates a new [Organization].
  /// [openAccess] Determines if the pool should have open access to all projects in this organization.
  /// [parallelism] How many machines can be created at maximum in this organization out of the maximumConcurrency of the pool.
  /// [projects] Optional list of projects in which the pool should be created.
  /// [url] The Azure DevOps organization URL in which the pool should be created.
  Organization({
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

  factory Organization.fromMap(Map<String, dynamic> map) {
    return Organization(
      openAccess: map['openAccess'] == null ? null : map['openAccess'] as bool,
      parallelism: map['parallelism'] == null ? null : map['parallelism'] as int,
      projects: map['projects'] == null ? null : (map['projects'] as List).cast<String>(),
      url: map['url'] as String,
    );
  }
}

