// ignore_for_file: unused_element, unnecessary_cast


class GetMaintenancePoliciesMaintenancePolicy {
  /// Description of this policy
  final String description;
  /// Whether this is the default policy for the account.
  final bool isDefault;
  /// The label for this policy.
  final String label;
  /// The notification lead time in seconds.
  final int notificationPeriodSec;
  /// Unique identifier for this policy
  final String slug;
  /// The type of action taken during maintenance.
  final String type;

  /// Creates a new [GetMaintenancePoliciesMaintenancePolicy].
  /// [description] Description of this policy
  /// [isDefault] Whether this is the default policy for the account.
  /// [label] The label for this policy.
  /// [notificationPeriodSec] The notification lead time in seconds.
  /// [slug] Unique identifier for this policy
  /// [type] The type of action taken during maintenance.
  GetMaintenancePoliciesMaintenancePolicy({
    required this.description,
    required this.isDefault,
    required this.label,
    required this.notificationPeriodSec,
    required this.slug,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'isDefault': isDefault,
      'label': label,
      'notificationPeriodSec': notificationPeriodSec,
      'slug': slug,
      'type': type,
    };
  }

  factory GetMaintenancePoliciesMaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return GetMaintenancePoliciesMaintenancePolicy(
      description: map['description'] as String,
      isDefault: map['isDefault'] as bool,
      label: map['label'] as String,
      notificationPeriodSec: map['notificationPeriodSec'] as int,
      slug: map['slug'] as String,
      type: map['type'] as String,
    );
  }
}

