// ignore_for_file: unused_element, unnecessary_cast


class SettingsPropertiesCache {
  /// Indicates the account type. Allowed values include: EA, PAYG, Modern, Internal, Unknown.
  final String channel;
  /// Resource ID used by Resource Manager to uniquely identify the scope.
  final String id;
  /// Display name for the scope.
  final String name;
  /// Resource ID of the parent scope. For instance, subscription's resource ID for a resource group or a management group resource ID for a subscription.
  final String? parent;
  /// Indicates the status of the scope. Status only applies to subscriptions and billing accounts.
  final String? status;
  /// Indicates the type of modern account. Allowed values include: Individual, Enterprise, Partner, Indirect, NotApplicable
  final String subchannel;

  /// Creates a new [SettingsPropertiesCache].
  /// [channel] Indicates the account type. Allowed values include: EA, PAYG, Modern, Internal, Unknown.
  /// [id] Resource ID used by Resource Manager to uniquely identify the scope.
  /// [name] Display name for the scope.
  /// [parent] Resource ID of the parent scope. For instance, subscription's resource ID for a resource group or a management group resource ID for a subscription.
  /// [status] Indicates the status of the scope. Status only applies to subscriptions and billing accounts.
  /// [subchannel] Indicates the type of modern account. Allowed values include: Individual, Enterprise, Partner, Indirect, NotApplicable
  SettingsPropertiesCache({
    required this.channel,
    required this.id,
    required this.name,
    this.parent,
    this.status,
    required this.subchannel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
      'id': id,
      'name': name,
      'parent': ?parent,
      'status': ?status,
      'subchannel': subchannel,
    };
  }

  factory SettingsPropertiesCache.fromMap(Map<String, dynamic> map) {
    return SettingsPropertiesCache(
      channel: map['channel'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      parent: map['parent'] == null ? null : map['parent'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      subchannel: map['subchannel'] as String,
    );
  }
}

