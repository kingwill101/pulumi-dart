// ignore_for_file: unused_element, unnecessary_cast


/// The policy used to clean up unused versions. When the policy is not specified explicitly, the default unused application versions to keep will be 3.
class ApplicationTypeVersionsCleanupPolicy {
  /// Number of unused versions per application type to keep.
  final int maxUnusedVersionsToKeep;

  /// Creates a new [ApplicationTypeVersionsCleanupPolicy].
  /// [maxUnusedVersionsToKeep] Number of unused versions per application type to keep.
  ApplicationTypeVersionsCleanupPolicy({
    required this.maxUnusedVersionsToKeep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxUnusedVersionsToKeep': maxUnusedVersionsToKeep,
    };
  }

  factory ApplicationTypeVersionsCleanupPolicy.fromMap(Map<String, dynamic> map) {
    return ApplicationTypeVersionsCleanupPolicy(
      maxUnusedVersionsToKeep: map['maxUnusedVersionsToKeep'] as int,
    );
  }
}

