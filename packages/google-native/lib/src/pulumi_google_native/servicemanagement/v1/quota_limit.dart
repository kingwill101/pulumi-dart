// ignore_for_file: unused_element, unnecessary_cast

/// `QuotaLimit` defines a specific limit that applies over a specified duration for a limit type. There can be at most one limit for a duration and limit type combination defined within a `QuotaGroup`.
class QuotaLimit {
  /// Default number of tokens that can be consumed during the specified duration. This is the number of tokens assigned when a client application developer activates the service for his/her project. Specifying a value of 0 will block all requests. This can be used if you are provisioning quota to selected consumers and blocking others. Similarly, a value of -1 will indicate an unlimited quota. No other negative values are allowed. Used by group-based quotas only.
  final String? defaultLimit;

  /// Optional. User-visible, extended description for this quota limit. Should be used only when more context is needed to understand this limit than provided by the limit's display name (see: `display_name`).
  final String? description;

  /// User-visible display name for this limit. Optional. If not set, the UI will provide a default display name based on the quota configuration. This field can be used to override the default display name generated from the configuration.
  final String? displayName;

  /// Duration of this limit in textual notation. Must be "100s" or "1d". Used by group-based quotas only.
  final String? duration;

  /// Free tier value displayed in the Developers Console for this limit. The free tier is the number of tokens that will be subtracted from the billed amount when billing is enabled. This field can only be set on a limit with duration "1d", in a billable group; it is invalid on any other limit. If this field is not set, it defaults to 0, indicating that there is no free tier for this service. Used by group-based quotas only.
  final String? freeTier;

  /// Maximum number of tokens that can be consumed during the specified duration. Client application developers can override the default limit up to this maximum. If specified, this value cannot be set to a value less than the default limit. If not specified, it is set to the default limit. To allow clients to apply overrides with no upper bound, set this to -1, indicating unlimited maximum quota. Used by group-based quotas only.
  final String? maxLimit;

  /// The name of the metric this quota limit applies to. The quota limits with the same metric will be checked together during runtime. The metric must be defined within the service config.
  final String? metric;

  /// Name of the quota limit. The name must be provided, and it must be unique within the service. The name can only include alphanumeric characters as well as '-'. The maximum length of the limit name is 64 characters.
  final String? name;

  /// Specify the unit of the quota limit. It uses the same syntax as Metric.unit. The supported unit kinds are determined by the quota backend system. Here are some examples: * "1/min/{project}" for quota per minute per project. Note: the order of unit components is insignificant. The "1" at the beginning is required to follow the metric unit syntax.
  final String? unit;

  /// Tiered limit values. You must specify this as a key:value pair, with an integer value that is the maximum number of requests allowed for the specified unit. Currently only STANDARD is supported.
  final Map<String, String>? values;

  QuotaLimit({
    this.defaultLimit,
    this.description,
    this.displayName,
    this.duration,
    this.freeTier,
    this.maxLimit,
    this.metric,
    this.name,
    this.unit,
    this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultLimitValue = defaultLimit;
    if (defaultLimitValue != null) {
      map['defaultLimit'] = defaultLimitValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final durationValue = duration;
    if (durationValue != null) {
      map['duration'] = durationValue;
    }
    final freeTierValue = freeTier;
    if (freeTierValue != null) {
      map['freeTier'] = freeTierValue;
    }
    final maxLimitValue = maxLimit;
    if (maxLimitValue != null) {
      map['maxLimit'] = maxLimitValue;
    }
    final metricValue = metric;
    if (metricValue != null) {
      map['metric'] = metricValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final unitValue = unit;
    if (unitValue != null) {
      map['unit'] = unitValue;
    }
    final valuesValue = values;
    if (valuesValue != null) {
      map['values'] = valuesValue;
    }
    return map;
  }

  factory QuotaLimit.fromMap(Map<String, dynamic> map) {
    return QuotaLimit(
      defaultLimit:
          map['defaultLimit'] == null ? null : map['defaultLimit'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      duration: map['duration'] == null ? null : map['duration'] as String,
      freeTier: map['freeTier'] == null ? null : map['freeTier'] as String,
      maxLimit: map['maxLimit'] == null ? null : map['maxLimit'] as String,
      metric: map['metric'] == null ? null : map['metric'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      unit: map['unit'] == null ? null : map['unit'] as String,
      values: map['values'] == null
          ? null
          : (map['values'] as Map).cast<String, String>(),
    );
  }
}
