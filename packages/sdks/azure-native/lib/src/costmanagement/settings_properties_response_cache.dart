// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SettingsPropertiesResponseCache {
  /// Indicates the account type. Allowed values include: EA, PAYG, Modern, Internal, Unknown.
  final pulumi.Input<String> channel;
  /// Resource ID used by Resource Manager to uniquely identify the scope.
  final pulumi.Input<String> id;
  /// Display name for the scope.
  final pulumi.Input<String> name;
  /// Resource ID of the parent scope. For instance, subscription's resource ID for a resource group or a management group resource ID for a subscription.
  final pulumi.Input<String>? parent;
  /// Indicates the status of the scope. Status only applies to subscriptions and billing accounts.
  final pulumi.Input<String>? status;
  /// Indicates the type of modern account. Allowed values include: Individual, Enterprise, Partner, Indirect, NotApplicable
  final pulumi.Input<String> subchannel;

  /// Creates a new [SettingsPropertiesResponseCache].
  /// [channel] Indicates the account type. Allowed values include: EA, PAYG, Modern, Internal, Unknown.
  /// [id] Resource ID used by Resource Manager to uniquely identify the scope.
  /// [name] Display name for the scope.
  /// [parent] Resource ID of the parent scope. For instance, subscription's resource ID for a resource group or a management group resource ID for a subscription.
  /// [status] Indicates the status of the scope. Status only applies to subscriptions and billing accounts.
  /// [subchannel] Indicates the type of modern account. Allowed values include: Individual, Enterprise, Partner, Indirect, NotApplicable
  SettingsPropertiesResponseCache({
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

  factory SettingsPropertiesResponseCache.fromMap(Map<String, dynamic> map) {
    return SettingsPropertiesResponseCache(
      channel: (map['channel'] as String).input(),
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      parent: map['parent'] == null ? null : (map['parent'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      subchannel: (map['subchannel'] as String).input(),
    );
  }
}

